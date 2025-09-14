.class public final Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

.field static final AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

.field static final AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

.field public static final AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

.field public static final FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

.field public static final HONG_KONG:Ljava/util/Locale;

.field public static final MACAU:Ljava/util/Locale;

.field public static final PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

.field static final STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

.field public static final sTerminologyToBibliographicMap:Ljava/util/Map;


# instance fields
.field public mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

.field public mActivePortId:I

.field public final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

.field public mAddressAllocated:Z

.field public final mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field public final mAudioDeviceVolumeBehaviors:Ljava/util/Map;

.field public mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

.field public mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

.field public mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field public final mCecLocalDevices:Ljava/util/List;

.field public mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

.field public mCecVersion:I

.field public mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

.field public final mDeviceEventListenerRecords:Ljava/util/ArrayList;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

.field public mEarcEnabled:Z

.field public mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

.field public mEarcPortId:I

.field private mEarcSupported:Z

.field public mEarcTxFeatureFlagEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

.field public mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

.field public final mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

.field public mHdmiCecVolumeControl:I

.field public final mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

.field public final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field public mHdmiControlEnabled:I

.field public final mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

.field public final mHotplugEventListenerRecords:Ljava/util/ArrayList;

.field public mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

.field public mIoLooper:Landroid/os/Looper;

.field public final mIoThread:Landroid/os/HandlerThread;

.field public mIsCecAvailable:Z

.field public final mLock:Ljava/lang/Object;

.field public mMenuLanguage:Ljava/lang/String;

.field public mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field public mMhlDevices:Ljava/util/List;

.field public mMhlInputChangeEnabled:Z

.field public final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

.field public mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

.field public mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

.field public mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

.field public mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

.field public mProhibitMode:Z

.field public mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

.field public final mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field public final mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

.field public final mSettingChangeListener:Lcom/android/server/hdmi/HdmiControlService$2;

.field public final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field public mSoundbarModeFeatureFlagEnabled:Z

.field public mStandbyMessageReceived:Z

.field public mStreamMusicMaxVolume:I

.field public mSystemAudioActivated:Z

.field public final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

.field public mTransitionFromArcToEarcTxEnabled:Z

.field public mTvInputManager:Landroid/media/tv/TvInputManager;

.field public final mVendorCommandListenerRecords:Ljava/util/ArrayList;

.field public mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

.field public mWakeUpMessageReceived:Z


# direct methods
.method public static -$$Nest$mgetRemoteControlSourceAddress(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 p0, 0xf

    .line 40
    .line 41
    :goto_0
    return p0
.end method

.method public static -$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
.end method

.method public static -$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-static {p0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static -$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Locale;

    .line 2
    .line 3
    const-string/jumbo v1, "zh"

    .line 4
    .line 5
    .line 6
    const-string v2, "HK"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 12
    .line 13
    new-instance v0, Ljava/util/Locale;

    .line 14
    .line 15
    const-string v2, "MO"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "sqi"

    .line 28
    .line 29
    .line 30
    const-string v2, "alb"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "hye"

    .line 36
    .line 37
    .line 38
    const-string v2, "arm"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "eus"

    .line 44
    .line 45
    .line 46
    const-string v2, "baq"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "mya"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "bur"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "ces"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v2, "cze"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "nld"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v2, "dut"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "kat"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v2, "geo"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v1, "deu"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v2, "ger"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string/jumbo v1, "ell"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "gre"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v1, "fra"

    .line 106
    .line 107
    .line 108
    const-string/jumbo v2, "fre"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-string/jumbo v1, "isl"

    .line 115
    .line 116
    .line 117
    const-string/jumbo v2, "ice"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string/jumbo v1, "mkd"

    .line 124
    .line 125
    .line 126
    const-string/jumbo v2, "mac"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string/jumbo v1, "mri"

    .line 133
    .line 134
    .line 135
    const-string/jumbo v2, "mao"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string/jumbo v1, "msa"

    .line 142
    .line 143
    .line 144
    const-string/jumbo v2, "may"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const-string/jumbo v1, "fas"

    .line 151
    .line 152
    .line 153
    const-string/jumbo v2, "per"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-string/jumbo v1, "ron"

    .line 160
    .line 161
    .line 162
    const-string/jumbo v2, "rum"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    const-string/jumbo v1, "slk"

    .line 169
    .line 170
    .line 171
    const-string/jumbo v2, "slo"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const-string/jumbo v1, "bod"

    .line 178
    .line 179
    .line 180
    const-string/jumbo v2, "tib"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string/jumbo v1, "cym"

    .line 187
    .line 188
    .line 189
    const-string/jumbo v2, "wel"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    .line 200
    .line 201
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 202
    .line 203
    const/4 v1, 0x2

    .line 204
    const/16 v2, 0x9

    .line 205
    .line 206
    const-string v3, ""

    .line 207
    .line 208
    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

    .line 212
    .line 213
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 214
    .line 215
    const/16 v4, 0xa

    .line 216
    .line 217
    invoke-direct {v2, v1, v4, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sput-object v2, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

    .line 221
    .line 222
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    .line 223
    .line 224
    const/16 v5, 0x1d

    .line 225
    .line 226
    invoke-direct {v4, v1, v5, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v2, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 234
    .line 235
    invoke-static {v2, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 240
    .line 241
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 246
    .line 247
    const/4 v0, 0x3

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const/4 v2, 0x5

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v1, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 262
    .line 263
    const/4 v1, 0x1

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v1, v3, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 281
    .line 282
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 283
    .line 284
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 296
    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 45
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 48
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Hdmi Control Io Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v2, 0x0

    .line 60
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 61
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 63
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 70
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 72
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 73
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 76
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$2;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->readDeviceTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 79
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 80
    new-instance p1, Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 81
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/server/hdmi/AudioManagerWrapper;Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 3
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 6
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Hdmi Control Io Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 19
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 28
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 30
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 31
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 34
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$2;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 35
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 36
    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    invoke-direct {p2, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 37
    new-instance p2, Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 38
    new-instance p1, Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 41
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 42
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    return-void
.end method

.method public static invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "Invoking callback failed:"

    .line 10
    .line 11
    const-string v0, "HdmiControlService"

    .line 12
    .line 13
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0, p0, p2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->onStatusChange(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, "Failed to report HdmiControlStatusChange: "

    .line 23
    .line 24
    const-string v2, " isAvailable: "

    .line 25
    .line 26
    invoke-static {p0, v1, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "HdmiControlService"

    .line 31
    .line 32
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    return-object p0

    .line 45
    :cond_2
    :goto_0
    const-string/jumbo p0, "chi"

    .line 46
    .line 47
    .line 48
    return-object p0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->releaseWakeLock()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "HdmiControlService"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 21
    .line 22
    const-wide/16 v1, 0x1388

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public addEarcLocalDevice(Lcom/android/server/hdmi/HdmiEarcLocalDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 5
    .line 6
    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$24;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$23;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$23;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw p0

    .line 35
    :catch_0
    const-string p0, "HdmiControlService"

    .line 36
    .line 37
    const-string p1, "Listener already died"

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :catch_0
    const-string p0, "HdmiControlService"

    .line 28
    .line 29
    const-string p1, "Listener already died"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3
    .line 4
    .line 5
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    .line 13
    .line 14
    .line 15
    new-instance v8, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v9, v0, [I

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 28
    .line 29
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v2, v0

    .line 49
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 50
    .line 51
    iget-object v11, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 52
    .line 53
    iget v12, v2, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    new-instance v14, Lcom/android/server/hdmi/HdmiControlService$21;

    .line 60
    .line 61
    move-object v0, v14

    .line 62
    move-object v1, p0

    .line 63
    move-object v3, v8

    .line 64
    move-object/from16 v4, p1

    .line 65
    .line 66
    move-object v5, v9

    .line 67
    move/from16 v6, p2

    .line 68
    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$21;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 73
    .line 74
    .line 75
    iget-object v0, v11, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$3;

    .line 78
    .line 79
    invoke-direct {v1, v11, v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiControlService$21;)V

    .line 80
    .line 81
    .line 82
    iget-wide v2, v11, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public final announceHdmiControlStatusChange(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    const/4 v2, 0x1

    .line 45
    if-ne p1, v2, :cond_1

    .line 46
    .line 47
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$26;

    .line 48
    .line 49
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$26;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 66
    .line 67
    invoke-static {p1, v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final announceSystemAudioModeChange(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Invoking callback failed:"

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "HdmiControlService"

    .line 44
    .line 45
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p0
.end method

.method public final assertRunOnServiceThread()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Should run on service thread."

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 9
    .line 10
    return-object p0
.end method

.method public final canGoToStandby()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public final checkAndUpdateAbsoluteVolumeBehavior()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_11

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_11

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    sget-object v3, Lcom/android/server/hdmi/HdmiControlService;->FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x1

    .line 108
    if-ne v4, v5, :cond_10

    .line 109
    .line 110
    if-nez v3, :cond_4

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_4
    if-nez v1, :cond_5

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const-class v4, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 129
    .line 130
    const/4 v6, 0x3

    .line 131
    if-eqz v3, :cond_c

    .line 132
    .line 133
    if-eq v3, v5, :cond_a

    .line 134
    .line 135
    const/4 v4, 0x2

    .line 136
    if-eq v3, v4, :cond_6

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    if-ne v2, v6, :cond_7

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v3, 0x6

    .line 158
    if-lt v2, v3, :cond_8

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const/16 v3, 0xa5

    .line 169
    .line 170
    invoke-static {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    const-class v1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;

    .line 189
    .line 190
    const/4 v3, 0x0

    .line 191
    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;-><init>(II)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_9

    .line 199
    .line 200
    new-instance v1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 201
    .line 202
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;

    .line 203
    .line 204
    invoke-direct {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiCecLocalDevice$3;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 211
    .line 212
    .line 213
    :cond_9
    :goto_0
    return-void

    .line 214
    :cond_a
    if-eq v2, v6, :cond_b

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 227
    .line 228
    invoke-direct {v1, v0, p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 232
    .line 233
    .line 234
    :cond_b
    return-void

    .line 235
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_e

    .line 240
    .line 241
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 242
    .line 243
    if-eqz v3, :cond_e

    .line 244
    .line 245
    const/4 v3, 0x5

    .line 246
    if-eq v2, v3, :cond_f

    .line 247
    .line 248
    if-ne v2, v6, :cond_d

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_d

    .line 263
    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 269
    .line 270
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 271
    .line 272
    check-cast v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 273
    .line 274
    iget-object v6, v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 275
    .line 276
    invoke-virtual {v6, v3, v5}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_d
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 291
    .line 292
    invoke-direct {v1, v0, p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 300
    .line 301
    .line 302
    :cond_f
    :goto_2
    return-void

    .line 303
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 304
    .line 305
    .line 306
    :cond_11
    return-void
.end method

.method public clearCecLocalDevices()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public clearEarcLocalDevice()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 6
    .line 7
    return-void
.end method

.method public disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0xf

    .line 21
    .line 22
    const/4 v2, -0x2

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eq v0, v2, :cond_0

    .line 36
    .line 37
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 38
    .line 39
    if-eq v2, v1, :cond_0

    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    iget p0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 43
    .line 44
    if-ne p0, v1, :cond_2

    .line 45
    .line 46
    const/4 p0, -0x1

    .line 47
    return p0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Unhandled cec command:"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 p1, 0x0

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v2
.end method

.method public final earcBlocksArcConnection()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p0, v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    monitor-exit v0

    .line 19
    return v1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final enableAudioReturnChannel(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 21
    .line 22
    invoke-interface {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(IZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final enforceAccessPermission()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.HDMI_CEC"

    .line 6
    .line 7
    const-string v1, "HdmiControlService"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getAbsoluteVolumeChangedListener()Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAllCecLocalDevices()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAvbCapableAudioOutputDevices()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public getCecDeviceTypes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Landroid/sysprop/HdmiProperties;->cec_device_types()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getCecLocalDeviceTypes()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 9
    .line 10
    const-string/jumbo v2, "soundbar_mode"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    return-object v0
.end method

.method public getCecVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public getDeviceTypes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Landroid/sysprop/HdmiProperties;->device_type()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    monitor-exit v0

    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 41
    .line 42
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public getEarcLocalDevice()Lcom/android/server/hdmi/HdmiEarcLocalDevice;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 5
    .line 6
    return-object p0
.end method

.method public getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHdmiCecVolumeControl()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

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

.method public getInitialPowerStatus()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public getIoLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

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

.method public final getPortInfo()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getVendorId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_1c

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v0, v2, :cond_1c

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    const/4 v3, -0x1

    .line 21
    if-nez v0, :cond_1b

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/16 v5, 0xf

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    iget v7, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v7, v4, :cond_1

    .line 59
    .line 60
    if-eq v7, v5, :cond_1

    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, "Unexpected source: message sent from device itself, "

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-array p1, v6, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v8, 0x4

    .line 93
    const/4 v9, 0x1

    .line 94
    const/4 v10, 0x2

    .line 95
    if-nez v4, :cond_4

    .line 96
    .line 97
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v7}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_3

    .line 110
    .line 111
    sget-object v11, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 112
    .line 113
    aget-object v11, v11, v7

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const-string v11, ""

    .line 117
    .line 118
    :goto_0
    invoke-virtual {v4, v11}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    packed-switch v7, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    move v1, v10

    .line 126
    goto :goto_1

    .line 127
    :pswitch_0
    move v1, v2

    .line 128
    goto :goto_1

    .line 129
    :pswitch_1
    move v1, v8

    .line 130
    goto :goto_1

    .line 131
    :pswitch_2
    move v1, v9

    .line 132
    goto :goto_1

    .line 133
    :pswitch_3
    move v1, v6

    .line 134
    :goto_1
    :pswitch_4
    invoke-virtual {v4, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    instance-of v1, p1, Lcom/android/server/hdmi/ReportFeaturesMessage;

    .line 146
    .line 147
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    move-object v1, p1

    .line 152
    check-cast v1, Lcom/android/server/hdmi/ReportFeaturesMessage;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 155
    .line 156
    .line 157
    iget v4, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget v11, v1, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    .line 168
    .line 169
    invoke-virtual {v4, v11}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v1, v1, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 174
    .line 175
    invoke-virtual {v4, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 187
    .line 188
    .line 189
    :cond_5
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 190
    .line 191
    iget-object v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 192
    .line 193
    if-eqz v1, :cond_10

    .line 194
    .line 195
    const/16 v2, 0x47

    .line 196
    .line 197
    const-string v9, "HdmiCecNetwork"

    .line 198
    .line 199
    if-eq v1, v2, :cond_d

    .line 200
    .line 201
    const/16 v2, 0x84

    .line 202
    .line 203
    if-eq v1, v2, :cond_a

    .line 204
    .line 205
    const/16 v2, 0x87

    .line 206
    .line 207
    if-eq v1, v2, :cond_8

    .line 208
    .line 209
    const/16 v2, 0x90

    .line 210
    .line 211
    if-eq v1, v2, :cond_7

    .line 212
    .line 213
    const/16 v2, 0x9e

    .line 214
    .line 215
    if-eq v1, v2, :cond_6

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 220
    .line 221
    .line 222
    aget-byte v2, v4, v6

    .line 223
    .line 224
    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {v0, v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 234
    .line 235
    .line 236
    aget-byte v2, v4, v6

    .line 237
    .line 238
    and-int/lit16 v2, v2, 0xff

    .line 239
    .line 240
    invoke-virtual {v0, v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    .line 241
    .line 242
    .line 243
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 244
    .line 245
    if-ne v2, v5, :cond_13

    .line 246
    .line 247
    const/4 v2, 0x6

    .line 248
    invoke-virtual {v0, v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 254
    .line 255
    .line 256
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    if-nez v4, :cond_9

    .line 265
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v2, "Unknown source device info for <Device Vendor ID> "

    .line 269
    .line 270
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_9
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v4, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_3

    .line 301
    .line 302
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 303
    .line 304
    .line 305
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    aget-byte v4, v4, v10

    .line 310
    .line 311
    invoke-virtual {v0, v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_b

    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :cond_b
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    if-nez v5, :cond_c

    .line 324
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v2, "Unknown source device info for <Report Physical Address> "

    .line 328
    .line 329
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :cond_c
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-virtual {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v2, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    if-nez v2, :cond_e

    .line 381
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string v2, "No source device info for <Set Osd Name>."

    .line 385
    .line 386
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :cond_e
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 402
    .line 403
    const-string v6, "US-ASCII"

    .line 404
    .line 405
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    if-eqz v4, :cond_f

    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_f

    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v2, "Ignore incoming <Set Osd Name> having same osd name:"

    .line 427
    .line 428
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    goto/16 :goto_3

    .line 442
    .line 443
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v6, "Updating device OSD name from "

    .line 446
    .line 447
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v6, " to "

    .line 458
    .line 459
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v2, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 485
    .line 486
    .line 487
    goto :goto_3

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v4, "Invalid <Set Osd Name> request:"

    .line 492
    .line 493
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .line 505
    .line 506
    goto :goto_3

    .line 507
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 508
    .line 509
    .line 510
    array-length v5, v4

    .line 511
    if-ge v5, v10, :cond_11

    .line 512
    .line 513
    goto :goto_3

    .line 514
    :cond_11
    aget-byte v5, v4, v6

    .line 515
    .line 516
    and-int/lit16 v5, v5, 0xff

    .line 517
    .line 518
    aget-byte v4, v4, v9

    .line 519
    .line 520
    and-int/lit16 v4, v4, 0xff

    .line 521
    .line 522
    const/16 v9, 0x73

    .line 523
    .line 524
    if-ne v5, v9, :cond_13

    .line 525
    .line 526
    if-nez v4, :cond_12

    .line 527
    .line 528
    goto :goto_2

    .line 529
    :cond_12
    move v6, v10

    .line 530
    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    invoke-virtual {v4}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v4, v6}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-virtual {v4}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v5, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 566
    .line 567
    .line 568
    :cond_13
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 573
    .line 574
    if-nez v2, :cond_1a

    .line 575
    .line 576
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 577
    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    const/16 v2, 0xd

    .line 582
    .line 583
    if-eq v1, v8, :cond_18

    .line 584
    .line 585
    if-eq v1, v2, :cond_18

    .line 586
    .line 587
    const/16 v2, 0x70

    .line 588
    .line 589
    if-eq v1, v2, :cond_17

    .line 590
    .line 591
    const/16 v2, 0x80

    .line 592
    .line 593
    if-eq v1, v2, :cond_16

    .line 594
    .line 595
    const/16 v2, 0x82

    .line 596
    .line 597
    if-eq v1, v2, :cond_15

    .line 598
    .line 599
    const/16 v2, 0x86

    .line 600
    .line 601
    if-eq v1, v2, :cond_14

    .line 602
    .line 603
    goto :goto_5

    .line 604
    :cond_14
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-nez v0, :cond_19

    .line 609
    .line 610
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 611
    .line 612
    check-cast p0, Ljava/util/ArrayList;

    .line 613
    .line 614
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    goto :goto_4

    .line 618
    :cond_15
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_19

    .line 623
    .line 624
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 625
    .line 626
    check-cast p0, Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    goto :goto_4

    .line 632
    :cond_16
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-nez v0, :cond_19

    .line 637
    .line 638
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 639
    .line 640
    check-cast p0, Ljava/util/ArrayList;

    .line 641
    .line 642
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    goto :goto_4

    .line 646
    :cond_17
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-nez v0, :cond_19

    .line 651
    .line 652
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 653
    .line 654
    check-cast p0, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    goto :goto_4

    .line 660
    :cond_18
    invoke-virtual {p0, v8, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-nez v0, :cond_19

    .line 665
    .line 666
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-nez v0, :cond_19

    .line 671
    .line 672
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 673
    .line 674
    check-cast p0, Ljava/util/ArrayList;

    .line 675
    .line 676
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    :cond_19
    :goto_4
    return v3

    .line 680
    :cond_1a
    :goto_5
    return v0

    .line 681
    :cond_1b
    :goto_6
    return v3

    .line 682
    :cond_1c
    :goto_7
    return v1

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public initService()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 21
    .line 22
    :cond_0
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    new-instance v4, Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 27
    .line 28
    invoke-direct {v4, p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 29
    .line 30
    .line 31
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 32
    .line 33
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getInitialPowerStatus()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v4

    .line 45
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 46
    .line 47
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 48
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 49
    .line 50
    const-string/jumbo v5, "hdmi_cec_enabled"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 60
    .line 61
    const-string/jumbo v5, "enable_soundbar_mode"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string/jumbo v4, "hdmi_control"

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 75
    .line 76
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 77
    .line 78
    const-string/jumbo v5, "enable_earc_tx"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string/jumbo v4, "hdmi_control"

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 92
    .line 93
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 94
    .line 95
    const-string/jumbo v5, "transition_arc_to_earc_tx"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const-string/jumbo v4, "hdmi_control"

    .line 102
    .line 103
    .line 104
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 111
    .line 112
    const-string/jumbo v5, "enable_numeric_soundbar_volume_ui_on_tv"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v4, "hdmi_control"

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 126
    .line 127
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v5

    .line 130
    :try_start_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 131
    .line 132
    const-string/jumbo v6, "earc_enabled"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-ne v4, v3, :cond_2

    .line 140
    .line 141
    move v4, v3

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    move v4, v2

    .line 144
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_3

    .line 151
    .line 152
    iget-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 153
    .line 154
    iget-boolean v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 155
    .line 156
    and-int/2addr v4, v6

    .line 157
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto/16 :goto_a

    .line 162
    .line 163
    :cond_3
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    const-string/jumbo v5, "volume_control_enabled"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 176
    .line 177
    .line 178
    const-string/jumbo v4, "mhl_input_switching_enabled"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v4, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 186
    .line 187
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 188
    .line 189
    if-nez v4, :cond_4

    .line 190
    .line 191
    new-instance v4, Lcom/android/server/hdmi/CecMessageBuffer;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    new-instance v5, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object v5, v4, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 202
    .line 203
    iput-object p0, v4, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 204
    .line 205
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 206
    .line 207
    :cond_4
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 208
    .line 209
    if-nez v4, :cond_7

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    sget-object v5, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 216
    .line 217
    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;

    .line 218
    .line 219
    invoke-direct {v5}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {p0, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    if-eqz v5, :cond_5

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_5
    const-string v5, "Unable to use CEC and HDMI Connection AIDL HALs"

    .line 230
    .line 231
    new-array v6, v2, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;

    .line 237
    .line 238
    invoke-direct {v5}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-static {p0, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    if-eqz v5, :cond_6

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_6
    const-string v5, "Unable to use cec@1.1"

    .line 249
    .line 250
    new-array v6, v2, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    .line 256
    .line 257
    invoke-direct {v5}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-static {p0, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    :goto_2
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 265
    .line 266
    :cond_7
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 267
    .line 268
    if-nez v4, :cond_8

    .line 269
    .line 270
    const-string p0, "HdmiControlService"

    .line 271
    .line 272
    const-string v0, "Device does not support HDMI-CEC."

    .line 273
    .line 274
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_8
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 279
    .line 280
    if-nez v4, :cond_9

    .line 281
    .line 282
    new-instance v4, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 283
    .line 284
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 285
    .line 286
    .line 287
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 288
    .line 289
    :cond_9
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    const-string v4, "HdmiControlService"

    .line 295
    .line 296
    const-string v5, "Device does not support MHL-control."

    .line 297
    .line 298
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 302
    .line 303
    if-nez v4, :cond_b

    .line 304
    .line 305
    new-instance v4, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;

    .line 306
    .line 307
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 308
    .line 309
    .line 310
    new-instance v5, Lcom/android/server/hdmi/HdmiEarcController;

    .line 311
    .line 312
    invoke-direct {v5, p0, v4}, Lcom/android/server/hdmi/HdmiEarcController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_a

    .line 320
    .line 321
    new-instance v6, Landroid/os/Handler;

    .line 322
    .line 323
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 324
    .line 325
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    .line 331
    .line 332
    iput-object v6, v5, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 333
    .line 334
    new-instance v6, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 335
    .line 336
    invoke-direct {v6, v5}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;-><init>(Lcom/android/server/hdmi/HdmiEarcController;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v6}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V

    .line 340
    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_a
    new-array v4, v2, [Ljava/lang/Object;

    .line 344
    .line 345
    const-string v5, "Could not connect to eARC AIDL HAL."

    .line 346
    .line 347
    invoke-static {v5, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    :goto_3
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 352
    .line 353
    :cond_b
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 354
    .line 355
    if-nez v4, :cond_c

    .line 356
    .line 357
    const-string v4, "HdmiControlService"

    .line 358
    .line 359
    const-string v5, "Device does not support eARC."

    .line 360
    .line 361
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    :cond_c
    new-instance v4, Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 365
    .line 366
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 367
    .line 368
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 369
    .line 370
    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/hdmi/HdmiCecNetwork;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V

    .line 371
    .line 372
    .line 373
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_d

    .line 380
    .line 381
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_d
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 386
    .line 387
    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 388
    .line 389
    .line 390
    :goto_4
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 391
    .line 392
    monitor-enter v4

    .line 393
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 398
    .line 399
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 400
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 401
    .line 402
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 410
    .line 411
    monitor-enter v5

    .line 412
    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 413
    .line 414
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    :cond_e
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_10

    .line 423
    .line 424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 429
    .line 430
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    if-eqz v7, :cond_f

    .line 435
    .line 436
    iget-boolean v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 437
    .line 438
    if-eqz v8, :cond_f

    .line 439
    .line 440
    const-string v4, "HdmiControlService"

    .line 441
    .line 442
    const-string v6, "HDMI eARC supported on more than 1 port."

    .line 443
    .line 444
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 448
    .line 449
    const/4 v4, -0x1

    .line 450
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :catchall_1
    move-exception p0

    .line 454
    goto/16 :goto_9

    .line 455
    .line 456
    :cond_f
    if-eqz v7, :cond_e

    .line 457
    .line 458
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    iput v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 463
    .line 464
    iput-boolean v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 465
    .line 466
    goto :goto_5

    .line 467
    :cond_10
    :goto_6
    iget-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 468
    .line 469
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 470
    .line 471
    if-eqz v6, :cond_11

    .line 472
    .line 473
    move v6, v3

    .line 474
    goto :goto_7

    .line 475
    :cond_11
    move v6, v2

    .line 476
    :goto_7
    and-int/2addr v4, v6

    .line 477
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 478
    .line 479
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-eqz v4, :cond_13

    .line 485
    .line 486
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    if-eqz v4, :cond_12

    .line 491
    .line 492
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    .line 493
    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_12
    invoke-virtual {p0, v2, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 497
    .line 498
    .line 499
    :cond_13
    :goto_8
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 500
    .line 501
    const-string/jumbo v5, "hdmi_cec_enabled"

    .line 502
    .line 503
    .line 504
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 505
    .line 506
    invoke-direct {v6, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 507
    .line 508
    .line 509
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 510
    .line 511
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 512
    .line 513
    .line 514
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 515
    .line 516
    const-string/jumbo v5, "hdmi_cec_version"

    .line 517
    .line 518
    .line 519
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 520
    .line 521
    const/16 v7, 0x8

    .line 522
    .line 523
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 524
    .line 525
    .line 526
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 527
    .line 528
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 529
    .line 530
    .line 531
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 532
    .line 533
    const-string/jumbo v5, "routing_control"

    .line 534
    .line 535
    .line 536
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 537
    .line 538
    const/16 v7, 0x9

    .line 539
    .line 540
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 541
    .line 542
    .line 543
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 544
    .line 545
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 546
    .line 547
    .line 548
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 549
    .line 550
    const-string/jumbo v5, "system_audio_control"

    .line 551
    .line 552
    .line 553
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 554
    .line 555
    const/16 v7, 0xa

    .line 556
    .line 557
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 558
    .line 559
    .line 560
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 561
    .line 562
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 563
    .line 564
    .line 565
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 566
    .line 567
    const-string/jumbo v5, "volume_control_enabled"

    .line 568
    .line 569
    .line 570
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 571
    .line 572
    const/16 v7, 0xb

    .line 573
    .line 574
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 575
    .line 576
    .line 577
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 578
    .line 579
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 580
    .line 581
    .line 582
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 583
    .line 584
    const-string/jumbo v5, "tv_wake_on_one_touch_play"

    .line 585
    .line 586
    .line 587
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 588
    .line 589
    const/16 v7, 0xc

    .line 590
    .line 591
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 592
    .line 593
    .line 594
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 595
    .line 596
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 597
    .line 598
    .line 599
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 600
    .line 601
    const-string/jumbo v5, "rc_profile_tv"

    .line 602
    .line 603
    .line 604
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 605
    .line 606
    const/16 v7, 0xd

    .line 607
    .line 608
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 609
    .line 610
    .line 611
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 612
    .line 613
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 614
    .line 615
    .line 616
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 617
    .line 618
    const-string/jumbo v5, "rc_profile_source_handles_root_menu"

    .line 619
    .line 620
    .line 621
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 622
    .line 623
    const/16 v7, 0xe

    .line 624
    .line 625
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 626
    .line 627
    .line 628
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 629
    .line 630
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 631
    .line 632
    .line 633
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 634
    .line 635
    const-string/jumbo v5, "rc_profile_source_handles_setup_menu"

    .line 636
    .line 637
    .line 638
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 639
    .line 640
    invoke-direct {v6, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 641
    .line 642
    .line 643
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 644
    .line 645
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 646
    .line 647
    .line 648
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 649
    .line 650
    const-string/jumbo v5, "rc_profile_source_handles_contents_menu"

    .line 651
    .line 652
    .line 653
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 654
    .line 655
    invoke-direct {v6, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 656
    .line 657
    .line 658
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 659
    .line 660
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 661
    .line 662
    .line 663
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 664
    .line 665
    const-string/jumbo v5, "rc_profile_source_handles_top_menu"

    .line 666
    .line 667
    .line 668
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 669
    .line 670
    invoke-direct {v6, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 671
    .line 672
    .line 673
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 674
    .line 675
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 676
    .line 677
    .line 678
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 679
    .line 680
    const-string/jumbo v5, "rc_profile_source_handles_media_context_sensitive_menu"

    .line 681
    .line 682
    .line 683
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 684
    .line 685
    const/4 v7, 0x4

    .line 686
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 687
    .line 688
    .line 689
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 690
    .line 691
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 695
    .line 696
    .line 697
    move-result v4

    .line 698
    if-eqz v4, :cond_14

    .line 699
    .line 700
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 701
    .line 702
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 711
    .line 712
    invoke-direct {v6, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    const-string/jumbo v2, "hdmi_control"

    .line 719
    .line 720
    .line 721
    invoke-static {v2, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 722
    .line 723
    .line 724
    :cond_14
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 725
    .line 726
    const-string/jumbo v4, "earc_enabled"

    .line 727
    .line 728
    .line 729
    new-instance v5, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 730
    .line 731
    const/4 v6, 0x5

    .line 732
    invoke-direct {v5, p0, v6}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 733
    .line 734
    .line 735
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 736
    .line 737
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 738
    .line 739
    .line 740
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 741
    .line 742
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    new-instance v5, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 751
    .line 752
    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    const-string/jumbo v2, "hdmi_control"

    .line 759
    .line 760
    .line 761
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 762
    .line 763
    .line 764
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 765
    .line 766
    const-string/jumbo v3, "soundbar_mode"

    .line 767
    .line 768
    .line 769
    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 770
    .line 771
    const/4 v5, 0x6

    .line 772
    invoke-direct {v4, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 773
    .line 774
    .line 775
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 776
    .line 777
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 778
    .line 779
    .line 780
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 781
    .line 782
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 791
    .line 792
    invoke-direct {v4, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    const-string/jumbo v1, "hdmi_control"

    .line 799
    .line 800
    .line 801
    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 802
    .line 803
    .line 804
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 805
    .line 806
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 815
    .line 816
    invoke-direct {v3, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    const-string/jumbo p0, "hdmi_control"

    .line 823
    .line 824
    .line 825
    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :goto_9
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 830
    throw p0

    .line 831
    :catchall_2
    move-exception p0

    .line 832
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 833
    throw p0

    .line 834
    :goto_a
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 835
    throw p0

    .line 836
    :catchall_3
    move-exception p0

    .line 837
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 838
    throw p0
.end method

.method public final initializeCec(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "hdmi_cec_version"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x5

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecController;->isLanguage(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public initializeCecLocalDevices(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecLocalDeviceTypes()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 55
    .line 56
    iget-object v2, v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 v2, 0x0

    .line 72
    iput-object v2, v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final initializeEarc(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "eARC initialized, reason = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "HdmiControlService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarcLocalDevice(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1, v1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public initializeEarcLocalDevice(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    const/4 v1, 0x1

    .line 18
    :try_start_0
    iput v1, p1, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;-><init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_0
    :goto_0
    return-void
.end method

.method public final invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3

    .line 1
    const-string v0, "Exception thrown by IHdmiInputChangeListener: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_2
    const-string p1, "HdmiControlService"

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final invokeVendorCommandListenersOnControlStateChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :try_start_1
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 35
    .line 36
    invoke-interface {v1, p2, p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    :try_start_2
    const-string v2, "HdmiControlService"

    .line 42
    .line 43
    const-string v3, "Failed to notify control-state-changed to vendor handler"

    .line 44
    .line 45
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p0
.end method

.method public final invokeVendorCommandListenersOnReceived(II[BZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    move v1, v2

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    aget-byte v5, p3, v2

    .line 40
    .line 41
    and-int/lit16 v5, v5, 0xff

    .line 42
    .line 43
    shl-int/lit8 v5, v5, 0x10

    .line 44
    .line 45
    aget-byte v6, p3, v4

    .line 46
    .line 47
    and-int/lit16 v6, v6, 0xff

    .line 48
    .line 49
    shl-int/lit8 v6, v6, 0x8

    .line 50
    .line 51
    add-int/2addr v5, v6

    .line 52
    const/4 v6, 0x2

    .line 53
    aget-byte v6, p3, v6

    .line 54
    .line 55
    and-int/lit16 v6, v6, 0xff

    .line 56
    .line 57
    add-int/2addr v5, v6

    .line 58
    iget v6, v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mVendorId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    if-eq v6, v5, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :try_start_1
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 64
    .line 65
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    move v1, v4

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v3

    .line 71
    :try_start_2
    const-string v4, "HdmiControlService"

    .line 72
    .line 73
    const-string v5, "Failed to notify vendor command reception"

    .line 74
    .line 75
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    monitor-exit v0

    .line 80
    return v1

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p0
.end method

.method public final isAbsoluteVolumeBehaviorEnabled()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

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
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 34
    .line 35
    sget-object v3, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    return v1
.end method

.method public isArcSupported()Z
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
    return p0
.end method

.method public final isAudioSystemDevice()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isCecControlEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final isEarcEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

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

.method public isEarcSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

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

.method public final isPlaybackDevice()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isPowerOnOrTransient()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 p0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_1
    return p0
.end method

.method public final isPowerStandbyOrTransient()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x3

    .line 13
    if-ne p0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final isProhibitMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

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

.method public final isSystemAudioActivated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

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

.method public final isTvDevice()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isTvDeviceEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->preprocessBufferedMessages(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iput v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v4

    .line 80
    :try_start_0
    iput-object v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 81
    .line 82
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/4 v4, 0x6

    .line 90
    if-lt v3, v4, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 118
    .line 119
    .line 120
    iput-object p0, p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 121
    .line 122
    :cond_3
    return-void

    .line 123
    :cond_4
    :goto_1
    const-string p0, "HdmiControlService"

    .line 124
    .line 125
    const-string p1, "No local device to notify."

    .line 126
    .line 127
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final notifyAvbMuteChange(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 9
    .line 10
    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 11
    .line 12
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const/16 p1, -0x64

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 p1, 0x64

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const/16 v0, 0x2001

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/16 v0, 0x2000

    .line 63
    .line 64
    :goto_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 65
    .line 66
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    .line 71
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method

.method public final notifyEarcStatusToAudioService(Ljava/util/List;Z)V
    .locals 8

    .line 1
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    .line 2
    .line 3
    new-instance v5, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    const-string v4, ""

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/16 v2, 0x1d

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    move-object v6, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 31
    .line 32
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    .line 36
    invoke-virtual {p0, v7, p2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v0, "tv_input"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/media/tv/TvInputManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 33
    .line 34
    new-instance p1, Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Lcom/android/server/hdmi/PowerManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 44
    .line 45
    new-instance p1, Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 57
    .line 58
    iput-object v0, p1, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 63
    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    new-instance p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 78
    .line 79
    check-cast p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    .line 83
    const/4 v0, 0x3

    .line 84
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 91
    .line 92
    if-nez p1, :cond_1

    .line 93
    .line 94
    new-instance p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p1, v0}, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 104
    .line 105
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 106
    .line 107
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 110
    .line 111
    .line 112
    check-cast p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 117
    .line 118
    invoke-virtual {p1, p0, v0}, Landroid/media/AudioDeviceVolumeManager;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const/16 v0, 0x3e8

    .line 123
    .line 124
    if-ne p1, v0, :cond_3

    .line 125
    .line 126
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_0
    return-void
.end method

.method public onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public onPendingActionsCleared(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HdmiControlService"

    .line 5
    .line 6
    const-string/jumbo v1, "onPendingActionsCleared"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v2, v1, [I

    .line 24
    .line 25
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$27;

    .line 26
    .line 27
    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService$27;-><init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 31
    .line 32
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    if-ne v2, v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 65
    .line 66
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 72
    .line 73
    return-void
.end method

.method public onStandby(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 10
    .line 11
    const-string/jumbo v3, "tv_send_standby_on_sleep"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 29
    .line 30
    const-string/jumbo v3, "power_control_mode"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v3, "none"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    xor-int/2addr v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v0, v2

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->acquireWakeLock()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 70
    .line 71
    const/4 v3, 0x3

    .line 72
    invoke-virtual {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(IZ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 93
    .line 94
    invoke-virtual {v2, v1, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 95
    .line 96
    .line 97
    check-cast v0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 114
    .line 115
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    return-void

    .line 123
    :cond_4
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$27;

    .line 124
    .line 125
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$27;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final onStart()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initService()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "hdmi_control"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string/jumbo v1, "mhl_input_switching_enabled"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v2, "mhl_power_charge_enabled"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v3, "device_name"

    .line 68
    .line 69
    .line 70
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x0

    .line 75
    move v3, v2

    .line 76
    :goto_0
    const/4 v4, 0x3

    .line 77
    if-ge v3, v4, :cond_0

    .line 78
    .line 79
    aget-object v4, v1, v3

    .line 80
    .line 81
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 86
    .line 87
    const/4 v6, -0x1

    .line 88
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public onWakeUp(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 12
    .line 13
    const-string v3, " not defined."

    .line 14
    .line 15
    const-string/jumbo v4, "wakeUpAction "

    .line 16
    .line 17
    .line 18
    const-string v5, "HdmiControlService"

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    if-eq p1, v6, :cond_0

    .line 32
    .line 33
    invoke-static {p1, v4, v3, v5}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    move v0, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v0, v1

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const-string v0, "Device does not support HDMI-CEC."

    .line 51
    .line 52
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    if-eq p1, v6, :cond_5

    .line 70
    .line 71
    invoke-static {p1, v4, v3, v5}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    move v1, v6

    .line 76
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_7
    invoke-virtual {p0, v2, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 81
    .line 82
    .line 83
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_a

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 93
    .line 94
    if-eqz p1, :cond_9

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter p1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 100
    .line 101
    iget v0, v0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 102
    .line 103
    monitor-exit p1

    .line 104
    goto :goto_3

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_9
    const/4 v0, -0x1

    .line 109
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v0, v6, v1, p0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_c

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 143
    .line 144
    const-string/jumbo v1, "soundbar_mode"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-ne p0, v6, :cond_b

    .line 152
    .line 153
    move v2, v6

    .line 154
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const/16 p0, 0x2d4

    .line 158
    .line 159
    invoke-static {p0, v0, v2, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    .line 160
    .line 161
    .line 162
    :cond_c
    :goto_4
    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 5
    .line 6
    const-string v1, "HdmiControlService"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 11
    .line 12
    const-string p0, "Local device is under address allocation. Save OTP callback for later process."

    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string p0, "Local source device not available"

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x2

    .line 36
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public pauseActiveMediaSessions()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/media/session/MediaSessionManager;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/media/session/MediaController;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 9
    .line 10
    return-object p0
.end method

.method public final portIdToPath(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const-string p0, "Cannot find the port info: "

    .line 17
    .line 18
    const-string v0, "HdmiCecNetwork"

    .line 19
    .line 20
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const p0, 0xffff

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    :goto_0
    return p0
.end method

.method public final queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 5
    .line 6
    const-string v1, "HdmiControlService"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 11
    .line 12
    const-string p0, "Local device is under address allocation. Queue display callback for later process."

    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    const/4 p0, -0x1

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-string v0, "Local source device not available"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 41
    .line 42
    .line 43
    const-class v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string v3, "HdmiCecLocalDeviceSource"

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    const-string/jumbo p0, "queryDisplayStatus already in progress"

    .line 58
    .line 59
    .line 60
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 71
    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    if-nez p1, :cond_4

    .line 79
    .line 80
    const-string v1, "DevicePowerStatusAction"

    .line 81
    .line 82
    const-string v2, "Wrong arguments"

    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    new-instance v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    .line 90
    .line 91
    invoke-direct {v1, v0, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    if-nez v1, :cond_5

    .line 95
    .line 96
    const-string v1, "Cannot initiate queryDisplayStatus"

    .line 97
    .line 98
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

.method public readBooleanSetting(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, 0x1

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public readBooleanSystemProperty(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public readDeviceTypes()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecDeviceTypes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "HdmiControlService"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Error parsing ro.hdmi.cec_device_types: "

    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "ro.hdmi.cec_device_types"

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/util/List;

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceTypes()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "Error parsing ro.hdmi.device_type: "

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "ro.hdmi.device_type"

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/util/List;

    .line 133
    .line 134
    return-object p0
.end method

.method public readIntSetting(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const-string v0, "HdmiControlService"

    .line 22
    .line 23
    const-string v1, "Exception when releasing wake lock."

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 9
    .line 10
    const-string v1, "android.permission.HDMI_CEC"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$22;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$22;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$7;

    .line 26
    .line 27
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 37
    .line 38
    invoke-direct {p2, v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Invalid message type:"

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-array p1, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    const/4 p0, 0x3

    .line 67
    invoke-interface {p2, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public final setActiveSource(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 5
    .line 6
    iput p1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 7
    .line 8
    iput p2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1, p2}, Lcom/android/server/hdmi/HdmiUtils;->pathRelationship(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x135

    .line 29
    .line 30
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ne p1, v2, :cond_1

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-ne p2, v2, :cond_1

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    :goto_1
    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 77
    .line 78
    invoke-direct {v3, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;

    .line 82
    .line 83
    invoke-direct {v4, v3, v2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_0

    .line 93
    .line 94
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    const/4 p2, 0x1

    .line 108
    invoke-direct {p1, p0, p2}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p0
.end method

.method public final setAndBroadcastActiveSource(IIILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "android.hardware.hdmi.action.ON_ACTIVE_SOURCE_RECOVERED_DISMISS_UI"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 v0, 0x5

    .line 47
    if-ne p2, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p2, p0, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public final setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final setAudioStatus(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 35
    .line 36
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 51
    .line 52
    .line 53
    :cond_1
    if-ltz p1, :cond_2

    .line 54
    .line 55
    const/16 v0, 0x64

    .line 56
    .line 57
    if-gt p1, v0, :cond_2

    .line 58
    .line 59
    const-string/jumbo v0, "volume: "

    .line 60
    .line 61
    .line 62
    const-string v2, "HdmiControlService"

    .line 63
    .line 64
    invoke-static {p1, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    .line 69
    const/16 v0, 0x101

    .line 70
    .line 71
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public setCecController(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 2
    .line 3
    return-void
.end method

.method public setCecMessageBuffer(Lcom/android/server/hdmi/CecMessageBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 2
    .line 3
    return-void
.end method

.method public setDeviceConfig(Lcom/android/server/hdmi/DeviceConfigWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public setEarcController(Lcom/android/server/hdmi/HdmiEarcController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 2
    .line 3
    return-void
.end method

.method public setEarcEnabled(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p0, "HdmiControlService"

    .line 21
    .line 22
    const-string p1, "Enabled/disabled eARC setting, but the hardware doesn\u00b4t support eARC. This settings change doesn\u00b4t have an effect."

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x6

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$30;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$30;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0
.end method

.method public setEarcEnabledInHal(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$35;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$35;-><init>(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p2, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    .line 34
    .line 35
    invoke-interface {p2, p1}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;->nativeSetEarcEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string/jumbo v1, "setHpdSignalType: portId %b, signal %b"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 64
    .line 65
    invoke-interface {p2, p1, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetHpdSignalType(II)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string p1, "Should run on service thread."

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public setEarcSupported(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

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

.method public setHdmiCecConfig(Lcom/android/server/hdmi/HdmiCecConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setHdmiCecNetwork(Lcom/android/server/hdmi/HdmiCecNetwork;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 2
    .line 3
    return-void
.end method

.method public setHdmiCecVolumeControlEnabledInternal(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public setHdmiMhlController(Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 2
    .line 3
    return-void
.end method

.method public setIoLooper(Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 2
    .line 3
    return-void
.end method

.method public setPowerManager(Lcom/android/server/hdmi/PowerManagerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public setPowerManagerInternal(Lcom/android/server/hdmi/PowerManagerInternalWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public setPowerStatus(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setSoundbarMode(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ne p1, v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v5, v4

    .line 23
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x2d4

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-static {v3, v0, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    .line 30
    .line 31
    .line 32
    const-string v3, "HdmiControlService"

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const-string p0, "Device type not compatible to change soundbar mode."

    .line 37
    .line 38
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string p0, "Device type doesn\'t support ARC."

    .line 45
    .line 46
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    if-nez p1, :cond_5

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode(Lcom/android/server/hdmi/HdmiControlService$27;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    if-eqz p1, :cond_6

    .line 69
    .line 70
    const-class v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 82
    .line 83
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$20;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$20;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move p1, v4

    .line 96
    :cond_6
    :goto_1
    if-nez p1, :cond_7

    .line 97
    .line 98
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 99
    .line 100
    const/4 p1, 0x5

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    .line 102
    .line 103
    .line 104
    :cond_7
    return-void
.end method

.method public final setSystemAudioActivated(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p0
.end method

.method public shouldHandleTvPowerKey()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v2, "power_control_mode"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v2, "none"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v2, "hdmi_cec_enabled"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eq v0, v2, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 46
    .line 47
    return p0
.end method

.method public final standby()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x6

    .line 8
    invoke-static {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final switchToFullVolumeBehavior()V
    .locals 4

    .line 1
    const-string v0, "HdmiControlService"

    .line 2
    .line 3
    const-string v1, "Switching to full volume behavior"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 62
    .line 63
    sget-object v2, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 80
    .line 81
    check-cast v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    iget-object v2, v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    .line 86
    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    return-void
.end method

.method public toggleAndFollowTvPower()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string p0, "HdmiControlService"

    .line 17
    .line 18
    const-string v0, "Local source device not available"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->pauseActiveMediaSessions()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 44
    .line 45
    .line 46
    :goto_0
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 9
    .line 10
    return-object p0
.end method

.method public final verifyPhysicalAddress(I[B)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    array-length v0, p2

    .line 10
    add-int/lit8 v2, p1, 0x2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ge v0, v2, :cond_1

    .line 14
    .line 15
    return v3

    .line 16
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const p2, 0xffff

    .line 21
    .line 22
    .line 23
    if-eq p1, p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ne p1, p2, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 p1, -0x1

    .line 41
    if-ne p0, p1, :cond_3

    .line 42
    .line 43
    return v3

    .line 44
    :cond_3
    return v1
.end method

.method public final verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 2
    .line 3
    const/16 v1, 0x70

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 8
    .line 9
    if-eq p1, v1, :cond_4

    .line 10
    .line 11
    const/16 v1, 0x84

    .line 12
    .line 13
    if-eq p1, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x86

    .line 16
    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x9d

    .line 20
    .line 21
    if-eq p1, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xa1

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0xa2

    .line 29
    .line 30
    if-eq p1, v1, :cond_1

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :pswitch_0
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v2, v3

    .line 50
    :goto_0
    return v2

    .line 51
    :cond_1
    const/4 p1, 0x7

    .line 52
    aget-byte p1, v0, p1

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    if-ne p1, v1, :cond_2

    .line 56
    .line 57
    array-length p1, v0

    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    sub-int/2addr p1, v1

    .line 61
    if-lt p1, v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :cond_2
    return v2

    .line 68
    :cond_3
    :pswitch_1
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_4
    array-length p1, v0

    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move v2, v3

    .line 84
    :cond_6
    :goto_1
    return v2

    .line 85
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final wakeUp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    const-string v3, "android.server.hdmi:WAKE"

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
