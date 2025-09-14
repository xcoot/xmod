.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUDIO_CODECS_MAP:Ljava/util/HashMap;


# instance fields
.field public mArcEstablished:Z

.field public final mArcIntentUsed:Z

.field public final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field public final mPortIdToTvInputs:Ljava/util/HashMap;

.field public mSystemAudioControlFeatureEnabled:Z

.field public final mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

.field public final mTvInputsToDeviceInfo:Ljava/util/HashMap;

.field public mTvSystemAudioModeSupport:Ljava/lang/Boolean;


# direct methods
.method public static -$$Nest$maddOrUpdateTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 11
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 44
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 60
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    .line 65
    :cond_2
    monitor-exit v0

    .line 66
    :goto_0
    return-void

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v4

    .line 38
    const/16 v5, 0x15

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v5

    .line 44
    const/16 v6, 0x16

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v6

    .line 50
    invoke-static {v1, v3, v4, v5, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/16 v3, 0xb

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v1, 0xc

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v2, 0x9

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v2, 0x6

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v2

    .line 113
    const/16 v4, 0xa

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v5, 0x7

    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v5

    .line 131
    invoke-static {v5}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v5, 0x12

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v2, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v2, 0x8

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v2

    .line 157
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v2, 0xe

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v2

    .line 170
    const/16 v3, 0x13

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v3

    .line 176
    invoke-static {v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sput-object v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->AUDIO_CODECS_MAP:Ljava/util/HashMap;

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 11
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "0"

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 23
    const-string/jumbo v2, "tvinput"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    .line 41
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 46
    new-instance v1, Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 48
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 51
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 53
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 55
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    .line 58
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v2, "routing_control"

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x1

    .line 72
    if-ne v1, v2, :cond_0

    .line 74
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v1, v0

    .line 77
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    .line 79
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v3, "system_audio_control"

    .line 86
    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 89
    move-result v1

    .line 90
    if-ne v1, v2, :cond_1

    .line 92
    move v0, v2

    .line 93
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 95
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 97
    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 100
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 102
    return-void
.end method

.method public static getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    mul-int/2addr v0, v1

    .line 7
    new-array v0, v0, [B

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, [B

    .line 27
    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    add-int/2addr v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final checkSupportAndSetSystemAudioMode(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    const-string v0, "Cannot turn "

    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const-string/jumbo p1, "on"

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string/jumbo p1, "off"

    .line 23
    :goto_0
    const-string/jumbo v0, "system audio mode because the System Audio Control feature is disabled."

    .line 26
    invoke-static {p0, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x0

    .line 31
    new-array v0, p1, [Ljava/lang/Object;

    .line 33
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return p1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 39
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v2

    .line 51
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    const-string v2, "System Audio Mode change[old:%b new:%b]"

    .line 57
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 65
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 68
    const/4 p0, 0x1

    .line 69
    return p0
.end method

.method public final computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 1

    .line 1
    const-string/jumbo p0, "persist.sys.hdmi.property_arc_support"

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result p0

    .line 9
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    .line 11
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 39
    iget-object p1, v1, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 41
    if-nez p1, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 46
    invoke-virtual {p1, p2}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 52
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 58
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 83
    return-void
.end method

.method public final doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 17
    move-result v1

    .line 18
    if-ne p1, v1, :cond_0

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 37
    const/4 p1, 0x6

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 51
    move-result p2

    .line 52
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 55
    move-result p2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 64
    move-result p2

    .line 65
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 68
    move-result v1

    .line 69
    if-ne p2, v1, :cond_3

    .line 71
    return-void

    .line 72
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 85
    move-result p0

    .line 86
    invoke-static {p0, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 89
    move-result-object p0

    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 94
    return-void

    .line 95
    :cond_4
    const/4 p1, 0x3

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 99
    return-void
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "HdmiCecLocalDeviceAudioSystem:"

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "isRoutingFeatureEnabled "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "mSystemAudioControlFeatureEnabled: "

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 41
    const-string/jumbo v2, "mTvSystemAudioModeSupport: "

    .line 44
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "mArcEstablished: "

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 70
    const-string/jumbo v2, "mArcIntentUsed: "

    .line 73
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v0

    .line 77
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 79
    const-string/jumbo v2, "mRoutingPort: "

    .line 82
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "mLocalActivePort: "

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 124
    const-string/jumbo v1, "mPortIdToTvInputs:"

    .line 127
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 132
    const-string/jumbo v1, "mTvInputsToDeviceInfo:"

    .line 135
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 141
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 144
    return-void
.end method

.method public final findKeyReceiverAddress()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final getPreferredAddress()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const-string/jumbo p0, "persist.sys.hdmi.addr.audiosystem"

    .line 7
    const/16 v0, 0xf

    .line 9
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B
    .locals 15

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->AUDIO_CODECS_MAP:Ljava/util/HashMap;

    .line 10
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_c

    .line 21
    array-length v3, v1

    .line 22
    if-nez v3, :cond_0

    .line 24
    goto/16 :goto_6

    .line 26
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/List;

    .line 36
    array-length v3, v1

    .line 37
    const/4 v5, 0x0

    .line 38
    move v6, v5

    .line 39
    :goto_0
    if-ge v6, v3, :cond_c

    .line 41
    aget v7, v1, v6

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v8

    .line 47
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_b

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    .line 56
    move-result-object v1

    .line 57
    array-length v2, v1

    .line 58
    const/16 v3, 0x8

    .line 60
    const/4 v6, 0x1

    .line 61
    if-eqz v2, :cond_1

    .line 63
    array-length v2, v1

    .line 64
    sub-int/2addr v2, v6

    .line 65
    aget v1, v1, v2

    .line 67
    if-le v1, v3, :cond_2

    .line 69
    :cond_1
    move v1, v3

    .line 70
    :cond_2
    sub-int/2addr v1, v6

    .line 71
    int-to-byte v1, v1

    .line 72
    shl-int/lit8 v2, p2, 0x3

    .line 74
    or-int/2addr v1, v2

    .line 75
    int-to-byte v1, v1

    .line 76
    aput-byte v1, v0, v5

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    const/16 v2, 0x20

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v8

    .line 86
    const/16 v2, 0x2c

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v9

    .line 92
    const/16 v2, 0x30

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v10

    .line 98
    const/16 v2, 0x58

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v11

    .line 104
    const/16 v2, 0x60

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v12

    .line 110
    const/16 v2, 0xb0

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v13

    .line 116
    const/16 v2, 0xc0

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v14

    .line 122
    filled-new-array/range {v8 .. v14}, [Ljava/lang/Integer;

    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    move-result-object v8

    .line 130
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    .line 136
    move-result-object v8

    .line 137
    array-length v9, v8

    .line 138
    if-nez v9, :cond_3

    .line 140
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    .line 142
    const-string v8, "Device supports arbitrary rates"

    .line 144
    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v1, 0x7f

    .line 149
    goto :goto_2

    .line 150
    :cond_3
    array-length v9, v8

    .line 151
    move v10, v5

    .line 152
    move v11, v10

    .line 153
    :goto_1
    if-ge v11, v9, :cond_5

    .line 155
    aget v12, v8, v11

    .line 157
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v13

    .line 161
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 164
    move-result v13

    .line 165
    if-eqz v13, :cond_4

    .line 167
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 174
    move-result v12

    .line 175
    shl-int v12, v6, v12

    .line 177
    or-int/2addr v10, v12

    .line 178
    int-to-byte v10, v10

    .line 179
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 181
    goto :goto_1

    .line 182
    :cond_5
    move v1, v10

    .line 183
    :goto_2
    aput-byte v1, v0, v6

    .line 185
    const/4 v1, 0x2

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 189
    :pswitch_0
    return-object v4

    .line 190
    :pswitch_1
    aput-byte v5, v0, v1

    .line 192
    return-object v0

    .line 193
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    .line 196
    move-result-object v4

    .line 197
    array-length v6, v4

    .line 198
    if-nez v6, :cond_6

    .line 200
    goto :goto_4

    .line 201
    :cond_6
    array-length v2, v4

    .line 202
    move v6, v5

    .line 203
    :goto_3
    if-ge v5, v2, :cond_8

    .line 205
    aget v7, v4, v5

    .line 207
    if-ge v6, v7, :cond_7

    .line 209
    move v6, v7

    .line 210
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    move v2, v6

    .line 214
    :goto_4
    div-int/2addr v2, v3

    .line 215
    int-to-byte v2, v2

    .line 216
    aput-byte v2, v0, v1

    .line 218
    return-object v0

    .line 219
    :pswitch_3
    if-ne v7, v1, :cond_9

    .line 221
    aput-byte v6, v0, v1

    .line 223
    goto :goto_5

    .line 224
    :cond_9
    const/16 v2, 0x15

    .line 226
    if-ne v7, v2, :cond_a

    .line 228
    const/4 v2, 0x4

    .line 229
    aput-byte v2, v0, v1

    .line 231
    goto :goto_5

    .line 232
    :cond_a
    aput-byte v5, v0, v1

    .line 234
    :goto_5
    return-object v0

    .line 235
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_c
    :goto_6
    return-object v4

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    array-length v1, p2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    array-length v1, p2

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    aget v3, p2, v2

    .line 13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B

    .line 16
    move-result-object v4

    .line 17
    if-eqz v4, :cond_1

    .line 19
    array-length v5, v4

    .line 20
    const/4 v6, 0x3

    .line 21
    if-ne v5, v6, :cond_0

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    array-length v4, v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v3

    .line 36
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    const-string v4, "Dropping Short Audio Descriptor with length %d for requested codec %x"

    .line 42
    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 6
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 8
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 19
    move-result v3

    .line 20
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    .line 23
    move-result v1

    .line 24
    const/4 v3, -0x1

    .line 25
    if-ne v1, v3, :cond_0

    .line 27
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v1, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 33
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 39
    if-nez v1, :cond_1

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 45
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    const-string v0, "Device info %X not found; buffering the command"

    .line 51
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isInputReady(I)Z

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 68
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 71
    move-result p0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p0

    .line 76
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    const-string v0, "Input not ready for device: %X; buffering the command"

    .line 82
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 88
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v0, v2, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v0

    .line 95
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 107
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 109
    const/16 v2, 0x82

    .line 111
    if-ne v1, v2, :cond_3

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 120
    return-void
.end method

.method public final handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 19
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->reportAudioStatus(I)V

    .line 24
    const/4 p0, -0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x4

    .line 27
    return p0
.end method

.method public final handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 14
    if-nez v2, :cond_0

    .line 16
    const-class v2, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 32
    move-result p0

    .line 33
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 35
    const/16 v2, 0x7e

    .line 37
    invoke-static {p0, p1, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 44
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    .line 7
    const-string p1, "HdmiCecLocalDeviceAudioSystemStub handleInitiateArc"

    .line 9
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final handleReportArcInitiate()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const/4 p0, -0x1

    .line 5
    return p0
.end method

.method public final handleReportArcTermination()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    .line 7
    const/4 p0, -0x1

    .line 8
    return p0
.end method

.method public final handleRequestArcInitiate()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    const-string/jumbo v1, "persist.sys.hdmi.property_arc_support"

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 22
    return v1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    const-string p0, "AVR device is not directly connected with TV"

    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v2

    .line 37
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 45
    const/4 p0, -0x1

    .line 46
    return p0
.end method

.method public final handleRequestArcTermination()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-string p0, "ARC is not established between TV and AVR device"

    .line 24
    new-array v0, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return v1

    .line 30
    :cond_1
    const-class v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 52
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 54
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 72
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 85
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 87
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 97
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 99
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 105
    :goto_0
    const/4 p0, -0x1

    .line 106
    return p0
.end method

.method public final handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const-string v2, "HdmiCecLocalDeviceAudioSystemStub handleRequestShortAudioDescriptor"

    .line 9
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    const/4 p0, 0x4

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-nez v2, :cond_1

    .line 29
    return v3

    .line 30
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 32
    const-string v4, "/vendor/etc/sadConfig.xml"

    .line 34
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    const-string v6, "HdmiCecLocalDeviceAudioSystem"

    .line 44
    if-eqz v4, :cond_2

    .line 46
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 48
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    .line 54
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception v4

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception v4

    .line 62
    goto :goto_1

    .line 63
    :catch_2
    move-exception v4

    .line 64
    move-object v7, v5

    .line 65
    goto :goto_0

    .line 66
    :catch_3
    move-exception v4

    .line 67
    move-object v7, v5

    .line 68
    goto :goto_1

    .line 69
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 71
    const-string v9, "Unable to parse file: "

    .line 73
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v6, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 89
    const-string v9, "Error reading file: "

    .line 91
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-static {v6, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-object v7, v5

    .line 106
    :goto_2
    iget-object v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 108
    array-length v4, v2

    .line 109
    new-array v8, v4, [I

    .line 111
    move v9, v0

    .line 112
    :goto_3
    array-length v10, v2

    .line 113
    if-ge v9, v10, :cond_4

    .line 115
    aget-byte v10, v2, v9

    .line 117
    if-lt v10, v3, :cond_3

    .line 119
    const/16 v11, 0xf

    .line 121
    if-gt v10, v11, :cond_3

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    move v10, v0

    .line 125
    :goto_4
    aput v10, v8, v9

    .line 127
    add-int/lit8 v9, v9, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    const/4 v2, 0x3

    .line 131
    if-eqz v7, :cond_b

    .line 133
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 136
    move-result v9

    .line 137
    if-lez v9, :cond_b

    .line 139
    const-string/jumbo v3, "persist.sys.hdmi.property_sytem_audio_mode_audio_port"

    .line 142
    const-string v9, "VX_AUDIO_DEVICE_IN_HDMI_ARC"

    .line 144
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object v7

    .line 152
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_6

    .line 158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 164
    iget-object v10, v9, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    .line 166
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_5

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    move-object v9, v5

    .line 174
    :goto_5
    if-nez v9, :cond_7

    .line 176
    const-string/jumbo v4, "sadConfig.xml does not have required device info for "

    .line 179
    invoke-static {v4, v3, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-array v0, v0, [B

    .line 184
    goto/16 :goto_a

    .line 186
    :cond_7
    new-instance v3, Ljava/util/HashMap;

    .line 188
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 191
    new-instance v6, Ljava/util/ArrayList;

    .line 193
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    iget-object v7, v9, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 198
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 201
    move-result-object v7

    .line 202
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_8

    .line 208
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 214
    iget v10, v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 216
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v10

    .line 220
    iget-object v9, v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 222
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    goto :goto_6

    .line 226
    :cond_8
    :goto_7
    if-ge v0, v4, :cond_a

    .line 228
    aget v7, v8, v0

    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_9

    .line 240
    aget v7, v8, v0

    .line 242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v7

    .line 250
    check-cast v7, [B

    .line 252
    if-eqz v7, :cond_9

    .line 254
    array-length v9, v7

    .line 255
    if-ne v9, v2, :cond_9

    .line 257
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 262
    goto :goto_7

    .line 263
    :cond_a
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    .line 266
    move-result-object v0

    .line 267
    goto/16 :goto_a

    .line 269
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 272
    move-result-object v4

    .line 273
    const-class v6, Landroid/media/AudioManager;

    .line 275
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 278
    move-result-object v4

    .line 279
    check-cast v4, Landroid/media/AudioManager;

    .line 281
    if-nez v4, :cond_d

    .line 283
    const-string v3, "Error getting system audio device because AudioManager not available."

    .line 285
    new-array v0, v0, [Ljava/lang/Object;

    .line 287
    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_c
    move-object v6, v5

    .line 291
    goto :goto_9

    .line 292
    :cond_d
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 295
    move-result-object v3

    .line 296
    array-length v4, v3

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object v4

    .line 301
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 304
    move-result-object v4

    .line 305
    const-string v6, "Found %d audio input devices"

    .line 307
    invoke-static {v6, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    array-length v4, v3

    .line 311
    :goto_8
    if-ge v0, v4, :cond_c

    .line 313
    aget-object v6, v3, v0

    .line 315
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    .line 322
    move-result-object v9

    .line 323
    filled-new-array {v7, v9}, [Ljava/lang/Object;

    .line 326
    move-result-object v7

    .line 327
    const-string v9, "%s at port %s"

    .line 329
    invoke-static {v9, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    .line 335
    move-result-object v7

    .line 336
    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 339
    move-result-object v7

    .line 340
    new-instance v9, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$$ExternalSyntheticLambda0;

    .line 342
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-interface {v7, v9}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    .line 348
    move-result-object v7

    .line 349
    const-string v9, ", "

    .line 351
    invoke-static {v9}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 354
    move-result-object v9

    .line 355
    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 358
    move-result-object v7

    .line 359
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 362
    move-result-object v7

    .line 363
    const-string v9, "Supported encodings are %s"

    .line 365
    invoke-static {v9, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 371
    move-result v7

    .line 372
    const/16 v9, 0xa

    .line 374
    if-ne v7, v9, :cond_e

    .line 376
    goto :goto_9

    .line 377
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 379
    goto :goto_8

    .line 380
    :goto_9
    if-nez v6, :cond_f

    .line 382
    const/4 p0, 0x5

    .line 383
    return p0

    .line 384
    :cond_f
    invoke-virtual {p0, v6, v8}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B

    .line 387
    move-result-object v0

    .line 388
    :goto_a
    array-length v3, v0

    .line 389
    if-nez v3, :cond_10

    .line 391
    return v2

    .line 392
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 395
    move-result-object p0

    .line 396
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 399
    move-result p0

    .line 400
    const/16 v2, 0xa3

    .line 402
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 404
    invoke-static {p0, p1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 407
    move-result-object p0

    .line 408
    invoke-virtual {v1, p0, v5}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 411
    const/4 p0, -0x1

    .line 412
    return p0
.end method

.method public final handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 8
    move-result p1

    .line 9
    if-lez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    if-gez p1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    const/16 p1, 0x11

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 25
    return-void

    .line 26
    :cond_1
    if-nez p1, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 44
    iget p0, p2, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 46
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 48
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 51
    move-result p1

    .line 52
    const-string p2, "HdmiCecLocalDeviceAudioSystem#handleRoutingChangeAndInformationForSwitch()"

    .line 54
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 65
    move-result p1

    .line 66
    iget-object p2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 68
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 71
    move-result p2

    .line 72
    if-ne p1, p2, :cond_3

    .line 74
    const-string p0, "Current device can\'t assign valid physical addressto devices under it any more. It\'s physical address is "

    .line 76
    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    new-array p1, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 93
    move-result p2

    .line 94
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 97
    move-result-object p1

    .line 98
    const/16 v1, 0xf

    .line 100
    const/16 v2, 0x81

    .line 102
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 112
    move-result p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 116
    :cond_4
    :goto_0
    return-void
.end method

.method public final handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x4

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public final handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0xf

    .line 19
    const/16 v6, 0x72

    .line 21
    const/4 v7, 0x4

    .line 22
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 24
    const/4 v9, -0x1

    .line 25
    if-eqz v3, :cond_4

    .line 27
    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 35
    new-array p0, v1, [Ljava/lang/Object;

    .line 37
    const-string p1, "Cannot turn onsystem audio mode because the System Audio Control feature is disabled."

    .line 39
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 46
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 49
    move-result-object v0

    .line 50
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 52
    iget-object v3, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 54
    invoke-virtual {v3, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 57
    move-result v0

    .line 58
    if-eq v0, v9, :cond_2

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 70
    move-result p0

    .line 71
    invoke-static {p0, v5, v6, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v8, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 78
    :goto_1
    move v7, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    .line 82
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 87
    if-nez p1, :cond_3

    .line 89
    new-instance p1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 91
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 94
    iput v1, p1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 96
    iput-object v0, p1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    move-result p0

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->onResult(Z)V

    .line 109
    goto :goto_1

    .line 110
    :goto_2
    return v7

    .line 111
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 113
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 115
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_6

    .line 121
    return v7

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 129
    move-result v1

    .line 130
    invoke-static {v1, v5, v6, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v8, v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 137
    if-eqz v0, :cond_a

    .line 139
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 141
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 144
    move-result p1

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 152
    move-result v0

    .line 153
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    .line 156
    move-result v0

    .line 157
    if-eq v0, v9, :cond_7

    .line 159
    return v9

    .line 160
    :cond_7
    iget-object v0, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 162
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    move-result-object v0

    .line 168
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_9

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 180
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 183
    move-result v2

    .line 184
    if-ne v2, p1, :cond_8

    .line 186
    move-object v4, v1

    .line 187
    :cond_9
    if-nez v4, :cond_a

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchInputOnReceivingNewActivePath(I)V

    .line 192
    :cond_a
    return v9
.end method

.method public final handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x4

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public bridge synthetic invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 4
    return-void
.end method

.method public isArcEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isDirectConnectToTv()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 8
    move-result p0

    .line 9
    const v0, 0xf000

    .line 12
    and-int/2addr v0, p0

    .line 13
    if-ne v0, p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isInputReady(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 16
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 24
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public final isSystemAudioControlFeatureEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final onAddressAllocated(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 21
    move-result v1

    .line 22
    const/16 v2, 0xf

    .line 24
    const-string v3, "HdmiCecLocalDeviceAudioSystem#onAddressAllocated()"

    .line 26
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 36
    move-result p1

    .line 37
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 39
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 45
    invoke-static {p1, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 48
    move-result-object p1

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 60
    move-result p1

    .line 61
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    .line 64
    move-result v2

    .line 65
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 72
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 74
    if-nez p1, :cond_1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    .line 84
    :goto_0
    const-class p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 89
    const-string/jumbo p1, "persist.sys.hdmi.property_arc_support"

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_2

    .line 111
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 116
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 118
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 124
    :cond_2
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 134
    move-result p1

    .line 135
    if-ne p1, v1, :cond_3

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const-string/jumbo p1, "persist.sys.hdmi.system_audio_control_on_power_on"

    .line 141
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 144
    move-result p1

    .line 145
    const-string/jumbo v2, "persist.sys.hdmi.last_system_audio_control"

    .line 148
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 151
    move-result v1

    .line 152
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->systemAudioControlOnPowerOn(IZ)V

    .line 155
    :goto_1
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 157
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 163
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 166
    move-result-object p1

    .line 167
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 169
    if-eqz p1, :cond_4

    .line 171
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_6

    .line 177
    const-class v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 179
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_4

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_5

    .line 192
    const-string p1, "HdmiCecLocalDeviceAudioSystem"

    .line 194
    const-string v1, "Device Discovery Action is in progress. Restarting."

    .line 196
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 202
    :cond_5
    new-instance p1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 204
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$4;

    .line 206
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$4;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    .line 209
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 215
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    .line 218
    return-void
.end method

.method public final onHotplug(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_1

    .line 21
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 23
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 28
    if-nez p2, :cond_3

    .line 30
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 33
    move-result p1

    .line 34
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-nez p2, :cond_3

    .line 55
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_3

    .line 67
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 79
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 87
    if-nez p1, :cond_2

    .line 89
    return-void

    .line 90
    :cond_2
    iget-object p2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 92
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 95
    move-result p1

    .line 96
    invoke-virtual {p2, p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method public final onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    const-string p2, "HdmiCecLocalDeviceAudioSystem#onStandby()"

    .line 8
    const/4 v0, -0x1

    .line 9
    const v1, 0xffff

    .line 12
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 18
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    const-string/jumbo v0, "persist.sys.hdmi.last_system_audio_control"

    .line 26
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v1, "true"

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-string/jumbo v1, "false"

    .line 41
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode(Lcom/android/server/hdmi/HdmiControlService$27;)V

    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method

.method public final processArcTermination()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x11

    .line 11
    if-ne v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 20
    :cond_0
    return-void
.end method

.method public final reportAudioStatus(I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 16
    check-cast v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 18
    iget-object v2, v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 24
    move-result v2

    .line 25
    iget-object v4, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 27
    check-cast v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 29
    iget-object v4, v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 34
    move-result v4

    .line 35
    iget-object v5, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 37
    check-cast v5, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 39
    iget-object v5, v5, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 41
    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 44
    move-result v5

    .line 45
    iget-object v6, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 47
    check-cast v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 49
    iget-object v6, v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    invoke-virtual {v6, v3}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    .line 54
    move-result v3

    .line 55
    mul-int/lit8 v6, v2, 0x64

    .line 57
    div-int/2addr v6, v5

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v7

    .line 74
    filled-new-array {v2, v3, v5, v7}, [Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 78
    const-string v3, "Reporting volume %d (%d-%d) as CEC volume %d"

    .line 80
    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 90
    move-result p0

    .line 91
    if-eqz v4, :cond_1

    .line 93
    const/16 v2, 0x80

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move v2, v0

    .line 97
    :goto_0
    int-to-byte v2, v2

    .line 98
    int-to-byte v3, v6

    .line 99
    and-int/lit8 v3, v3, 0x7f

    .line 101
    or-int/2addr v2, v3

    .line 102
    int-to-byte v2, v2

    .line 103
    const/4 v3, 0x1

    .line 104
    new-array v3, v3, [B

    .line 106
    aput-byte v2, v3, v0

    .line 108
    const/16 v0, 0x7a

    .line 110
    invoke-static {p0, p1, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 113
    move-result-object p0

    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-virtual {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 118
    return-void
.end method

.method public final routeToInputFromPortId(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "Routing Control Feature is not enabled."

    .line 10
    new-array p1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 18
    if-eqz v0, :cond_7

    .line 20
    if-ltz p1, :cond_6

    .line 22
    const/16 v0, 0x15

    .line 24
    if-lt p1, v0, :cond_1

    .line 26
    goto/16 :goto_1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 30
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 36
    move-result v2

    .line 37
    const/16 v3, 0x11

    .line 39
    if-ne v2, p1, :cond_2

    .line 41
    if-eq p1, v3, :cond_2

    .line 43
    const-string p0, "Not switching to the same port "

    .line 45
    const-string v0, " except for arc"

    .line 47
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    new-array p1, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    if-nez p1, :cond_3

    .line 59
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 65
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 67
    const-string v2, "android.intent.action.MAIN"

    .line 69
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v2, "android.intent.category.HOME"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    move-result-object v1

    .line 78
    const/high16 v2, 0x34010000

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    .line 95
    const-string v2, "Can\'t find activity to switch to HOME"

    .line 97
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    if-ne p1, v3, :cond_4

    .line 103
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    .line 106
    move-result-object v0

    .line 107
    const-string v1, "0"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 134
    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    const-string p0, "Port number does not match any Tv Input."

    .line 148
    new-array p1, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    goto :goto_2

    .line 154
    :cond_6
    :goto_1
    const-string p0, "Invalid port number for Tv Input switching."

    .line 156
    new-array p1, v1, [Ljava/lang/Object;

    .line 158
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_7
    :goto_2
    return-void
.end method

.method public final setArcStatus(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object v1

    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Set Arc Status[old:%b new:%b]"

    .line 20
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 26
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "0"

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 44
    invoke-virtual {v1, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 47
    iget-object v0, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 49
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 51
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    const/high16 v1, -0x78000000

    .line 55
    const-string v2, ""

    .line 57
    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 62
    return-void
.end method

.method public final setPreferredAddress(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const-string/jumbo v0, "persist.sys.hdmi.addr.audiosystem"

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public final setSystemAudioMode(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 16
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "system_audio_mode_muting"

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v0, v2, :cond_0

    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 38
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 40
    check-cast v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 42
    iget-object v3, v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    const/4 v4, 0x3

    .line 45
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 48
    move-result v3

    .line 49
    if-ne v3, p1, :cond_3

    .line 51
    if-nez v0, :cond_1

    .line 53
    if-eqz p1, :cond_3

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 57
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 59
    if-eqz p1, :cond_2

    .line 61
    const/16 v5, 0x64

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/16 v5, -0x64

    .line 66
    :goto_1
    check-cast v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 68
    iget-object v3, v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 75
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 77
    check-cast v1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 79
    iget-object v1, v1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    .line 84
    move-result v1

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    move-result-object v3

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    const-string v3, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    .line 99
    invoke-static {v3, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 104
    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 107
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 110
    move-result v3

    .line 111
    if-eq v3, p1, :cond_4

    .line 113
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 115
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 118
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 120
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 129
    if-eqz v1, :cond_5

    .line 131
    if-nez v0, :cond_5

    .line 133
    if-nez p1, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 138
    move-result p1

    .line 139
    const/16 v0, 0x11

    .line 141
    if-ne p1, v0, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 146
    move-result p1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 150
    :cond_5
    const-string/jumbo p1, "persist.sys.hdmi.property_arc_support"

    .line 153
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_6

    .line 165
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 167
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_6

    .line 173
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_6

    .line 181
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 183
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 189
    :cond_6
    return-void

    .line 190
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p0
.end method

.method public final switchInputOnReceivingNewActivePath(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    if-gez p1, :cond_0

    .line 17
    const/16 p1, 0x11

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    .line 25
    if-eqz v0, :cond_1

    .line 27
    if-ltz p1, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final switchToTvInput(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "android.intent.action.VIEW"

    .line 11
    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    const/high16 v1, 0x10000000

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "Can\'t find activity to switch to "

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public systemAudioControlOnPowerOn(IZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_2

    .line 6
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_2

    .line 14
    :cond_0
    const-class p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 22
    const-string p2, "HdmiCecLocalDeviceAudioSystem"

    .line 24
    const-string v0, "SystemAudioInitiationActionFromAvr is in progress. Restarting."

    .line 26
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 32
    :cond_1
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 40
    :cond_2
    return-void
.end method

.method public final terminateSystemAudioMode(Lcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x72

    .line 35
    const/16 v4, 0xf

    .line 37
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    .line 43
    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 49
    :cond_1
    return-void
.end method
