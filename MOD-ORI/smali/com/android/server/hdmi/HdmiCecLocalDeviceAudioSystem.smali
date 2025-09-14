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

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
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

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    .line 63
    .line 64
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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v5, 0x15

    .line 39
    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/16 v6, 0x16

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v1, v3, v4, v5, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const/16 v3, 0xb

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const/16 v2, 0x9

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const/4 v2, 0x6

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const/16 v4, 0xa

    .line 114
    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    const/4 v5, 0x7

    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v5}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const/16 v5, 0x12

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v2, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const/16 v2, 0x8

    .line 152
    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const/16 v2, 0xe

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const/16 v3, 0x13

    .line 171
    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sput-object v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->AUDIO_CODECS_MAP:Ljava/util/HashMap;

    .line 184
    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "0"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v2, "tvinput"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 31
    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v1, Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 52
    .line 53
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v2, "routing_control"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x1

    .line 72
    if-ne v1, v2, :cond_0

    .line 73
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

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v3, "system_audio_control"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ne v1, v2, :cond_1

    .line 91
    .line 92
    move v0, v2

    .line 93
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 94
    .line 95
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 96
    .line 97
    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 101
    .line 102
    return-void
.end method

.method public static getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    mul-int/2addr v0, v1

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, [B

    .line 26
    .line 27
    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "Cannot turn "

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p1, "on"

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string/jumbo p1, "off"

    .line 21
    .line 22
    .line 23
    :goto_0
    const-string/jumbo v0, "system audio mode because the System Audio Control feature is disabled."

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x0

    .line 31
    new-array v0, p1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return p1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "System Audio Mode change[old:%b new:%b]"

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    return p0
.end method

.method public final computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 1

    .line 1
    const-string/jumbo p0, "persist.sys.hdmi.property_arc_support"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 37
    .line 38
    .line 39
    iget-object p1, v1, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

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
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x6

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne p2, v1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    const/4 p1, 0x3

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "HdmiCecLocalDeviceAudioSystem:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "isRoutingFeatureEnabled "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v1, "mSystemAudioControlFeatureEnabled: "

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 40
    .line 41
    const-string/jumbo v2, "mTvSystemAudioModeSupport: "

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v1, "mArcEstablished: "

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 69
    .line 70
    const-string/jumbo v2, "mArcIntentUsed: "

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 78
    .line 79
    const-string/jumbo v2, "mRoutingPort: "

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string/jumbo v1, "mLocalActivePort: "

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 123
    .line 124
    const-string/jumbo v1, "mPortIdToTvInputs:"

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 131
    .line 132
    const-string/jumbo v1, "mTvInputsToDeviceInfo:"

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 139
    .line 140
    .line 141
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final findKeyReceiverAddress()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 20
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

    .line 2
    .line 3
    .line 4
    const-string/jumbo p0, "persist.sys.hdmi.addr.audiosystem"

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

.method public getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B
    .locals 15

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->AUDIO_CODECS_MAP:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_c

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/List;

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    const/4 v5, 0x0

    .line 38
    move v6, v5

    .line 39
    :goto_0
    if-ge v6, v3, :cond_c

    .line 40
    .line 41
    aget v7, v1, v6

    .line 42
    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_b

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getChannelCounts()[I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    array-length v2, v1

    .line 58
    const/16 v3, 0x8

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    array-length v2, v1

    .line 64
    sub-int/2addr v2, v6

    .line 65
    aget v1, v1, v2

    .line 66
    .line 67
    if-le v1, v3, :cond_2

    .line 68
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

    .line 73
    .line 74
    or-int/2addr v1, v2

    .line 75
    int-to-byte v1, v1

    .line 76
    aput-byte v1, v0, v5

    .line 77
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    const/16 v2, 0x20

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    const/16 v2, 0x2c

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const/16 v2, 0x30

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    const/16 v2, 0x58

    .line 99
    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    const/16 v2, 0x60

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    const/16 v2, 0xb0

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    const/16 v2, 0xc0

    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    filled-new-array/range {v8 .. v14}, [Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    array-length v9, v8

    .line 138
    if-nez v9, :cond_3

    .line 139
    .line 140
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    .line 141
    .line 142
    const-string v8, "Device supports arbitrary rates"

    .line 143
    .line 144
    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x7f

    .line 148
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

    .line 154
    .line 155
    aget v12, v8, v11

    .line 156
    .line 157
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-eqz v13, :cond_4

    .line 166
    .line 167
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    shl-int v12, v6, v12

    .line 176
    .line 177
    or-int/2addr v10, v12

    .line 178
    int-to-byte v10, v10

    .line 179
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    move v1, v10

    .line 183
    :goto_2
    aput-byte v1, v0, v6

    .line 184
    .line 185
    const/4 v1, 0x2

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 187
    .line 188
    .line 189
    :pswitch_0
    return-object v4

    .line 190
    :pswitch_1
    aput-byte v5, v0, v1

    .line 191
    .line 192
    return-object v0

    .line 193
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    array-length v6, v4

    .line 198
    if-nez v6, :cond_6

    .line 199
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

    .line 204
    .line 205
    aget v7, v4, v5

    .line 206
    .line 207
    if-ge v6, v7, :cond_7

    .line 208
    .line 209
    move v6, v7

    .line 210
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 211
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

    .line 217
    .line 218
    return-object v0

    .line 219
    :pswitch_3
    if-ne v7, v1, :cond_9

    .line 220
    .line 221
    aput-byte v6, v0, v1

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_9
    const/16 v2, 0x15

    .line 225
    .line 226
    if-ne v7, v2, :cond_a

    .line 227
    .line 228
    const/4 v2, 0x4

    .line 229
    aput-byte v2, v0, v1

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    aput-byte v5, v0, v1

    .line 233
    .line 234
    :goto_5
    return-object v0

    .line 235
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
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

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p2

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    aget v3, p2, v2

    .line 12
    .line 13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    array-length v5, v4

    .line 20
    const/4 v6, 0x3

    .line 21
    if-ne v5, v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    array-length v4, v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "Dropping Short Audio Descriptor with length %d for requested codec %x"

    .line 41
    .line 42
    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, -0x1

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v1, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "Device info %X not found; buffering the command"

    .line 50
    .line 51
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isInputReady(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "Input not ready for device: %X; buffering the command"

    .line 81
    .line 82
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v0, v2, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 106
    .line 107
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 108
    .line 109
    const/16 v2, 0x82

    .line 110
    .line 111
    if-ne v1, v2, :cond_3

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->reportAudioStatus(I)V

    .line 22
    .line 23
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

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-class v2, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 34
    .line 35
    const/16 v2, 0x7e

    .line 36
    .line 37
    invoke-static {p0, p1, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string p1, "HdmiCecLocalDeviceAudioSystemStub handleInitiateArc"

    .line 8
    .line 9
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final handleReportArcInitiate()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    return p0
.end method

.method public final handleReportArcTermination()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    .line 5
    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0
.end method

.method public final handleRequestArcInitiate()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    const-string/jumbo v1, "persist.sys.hdmi.property_arc_support"

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p0, "AVR device is not directly connected with TV"

    .line 30
    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    new-instance v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, -0x1

    .line 46
    return p0
.end method

.method public final handleRequestArcTermination()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string p0, "ARC is not established between TV and AVR device"

    .line 23
    .line 24
    new-array v0, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const-class v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 53
    .line 54
    check-cast v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 73
    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 86
    .line 87
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 103
    .line 104
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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "HdmiCecLocalDeviceAudioSystemStub handleRequestShortAudioDescriptor"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x4

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    const-string v4, "/vendor/etc/sadConfig.xml"

    .line 33
    .line 34
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    const-string v6, "HdmiCecLocalDeviceAudioSystem"

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 47
    .line 48
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    .line 52
    .line 53
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

    .line 56
    .line 57
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

    .line 70
    .line 71
    const-string v9, "Unable to parse file: "

    .line 72
    .line 73
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v6, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v9, "Error reading file: "

    .line 90
    .line 91
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v6, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-object v7, v5

    .line 106
    :goto_2
    iget-object v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 107
    .line 108
    array-length v4, v2

    .line 109
    new-array v8, v4, [I

    .line 110
    .line 111
    move v9, v0

    .line 112
    :goto_3
    array-length v10, v2

    .line 113
    if-ge v9, v10, :cond_4

    .line 114
    .line 115
    aget-byte v10, v2, v9

    .line 116
    .line 117
    if-lt v10, v3, :cond_3

    .line 118
    .line 119
    const/16 v11, 0xf

    .line 120
    .line 121
    if-gt v10, v11, :cond_3

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_3
    move v10, v0

    .line 125
    :goto_4
    aput v10, v8, v9

    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    const/4 v2, 0x3

    .line 131
    if-eqz v7, :cond_b

    .line 132
    .line 133
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-lez v9, :cond_b

    .line 138
    .line 139
    const-string/jumbo v3, "persist.sys.hdmi.property_sytem_audio_mode_audio_port"

    .line 140
    .line 141
    .line 142
    const-string v9, "VX_AUDIO_DEVICE_IN_HDMI_ARC"

    .line 143
    .line 144
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_6

    .line 157
    .line 158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 163
    .line 164
    iget-object v10, v9, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_5

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_6
    move-object v9, v5

    .line 174
    :goto_5
    if-nez v9, :cond_7

    .line 175
    .line 176
    const-string/jumbo v4, "sadConfig.xml does not have required device info for "

    .line 177
    .line 178
    .line 179
    invoke-static {v4, v3, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-array v0, v0, [B

    .line 183
    .line 184
    goto/16 :goto_a

    .line 185
    .line 186
    :cond_7
    new-instance v3, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v6, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .line 195
    .line 196
    iget-object v7, v9, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 197
    .line 198
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_8

    .line 207
    .line 208
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 213
    .line 214
    iget v10, v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 215
    .line 216
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    iget-object v9, v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 221
    .line 222
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_8
    :goto_7
    if-ge v0, v4, :cond_a

    .line 227
    .line 228
    aget v7, v8, v0

    .line 229
    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_9

    .line 239
    .line 240
    aget v7, v8, v0

    .line 241
    .line 242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    check-cast v7, [B

    .line 251
    .line 252
    if-eqz v7, :cond_9

    .line 253
    .line 254
    array-length v9, v7

    .line 255
    if-ne v9, v2, :cond_9

    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_a
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    goto/16 :goto_a

    .line 268
    .line 269
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    const-class v6, Landroid/media/AudioManager;

    .line 274
    .line 275
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    check-cast v4, Landroid/media/AudioManager;

    .line 280
    .line 281
    if-nez v4, :cond_d

    .line 282
    .line 283
    const-string v3, "Error getting system audio device because AudioManager not available."

    .line 284
    .line 285
    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    .line 287
    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_c
    move-object v6, v5

    .line 291
    goto :goto_9

    .line 292
    :cond_d
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    array-length v4, v3

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const-string v6, "Found %d audio input devices"

    .line 306
    .line 307
    invoke-static {v6, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    array-length v4, v3

    .line 311
    :goto_8
    if-ge v0, v4, :cond_c

    .line 312
    .line 313
    aget-object v6, v3, v0

    .line 314
    .line 315
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    filled-new-array {v7, v9}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    const-string v9, "%s at port %s"

    .line 328
    .line 329
    invoke-static {v9, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    new-instance v9, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$$ExternalSyntheticLambda0;

    .line 341
    .line 342
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-interface {v7, v9}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    const-string v9, ", "

    .line 350
    .line 351
    invoke-static {v9}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    const-string v9, "Supported encodings are %s"

    .line 364
    .line 365
    invoke-static {v9, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    const/16 v9, 0xa

    .line 373
    .line 374
    if-ne v7, v9, :cond_e

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 378
    .line 379
    goto :goto_8

    .line 380
    :goto_9
    if-nez v6, :cond_f

    .line 381
    .line 382
    const/4 p0, 0x5

    .line 383
    return p0

    .line 384
    :cond_f
    invoke-virtual {p0, v6, v8}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    :goto_a
    array-length v3, v0

    .line 389
    if-nez v3, :cond_10

    .line 390
    .line 391
    return v2

    .line 392
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    const/16 v2, 0xa3

    .line 401
    .line 402
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 403
    .line 404
    invoke-static {p0, p1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    invoke-virtual {v1, p0, v5}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 409
    .line 410
    .line 411
    const/4 p0, -0x1

    .line 412
    return p0
.end method

.method public final handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-gez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x11

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    if-nez p1, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 42
    .line 43
    .line 44
    iget p0, p2, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 45
    .line 46
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const-string p2, "HdmiCecLocalDeviceAudioSystem#handleRoutingChangeAndInformationForSwitch()"

    .line 53
    .line 54
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget-object p2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-ne p1, p2, :cond_3

    .line 73
    .line 74
    const-string p0, "Current device can\'t assign valid physical addressto devices under it any more. It\'s physical address is "

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-array p1, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/16 v1, 0xf

    .line 99
    .line 100
    const/16 v2, 0x81

    .line 101
    .line 102
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    return-void
.end method

.method public final handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
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

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
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

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0xf

    .line 18
    .line 19
    const/16 v6, 0x72

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    .line 24
    const/4 v9, -0x1

    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-array p0, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string p1, "Cannot turn onsystem audio mode because the System Audio Control feature is disabled."

    .line 38
    .line 39
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 51
    .line 52
    iget-object v3, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eq v0, v9, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-static {p0, v5, v6, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v8, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    move v7, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    .line 81
    .line 82
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    new-instance p1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 92
    .line 93
    .line 94
    iput v1, p1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 95
    .line 96
    iput-object v0, p1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->onResult(Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :goto_2
    return v7

    .line 111
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 114
    .line 115
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    return v7

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-static {v1, v5, v6, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v8, v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 135
    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 140
    .line 141
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eq v0, v9, :cond_7

    .line 158
    .line 159
    return v9

    .line 160
    :cond_7
    iget-object v0, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_9

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-ne v2, p1, :cond_8

    .line 185
    .line 186
    move-object v4, v1

    .line 187
    :cond_9
    if-nez v4, :cond_a

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchInputOnReceivingNewActivePath(I)V

    .line 190
    .line 191
    .line 192
    :cond_a
    return v9
.end method

.method public final handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
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

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isArcEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 5
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

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const v0, 0xf000

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, p0

    .line 13
    if-ne v0, p0, :cond_0

    .line 14
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

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 5
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
    const-string v3, "HdmiCecLocalDeviceAudioSystem#onAddressAllocated()"

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
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 73
    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    .line 80
    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    const-class p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo p1, "persist.sys.hdmi.property_arc_support"

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_2

    .line 110
    .line 111
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-ne p1, v1, :cond_3

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const-string/jumbo p1, "persist.sys.hdmi.system_audio_control_on_power_on"

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    const-string/jumbo v2, "persist.sys.hdmi.last_system_audio_control"

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->systemAudioControlOnPowerOn(IZ)V

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 168
    .line 169
    if-eqz p1, :cond_4

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_6

    .line 176
    .line 177
    const-class v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    const-string p1, "HdmiCecLocalDeviceAudioSystem"

    .line 193
    .line 194
    const-string v1, "Device Discovery Action is in progress. Restarting."

    .line 195
    .line 196
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    new-instance p1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 203
    .line 204
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$4;

    .line 205
    .line 206
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$4;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final onHotplug(IZ)V
    .locals 3

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
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-nez p2, :cond_3

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 86
    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object p2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p2, p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method public final onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    const-string p2, "HdmiCecLocalDeviceAudioSystem#onStandby()"

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    const v1, 0xffff

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 22
    .line 23
    const-string/jumbo v0, "persist.sys.hdmi.last_system_audio_control"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string/jumbo v1, "true"

    .line 33
    .line 34
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

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode(Lcom/android/server/hdmi/HdmiControlService$27;)V

    .line 46
    .line 47
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

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 18
    .line 19
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

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 15
    .line 16
    check-cast v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v4, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 26
    .line 27
    check-cast v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 36
    .line 37
    check-cast v5, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    .line 41
    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget-object v6, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 46
    .line 47
    check-cast v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 48
    .line 49
    iget-object v6, v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    mul-int/lit8 v6, v2, 0x64

    .line 56
    .line 57
    div-int/2addr v6, v5

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    filled-new-array {v2, v3, v5, v7}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "Reporting volume %d (%d-%d) as CEC volume %d"

    .line 79
    .line 80
    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    const/16 v2, 0x80

    .line 94
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

    .line 100
    .line 101
    or-int/2addr v2, v3

    .line 102
    int-to-byte v2, v2

    .line 103
    const/4 v3, 0x1

    .line 104
    new-array v3, v3, [B

    .line 105
    .line 106
    aput-byte v2, v3, v0

    .line 107
    .line 108
    const/16 v0, 0x7a

    .line 109
    .line 110
    invoke-static {p0, p1, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-virtual {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final routeToInputFromPortId(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "Routing Control Feature is not enabled."

    .line 9
    .line 10
    new-array p1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 17
    .line 18
    if-eqz v0, :cond_7

    .line 19
    .line 20
    if-ltz p1, :cond_6

    .line 21
    .line 22
    const/16 v0, 0x15

    .line 23
    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v3, 0x11

    .line 38
    .line 39
    if-ne v2, p1, :cond_2

    .line 40
    .line 41
    if-eq p1, v3, :cond_2

    .line 42
    .line 43
    const-string p0, "Not switching to the same port "

    .line 44
    .line 45
    const-string v0, " except for arc"

    .line 46
    .line 47
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-array p1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    if-nez p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 66
    .line 67
    const-string v2, "android.intent.action.MAIN"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "android.intent.category.HOME"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/high16 v2, 0x34010000

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    .line 94
    .line 95
    const-string v2, "Can\'t find activity to switch to HOME"

    .line 96
    .line 97
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    if-ne p1, v3, :cond_4

    .line 102
    .line 103
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "0"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    const-string p0, "Port number does not match any Tv Input."

    .line 147
    .line 148
    new-array p1, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    :goto_1
    const-string p0, "Invalid port number for Tv Input switching."

    .line 155
    .line 156
    new-array p1, v1, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_2
    return-void
.end method

.method public final setArcStatus(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Set Arc Status[old:%b new:%b]"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "0"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 43
    .line 44
    invoke-virtual {v1, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 48
    .line 49
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    .line 53
    const/high16 v1, -0x78000000

    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 61
    .line 62
    return-void
.end method

.method public final setPreferredAddress(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "persist.sys.hdmi.addr.audiosystem"

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

.method public final setSystemAudioMode(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "system_audio_mode_muting"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v0, v2, :cond_0

    .line 32
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

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 39
    .line 40
    check-cast v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v3, p1, :cond_3

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    const/16 v5, 0x64

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/16 v5, -0x64

    .line 65
    .line 66
    :goto_1
    check-cast v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    .line 70
    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 76
    .line 77
    check-cast v1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v3, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    .line 98
    .line 99
    invoke-static {v3, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eq v3, p1, :cond_4

    .line 112
    .line 113
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 114
    .line 115
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 119
    .line 120
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 121
    .line 122
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

    .line 128
    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    if-nez v0, :cond_5

    .line 132
    .line 133
    if-nez p1, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    const/16 v0, 0x11

    .line 140
    .line 141
    if-ne p1, v0, :cond_5

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 148
    .line 149
    .line 150
    :cond_5
    const-string/jumbo p1, "persist.sys.hdmi.property_arc_support"

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_6

    .line 180
    .line 181
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 182
    .line 183
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 187
    .line 188
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

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-gez p1, :cond_0

    .line 16
    .line 17
    const/16 p1, 0x11

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 30
    .line 31
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

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    const/high16 v1, 0x10000000

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Can\'t find activity to switch to "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    .line 44
    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public systemAudioControlOnPowerOn(IZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    :cond_0
    const-class p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string p2, "HdmiCecLocalDeviceAudioSystem"

    .line 23
    .line 24
    const-string v0, "SystemAudioInitiationActionFromAvr is in progress. Restarting."

    .line 25
    .line 26
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final terminateSystemAudioMode(Lcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x72

    .line 34
    .line 35
    const/16 v4, 0xf

    .line 36
    .line 37
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    .line 42
    .line 43
    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
