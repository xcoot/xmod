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

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 37
    move-result p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 p0, 0xf

    .line 41
    :goto_0
    return p0
.end method

.method public static -$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

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

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result p0

    .line 8
    invoke-static {p0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    .line 11
    return-void
.end method

.method public static -$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ge v0, v1, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 39
    move-result-object p0

    .line 40
    :goto_0
    if-eqz p0, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Locale;

    .line 3
    const-string/jumbo v1, "zh"

    .line 6
    const-string v2, "HK"

    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 13
    new-instance v0, Ljava/util/Locale;

    .line 15
    const-string v2, "MO"

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const-string/jumbo v1, "sqi"

    .line 30
    const-string v2, "alb"

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "hye"

    .line 38
    const-string v2, "arm"

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v1, "eus"

    .line 46
    const-string v2, "baq"

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "mya"

    .line 54
    const-string/jumbo v2, "bur"

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v1, "ces"

    .line 63
    const-string/jumbo v2, "cze"

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "nld"

    .line 72
    const-string/jumbo v2, "dut"

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "kat"

    .line 81
    const-string/jumbo v2, "geo"

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "deu"

    .line 90
    const-string/jumbo v2, "ger"

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "ell"

    .line 99
    const-string/jumbo v2, "gre"

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "fra"

    .line 108
    const-string/jumbo v2, "fre"

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "isl"

    .line 117
    const-string/jumbo v2, "ice"

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v1, "mkd"

    .line 126
    const-string/jumbo v2, "mac"

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v1, "mri"

    .line 135
    const-string/jumbo v2, "mao"

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "msa"

    .line 144
    const-string/jumbo v2, "may"

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v1, "fas"

    .line 153
    const-string/jumbo v2, "per"

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "ron"

    .line 162
    const-string/jumbo v2, "rum"

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v1, "slk"

    .line 171
    const-string/jumbo v2, "slo"

    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "bod"

    .line 180
    const-string/jumbo v2, "tib"

    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v1, "cym"

    .line 189
    const-string/jumbo v2, "wel"

    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    .line 201
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 203
    const/4 v1, 0x2

    .line 204
    const/16 v2, 0x9

    .line 206
    const-string v3, ""

    .line 208
    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 211
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

    .line 213
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 215
    const/16 v4, 0xa

    .line 217
    invoke-direct {v2, v1, v4, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 220
    sput-object v2, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

    .line 222
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    .line 224
    const/16 v5, 0x1d

    .line 226
    invoke-direct {v4, v1, v5, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 229
    invoke-static {v0, v2, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 232
    move-result-object v1

    .line 233
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 235
    invoke-static {v2, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 238
    move-result-object v1

    .line 239
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 241
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 244
    move-result-object v0

    .line 245
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 247
    const/4 v0, 0x3

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object v1

    .line 252
    const/4 v2, 0x5

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v3

    .line 257
    invoke-static {v1, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 260
    move-result-object v1

    .line 261
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 263
    const/4 v1, 0x1

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    move-result-object v1

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v3

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    move-result-object v2

    .line 276
    invoke-static {v1, v3, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 279
    move-result-object v1

    .line 280
    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 282
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 284
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 287
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

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

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "Invoking callback failed:"

    .line 11
    const-string v0, "HdmiControlService"

    .line 13
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 16
    :goto_0
    return-void
.end method

.method public static invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 17
    :try_start_0
    invoke-interface {v0, p0, p2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->onStatusChange(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, "Failed to report HdmiControlStatusChange: "

    .line 24
    const-string v2, " isAvailable: "

    .line 26
    invoke-static {p0, v1, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "HdmiControlService"

    .line 32
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 9
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 17
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    .line 32
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/String;

    .line 44
    :cond_1
    return-object p0

    .line 45
    :cond_2
    :goto_0
    const-string/jumbo p0, "chi"

    .line 48
    return-object p0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->releaseWakeLock()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 6
    new-instance v1, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "HdmiControlService"

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 20
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 22
    const-wide/16 v1, 0x1388

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 27
    return-void
.end method

.method public addEarcLocalDevice(Lcom/android/server/hdmi/HdmiEarcLocalDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 6
    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$24;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$23;

    .line 25
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$23;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

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

    .line 37
    const-string p1, "Listener already died"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter p1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 29
    const-string p1, "Listener already died"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 12
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v9, v0, [I

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    iput-boolean v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 29
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v10

    .line 38
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    move-object v2, v0

    .line 49
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 51
    iget-object v11, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 53
    iget v12, v2, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 55
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    .line 58
    move-result v13

    .line 59
    new-instance v14, Lcom/android/server/hdmi/HdmiControlService$21;

    .line 61
    move-object v0, v14

    .line 62
    move-object v1, p0

    .line 63
    move-object v3, v8

    .line 64
    move-object/from16 v4, p1

    .line 66
    move-object v5, v9

    .line 67
    move/from16 v6, p2

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$21;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 72
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 75
    iget-object v0, v11, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 77
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$3;

    .line 79
    invoke-direct {v1, v11, v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiControlService$21;)V

    .line 82
    iget-wide v2, v11, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 36
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 47
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$26;

    .line 49
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$26;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 65
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 67
    invoke-static {p1, v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 22
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "Invoking callback failed:"

    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const-string v2, "HdmiControlService"

    .line 45
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object p0

    .line 11
    if-ne v0, p0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "Should run on service thread."

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public final audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 10
    return-object p0
.end method

.method public final canGoToStandby()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

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

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_11

    .line 55
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_11

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 64
    move-result-object v0

    .line 65
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 72
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 74
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 92
    move-result v2

    .line 93
    sget-object v3, Lcom/android/server/hdmi/HdmiControlService;->FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v3

    .line 103
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x1

    .line 108
    if-ne v4, v5, :cond_10

    .line 110
    if-nez v3, :cond_4

    .line 112
    goto/16 :goto_3

    .line 114
    :cond_4
    if-nez v1, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 119
    return-void

    .line 120
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    .line 127
    move-result v3

    .line 128
    const-class v4, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 130
    const/4 v6, 0x3

    .line 131
    if-eqz v3, :cond_c

    .line 133
    if-eq v3, v5, :cond_a

    .line 135
    const/4 v4, 0x2

    .line 136
    if-eq v3, v4, :cond_6

    .line 138
    goto :goto_0

    .line 139
    :cond_6
    if-ne v2, v6, :cond_7

    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 144
    :cond_7
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 147
    move-result p0

    .line 148
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 151
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 153
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 156
    move-result v2

    .line 157
    const/4 v3, 0x6

    .line 158
    if-lt v2, v3, :cond_8

    .line 160
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 167
    move-result v2

    .line 168
    const/16 v3, 0xa5

    .line 170
    invoke-static {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 173
    move-result-object v2

    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 178
    :cond_8
    const-class v1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 183
    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 187
    move-result-object v1

    .line 188
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;

    .line 190
    const/4 v3, 0x0

    .line 191
    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;-><init>(II)V

    .line 194
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_9

    .line 200
    new-instance v1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 202
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;

    .line 204
    invoke-direct {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 207
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiCecLocalDevice$3;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 213
    :cond_9
    :goto_0
    return-void

    .line 214
    :cond_a
    if-eq v2, v6, :cond_b

    .line 216
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 219
    move-result p0

    .line 220
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 223
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 226
    new-instance v1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 228
    invoke-direct {v1, v0, p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 234
    :cond_b
    return-void

    .line 235
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_e

    .line 241
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 243
    if-eqz v3, :cond_e

    .line 245
    const/4 v3, 0x5

    .line 246
    if-eq v2, v3, :cond_f

    .line 248
    if-ne v2, v6, :cond_d

    .line 250
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 253
    move-result-object v2

    .line 254
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 257
    move-result-object v2

    .line 258
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_d

    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 270
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 272
    check-cast v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 274
    iget-object v6, v6, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 276
    invoke-virtual {v6, v3, v5}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 279
    goto :goto_1

    .line 280
    :cond_d
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 283
    move-result p0

    .line 284
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 287
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 290
    new-instance v1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 292
    invoke-direct {v1, v0, p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 298
    goto :goto_2

    .line 299
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 302
    :cond_f
    :goto_2
    return-void

    .line 303
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 306
    :cond_11
    return-void
.end method

.method public clearCecLocalDevices()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 12
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 14
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    .line 17
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 27
    return-void
.end method

.method public clearEarcLocalDevice()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 7
    return-void
.end method

.method public disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 29
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 31
    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    return-void
.end method

.method public dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    const/16 v1, 0xf

    .line 22
    const/4 v2, -0x2

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 34
    move-result v0

    .line 35
    if-eq v0, v2, :cond_0

    .line 37
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 39
    if-eq v2, v1, :cond_0

    .line 41
    return v0

    .line 42
    :cond_1
    iget p0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 44
    if-ne p0, v1, :cond_2

    .line 46
    const/4 p0, -0x1

    .line 47
    return p0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "Unhandled cec command:"

    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    const/4 p1, 0x0

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 65
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return v2
.end method

.method public final earcBlocksArcConnection()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 12
    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p0, v2, :cond_1

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

    .line 3
    if-nez v0, :cond_0

    .line 5
    if-eqz p2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 20
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 22
    invoke-interface {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(IZ)V

    .line 25
    return-void
.end method

.method public final enforceAccessPermission()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.HDMI_CEC"

    .line 7
    const-string v1, "HdmiControlService"

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public getAbsoluteVolumeChangedListener()Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 3
    return-object p0
.end method

.method public final getAllCecLocalDevices()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 3
    return-object p0
.end method

.method public final getAvbCapableAudioOutputDevices()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 16
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public getCecDeviceTypes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Landroid/sysprop/HdmiProperties;->cec_device_types()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getCecLocalDeviceTypes()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 10
    const-string/jumbo v2, "soundbar_mode"

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_0

    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 39
    if-eqz p0, :cond_0

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    return-object v0
.end method

.method public getCecVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 3
    return p0
.end method

.method public getDeviceTypes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Landroid/sysprop/HdmiProperties;->device_type()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

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

    .line 42
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 44
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public getEarcLocalDevice()Lcom/android/server/hdmi/HdmiEarcLocalDevice;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 6
    return-object p0
.end method

.method public getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 3
    return-object p0
.end method

.method public final getHdmiCecVolumeControl()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

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

    .line 3
    return-object p0
.end method

.method public final getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

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

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 8
    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId()I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_1c

    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v0, v2, :cond_1c

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 18
    goto/16 :goto_7

    .line 20
    :cond_0
    const/4 v3, -0x1

    .line 21
    if-nez v0, :cond_1b

    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 37
    const/16 v5, 0xf

    .line 39
    const/4 v6, 0x0

    .line 40
    iget v7, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 42
    if-eqz v4, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 50
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 57
    move-result v4

    .line 58
    if-ne v7, v4, :cond_1

    .line 60
    if-eq v7, v5, :cond_1

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "Unexpected source: message sent from device itself, "

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    new-array p1, v6, [Ljava/lang/Object;

    .line 78
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    goto/16 :goto_6

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 85
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 88
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

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

    .line 97
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 104
    move-result-object v4

    .line 105
    invoke-static {v7}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_3

    .line 111
    sget-object v11, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 113
    aget-object v11, v11, v7

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const-string v11, ""

    .line 118
    :goto_0
    invoke-virtual {v4, v11}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 121
    move-result-object v4

    .line 122
    packed-switch v7, :pswitch_data_0

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

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 145
    :cond_4
    instance-of v1, p1, Lcom/android/server/hdmi/ReportFeaturesMessage;

    .line 147
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 149
    if-eqz v1, :cond_5

    .line 151
    move-object v1, p1

    .line 152
    check-cast v1, Lcom/android/server/hdmi/ReportFeaturesMessage;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 157
    iget v4, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 159
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 166
    move-result-object v4

    .line 167
    iget v11, v1, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    .line 169
    invoke-virtual {v4, v11}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 172
    move-result-object v4

    .line 173
    iget-object v1, v1, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 175
    invoke-virtual {v4, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 186
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 189
    :cond_5
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 191
    iget-object v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 193
    if-eqz v1, :cond_10

    .line 195
    const/16 v2, 0x47

    .line 197
    const-string v9, "HdmiCecNetwork"

    .line 199
    if-eq v1, v2, :cond_d

    .line 201
    const/16 v2, 0x84

    .line 203
    if-eq v1, v2, :cond_a

    .line 205
    const/16 v2, 0x87

    .line 207
    if-eq v1, v2, :cond_8

    .line 209
    const/16 v2, 0x90

    .line 211
    if-eq v1, v2, :cond_7

    .line 213
    const/16 v2, 0x9e

    .line 215
    if-eq v1, v2, :cond_6

    .line 217
    goto/16 :goto_3

    .line 219
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 222
    aget-byte v2, v4, v6

    .line 224
    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 227
    move-result v2

    .line 228
    invoke-virtual {v0, v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    .line 231
    goto/16 :goto_3

    .line 233
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 236
    aget-byte v2, v4, v6

    .line 238
    and-int/lit16 v2, v2, 0xff

    .line 240
    invoke-virtual {v0, v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    .line 243
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 245
    if-ne v2, v5, :cond_13

    .line 247
    const/4 v2, 0x6

    .line 248
    invoke-virtual {v0, v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    .line 251
    goto/16 :goto_3

    .line 253
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 256
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    .line 259
    move-result v2

    .line 260
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 263
    move-result-object v4

    .line 264
    if-nez v4, :cond_9

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "Unknown source device info for <Device Vendor ID> "

    .line 270
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    goto/16 :goto_3

    .line 285
    :cond_9
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v4, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 300
    goto/16 :goto_3

    .line 302
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 305
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 308
    move-result v2

    .line 309
    aget-byte v4, v4, v10

    .line 311
    invoke-virtual {v0, v7, v4, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_b

    .line 317
    goto/16 :goto_3

    .line 319
    :cond_b
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 322
    move-result-object v5

    .line 323
    if-nez v5, :cond_c

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    const-string v2, "Unknown source device info for <Report Physical Address> "

    .line 329
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    goto/16 :goto_3

    .line 344
    :cond_c
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 355
    move-result v2

    .line 356
    invoke-virtual {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v2, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 371
    goto/16 :goto_3

    .line 373
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 376
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 379
    move-result-object v2

    .line 380
    if-nez v2, :cond_e

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    const-string v2, "No source device info for <Set Osd Name>."

    .line 386
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object v0

    .line 396
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    goto/16 :goto_3

    .line 401
    :cond_e
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 403
    const-string v6, "US-ASCII"

    .line 405
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 411
    move-result-object v4

    .line 412
    if-eqz v4, :cond_f

    .line 414
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_f

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 426
    const-string v2, "Ignore incoming <Set Osd Name> having same osd name:"

    .line 428
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    move-result-object v0

    .line 438
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    goto/16 :goto_3

    .line 443
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 445
    const-string v6, "Updating device OSD name from "

    .line 447
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 453
    move-result-object v6

    .line 454
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v6, " to "

    .line 459
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    move-result-object v4

    .line 469
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v2, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 487
    goto :goto_3

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    .line 491
    const-string v4, "Invalid <Set Osd Name> request:"

    .line 493
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    move-result-object v2

    .line 503
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    goto :goto_3

    .line 507
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 510
    array-length v5, v4

    .line 511
    if-ge v5, v10, :cond_11

    .line 513
    goto :goto_3

    .line 514
    :cond_11
    aget-byte v5, v4, v6

    .line 516
    and-int/lit16 v5, v5, 0xff

    .line 518
    aget-byte v4, v4, v9

    .line 520
    and-int/lit16 v4, v4, 0xff

    .line 522
    const/16 v9, 0x73

    .line 524
    if-ne v5, v9, :cond_13

    .line 526
    if-nez v4, :cond_12

    .line 528
    goto :goto_2

    .line 529
    :cond_12
    move v6, v10

    .line 530
    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 541
    move-result-object v4

    .line 542
    invoke-virtual {v4}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v4, v6}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 549
    move-result-object v4

    .line 550
    invoke-virtual {v4}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v5, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 565
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 568
    :cond_13
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 571
    move-result v0

    .line 572
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 574
    if-nez v2, :cond_1a

    .line 576
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    const/16 v2, 0xd

    .line 583
    if-eq v1, v8, :cond_18

    .line 585
    if-eq v1, v2, :cond_18

    .line 587
    const/16 v2, 0x70

    .line 589
    if-eq v1, v2, :cond_17

    .line 591
    const/16 v2, 0x80

    .line 593
    if-eq v1, v2, :cond_16

    .line 595
    const/16 v2, 0x82

    .line 597
    if-eq v1, v2, :cond_15

    .line 599
    const/16 v2, 0x86

    .line 601
    if-eq v1, v2, :cond_14

    .line 603
    goto :goto_5

    .line 604
    :cond_14
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 607
    move-result v0

    .line 608
    if-nez v0, :cond_19

    .line 610
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 612
    check-cast p0, Ljava/util/ArrayList;

    .line 614
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    goto :goto_4

    .line 618
    :cond_15
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_19

    .line 624
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 626
    check-cast p0, Ljava/util/ArrayList;

    .line 628
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    goto :goto_4

    .line 632
    :cond_16
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 635
    move-result v0

    .line 636
    if-nez v0, :cond_19

    .line 638
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 640
    check-cast p0, Ljava/util/ArrayList;

    .line 642
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    goto :goto_4

    .line 646
    :cond_17
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 649
    move-result v0

    .line 650
    if-nez v0, :cond_19

    .line 652
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 654
    check-cast p0, Ljava/util/ArrayList;

    .line 656
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    goto :goto_4

    .line 660
    :cond_18
    invoke-virtual {p0, v8, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 663
    move-result v0

    .line 664
    if-nez v0, :cond_19

    .line 666
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(ILcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 669
    move-result v0

    .line 670
    if-nez v0, :cond_19

    .line 672
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 674
    check-cast p0, Ljava/util/ArrayList;

    .line 676
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 7
    if-nez v4, :cond_0

    .line 9
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 14
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 19
    move-result-object v4

    .line 20
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 24
    if-nez v4, :cond_1

    .line 26
    new-instance v4, Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 28
    invoke-direct {v4, p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 31
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 35
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getInitialPowerStatus()I

    .line 38
    move-result v5

    .line 39
    invoke-virtual {v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 42
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 44
    monitor-enter v4

    .line 45
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 47
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 48
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 50
    const-string/jumbo v5, "hdmi_cec_enabled"

    .line 53
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 56
    move-result v4

    .line 57
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 59
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 61
    const-string/jumbo v5, "enable_soundbar_mode"

    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    const-string/jumbo v4, "hdmi_control"

    .line 70
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 73
    move-result v4

    .line 74
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 76
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 78
    const-string/jumbo v5, "enable_earc_tx"

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    const-string/jumbo v4, "hdmi_control"

    .line 87
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    move-result v4

    .line 91
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 93
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 95
    const-string/jumbo v5, "transition_arc_to_earc_tx"

    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    const-string/jumbo v4, "hdmi_control"

    .line 104
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    move-result v4

    .line 108
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 110
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 112
    const-string/jumbo v5, "enable_numeric_soundbar_volume_ui_on_tv"

    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    const-string/jumbo v4, "hdmi_control"

    .line 121
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 124
    move-result v4

    .line 125
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 127
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 129
    monitor-enter v5

    .line 130
    :try_start_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 132
    const-string/jumbo v6, "earc_enabled"

    .line 135
    invoke-virtual {v4, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 138
    move-result v4

    .line 139
    if-ne v4, v3, :cond_2

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

    .line 146
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_3

    .line 152
    iget-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 154
    iget-boolean v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 156
    and-int/2addr v4, v6

    .line 157
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 159
    goto :goto_1

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto/16 :goto_a

    .line 163
    :cond_3
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 167
    move-result-object v4

    .line 168
    const-string/jumbo v5, "volume_control_enabled"

    .line 171
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 174
    move-result v4

    .line 175
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 178
    const-string/jumbo v4, "mhl_input_switching_enabled"

    .line 181
    invoke-virtual {p0, v4, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    .line 184
    move-result v4

    .line 185
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 187
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 189
    if-nez v4, :cond_4

    .line 191
    new-instance v4, Lcom/android/server/hdmi/CecMessageBuffer;

    .line 193
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    .line 198
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iput-object v5, v4, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 203
    iput-object p0, v4, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 205
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 209
    if-nez v4, :cond_7

    .line 211
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 214
    move-result-object v4

    .line 215
    sget-object v5, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 217
    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;

    .line 219
    invoke-direct {v5}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;-><init>()V

    .line 222
    invoke-static {p0, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    .line 225
    move-result-object v5

    .line 226
    if-eqz v5, :cond_5

    .line 228
    goto :goto_2

    .line 229
    :cond_5
    const-string v5, "Unable to use CEC and HDMI Connection AIDL HALs"

    .line 231
    new-array v6, v2, [Ljava/lang/Object;

    .line 233
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;

    .line 238
    invoke-direct {v5}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;-><init>()V

    .line 241
    invoke-static {p0, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    .line 244
    move-result-object v5

    .line 245
    if-eqz v5, :cond_6

    .line 247
    goto :goto_2

    .line 248
    :cond_6
    const-string v5, "Unable to use cec@1.1"

    .line 250
    new-array v6, v2, [Ljava/lang/Object;

    .line 252
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    .line 257
    invoke-direct {v5}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>()V

    .line 260
    invoke-static {p0, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    .line 263
    move-result-object v5

    .line 264
    :goto_2
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 266
    :cond_7
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 268
    if-nez v4, :cond_8

    .line 270
    const-string p0, "HdmiControlService"

    .line 272
    const-string v0, "Device does not support HDMI-CEC."

    .line 274
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 278
    :cond_8
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 280
    if-nez v4, :cond_9

    .line 282
    new-instance v4, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 284
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 289
    :cond_9
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 291
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    const-string v4, "HdmiControlService"

    .line 296
    const-string v5, "Device does not support MHL-control."

    .line 298
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 303
    if-nez v4, :cond_b

    .line 305
    new-instance v4, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;

    .line 307
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v5, Lcom/android/server/hdmi/HdmiEarcController;

    .line 312
    invoke-direct {v5, p0, v4}, Lcom/android/server/hdmi/HdmiEarcController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;)V

    .line 315
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_a

    .line 321
    new-instance v6, Landroid/os/Handler;

    .line 323
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 325
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 328
    move-result-object v7

    .line 329
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 332
    iput-object v6, v5, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 334
    new-instance v6, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 336
    invoke-direct {v6, v5}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;-><init>(Lcom/android/server/hdmi/HdmiEarcController;)V

    .line 339
    invoke-virtual {v4, v6}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V

    .line 342
    goto :goto_3

    .line 343
    :cond_a
    new-array v4, v2, [Ljava/lang/Object;

    .line 345
    const-string v5, "Could not connect to eARC AIDL HAL."

    .line 347
    invoke-static {v5, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    const/4 v5, 0x0

    .line 351
    :goto_3
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 353
    :cond_b
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 355
    if-nez v4, :cond_c

    .line 357
    const-string v4, "HdmiControlService"

    .line 359
    const-string v5, "Device does not support eARC."

    .line 361
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_c
    new-instance v4, Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 366
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 368
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 370
    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/hdmi/HdmiCecNetwork;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V

    .line 373
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 375
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_d

    .line 381
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 384
    goto :goto_4

    .line 385
    :cond_d
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 387
    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 390
    :goto_4
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 392
    monitor-enter v4

    .line 393
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 396
    move-result-object v5

    .line 397
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 399
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 400
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 402
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 408
    move-result-object v4

    .line 409
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 411
    monitor-enter v5

    .line 412
    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 414
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 417
    move-result-object v4

    .line 418
    :cond_e
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_10

    .line 424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 430
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    .line 433
    move-result v7

    .line 434
    if-eqz v7, :cond_f

    .line 436
    iget-boolean v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 438
    if-eqz v8, :cond_f

    .line 440
    const-string v4, "HdmiControlService"

    .line 442
    const-string v6, "HDMI eARC supported on more than 1 port."

    .line 444
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 449
    const/4 v4, -0x1

    .line 450
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 452
    goto :goto_6

    .line 453
    :catchall_1
    move-exception p0

    .line 454
    goto/16 :goto_9

    .line 456
    :cond_f
    if-eqz v7, :cond_e

    .line 458
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 461
    move-result v6

    .line 462
    iput v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 464
    iput-boolean v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 466
    goto :goto_5

    .line 467
    :cond_10
    :goto_6
    iget-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 469
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 471
    if-eqz v6, :cond_11

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

    .line 479
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 483
    move-result v4

    .line 484
    if-eqz v4, :cond_13

    .line 486
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 489
    move-result v4

    .line 490
    if-eqz v4, :cond_12

    .line 492
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    .line 495
    goto :goto_8

    .line 496
    :cond_12
    invoke-virtual {p0, v2, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 499
    :cond_13
    :goto_8
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 501
    const-string/jumbo v5, "hdmi_cec_enabled"

    .line 504
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 506
    invoke-direct {v6, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 509
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 511
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 514
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 516
    const-string/jumbo v5, "hdmi_cec_version"

    .line 519
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 521
    const/16 v7, 0x8

    .line 523
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 526
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 528
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 531
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 533
    const-string/jumbo v5, "routing_control"

    .line 536
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 538
    const/16 v7, 0x9

    .line 540
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 543
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 545
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 548
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 550
    const-string/jumbo v5, "system_audio_control"

    .line 553
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 555
    const/16 v7, 0xa

    .line 557
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 560
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 562
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 565
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 567
    const-string/jumbo v5, "volume_control_enabled"

    .line 570
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 572
    const/16 v7, 0xb

    .line 574
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 577
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 579
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 582
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 584
    const-string/jumbo v5, "tv_wake_on_one_touch_play"

    .line 587
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 589
    const/16 v7, 0xc

    .line 591
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 594
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 596
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 599
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 601
    const-string/jumbo v5, "rc_profile_tv"

    .line 604
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 606
    const/16 v7, 0xd

    .line 608
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 611
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 613
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 616
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 618
    const-string/jumbo v5, "rc_profile_source_handles_root_menu"

    .line 621
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 623
    const/16 v7, 0xe

    .line 625
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 628
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 630
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 633
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 635
    const-string/jumbo v5, "rc_profile_source_handles_setup_menu"

    .line 638
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 640
    invoke-direct {v6, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 643
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 645
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 648
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 650
    const-string/jumbo v5, "rc_profile_source_handles_contents_menu"

    .line 653
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 655
    invoke-direct {v6, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 658
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 660
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 663
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 665
    const-string/jumbo v5, "rc_profile_source_handles_top_menu"

    .line 668
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 670
    invoke-direct {v6, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 673
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 675
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 678
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 680
    const-string/jumbo v5, "rc_profile_source_handles_media_context_sensitive_menu"

    .line 683
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 685
    const/4 v7, 0x4

    .line 686
    invoke-direct {v6, p0, v7}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 689
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 691
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 697
    move-result v4

    .line 698
    if-eqz v4, :cond_14

    .line 700
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 702
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 705
    move-result-object v5

    .line 706
    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 709
    move-result-object v5

    .line 710
    new-instance v6, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 712
    invoke-direct {v6, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 715
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    const-string/jumbo v2, "hdmi_control"

    .line 721
    invoke-static {v2, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 724
    :cond_14
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 726
    const-string/jumbo v4, "earc_enabled"

    .line 729
    new-instance v5, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 731
    const/4 v6, 0x5

    .line 732
    invoke-direct {v5, p0, v6}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 735
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 737
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 740
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 742
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 745
    move-result-object v4

    .line 746
    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 749
    move-result-object v4

    .line 750
    new-instance v5, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 752
    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 755
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    const-string/jumbo v2, "hdmi_control"

    .line 761
    invoke-static {v2, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 764
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 766
    const-string/jumbo v3, "soundbar_mode"

    .line 769
    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$2;

    .line 771
    const/4 v5, 0x6

    .line 772
    invoke-direct {v4, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 775
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 777
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 780
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 782
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 785
    move-result-object v3

    .line 786
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 789
    move-result-object v3

    .line 790
    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 792
    invoke-direct {v4, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 795
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    const-string/jumbo v1, "hdmi_control"

    .line 801
    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 804
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 806
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 809
    move-result-object v2

    .line 810
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 813
    move-result-object v2

    .line 814
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$14;

    .line 816
    invoke-direct {v3, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 819
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    const-string/jumbo p0, "hdmi_control"

    .line 825
    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

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

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "hdmi_cec_version"

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 17
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 20
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 22
    invoke-interface {v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x5

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 37
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 45
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 50
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecController;->isLanguage(Ljava/lang/String;)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 59
    invoke-interface {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    .line 65
    return-void
.end method

.method public initializeCecLocalDevices(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecLocalDeviceTypes()Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 37
    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_0

    .line 43
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 46
    move-result-object v3

    .line 47
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 50
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    .line 53
    move-result v2

    .line 54
    iput v2, v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 56
    iget-object v2, v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    .line 71
    :cond_1
    const/4 v2, 0x0

    .line 72
    iput-object v2, v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 80
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 86
    return-void
.end method

.method public final initializeEarc(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "eARC initialized, reason = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "HdmiControlService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarcLocalDevice(I)V

    .line 24
    const/4 v0, 0x6

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne p1, v0, :cond_0

    .line 28
    invoke-virtual {p0, v1, v1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 36
    :goto_0
    return-void
.end method

.method public initializeEarcLocalDevice(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 6
    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 14
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    const/4 v1, 0x1

    .line 18
    :try_start_0
    iput v1, p1, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 23
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 36
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;-><init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;)V

    .line 39
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 41
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

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

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 14
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

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

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 36
    invoke-interface {v1, p2, p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    :try_start_2
    const-string v2, "HdmiControlService"

    .line 43
    const-string v3, "Failed to notify control-state-changed to vendor handler"

    .line 45
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

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

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    move v1, v2

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz p4, :cond_1

    .line 39
    aget-byte v5, p3, v2

    .line 41
    and-int/lit16 v5, v5, 0xff

    .line 43
    shl-int/lit8 v5, v5, 0x10

    .line 45
    aget-byte v6, p3, v4

    .line 47
    and-int/lit16 v6, v6, 0xff

    .line 49
    shl-int/lit8 v6, v6, 0x8

    .line 51
    add-int/2addr v5, v6

    .line 52
    const/4 v6, 0x2

    .line 53
    aget-byte v6, p3, v6

    .line 55
    and-int/lit16 v6, v6, 0xff

    .line 57
    add-int/2addr v5, v6

    .line 58
    iget v6, v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mVendorId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eq v6, v5, :cond_1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :try_start_1
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    .line 65
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 73
    const-string v5, "Failed to notify vendor command reception"

    .line 75
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 35
    sget-object v3, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

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

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isAudioSystemDevice()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isCecControlEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

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

    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isPowerOnOrTransient()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 8
    if-nez p0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_1

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

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p0, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x3

    .line 13
    if-ne p0, v1, :cond_1

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

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

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isTvDeviceEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

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

    .line 4
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    iget-object v0, v0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 22
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 41
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 48
    move-result v2

    .line 49
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->preprocessBufferedMessages(Ljava/util/List;)V

    .line 55
    iput v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 57
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 76
    move-result-object v3

    .line 77
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 79
    monitor-enter v4

    .line 80
    :try_start_0
    iput-object v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 82
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 85
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 88
    move-result v3

    .line 89
    const/4 v4, 0x6

    .line 90
    if-lt v3, v4, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 95
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(I)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

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

    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 114
    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 120
    iput-object p0, p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 122
    :cond_3
    return-void

    .line 123
    :cond_4
    :goto_1
    const-string p0, "HdmiControlService"

    .line 125
    const-string p1, "No local device to notify."

    .line 127
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public final notifyAvbMuteChange(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 10
    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 12
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 14
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 46
    if-eqz p1, :cond_2

    .line 48
    const/16 p1, -0x64

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 p1, 0x64

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 59
    const/16 v0, 0x2001

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/16 v0, 0x2000

    .line 64
    :goto_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 66
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 68
    const/4 v1, 0x3

    .line 69
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 74
    :cond_4
    return-void
.end method

.method public final notifyEarcStatusToAudioService(Ljava/util/List;Z)V
    .locals 8

    .line 1
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const-string v3, ""

    .line 10
    const-string v4, ""

    .line 12
    const/4 v1, 0x2

    .line 13
    const/16 v2, 0x1d

    .line 15
    move-object v0, v7

    .line 16
    move-object v6, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 32
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 36
    invoke-virtual {p0, v7, p2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 39
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v0, "tv_input"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/media/tv/TvInputManager;

    .line 32
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 34
    new-instance p1, Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Lcom/android/server/hdmi/PowerManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 45
    new-instance p1, Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 52
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 58
    iput-object v0, p1, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 60
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 62
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 64
    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 68
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 79
    check-cast p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 81
    iget-object p1, p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    const/4 v0, 0x3

    .line 84
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    .line 90
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 92
    if-nez p1, :cond_1

    .line 94
    new-instance p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p1, v0}, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 107
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;

    .line 109
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 112
    check-cast p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 114
    iget-object p1, p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 116
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 118
    invoke-virtual {p1, p0, v0}, Landroid/media/AudioDeviceVolumeManager;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const/16 v0, 0x3e8

    .line 124
    if-ne p1, v0, :cond_3

    .line 126
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_3
    :goto_0
    return-void
.end method

.method public onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p2

    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

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

    .line 4
    const-string v0, "HdmiControlService"

    .line 6
    const-string/jumbo v1, "onPendingActionsCleared"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v2, v1, [I

    .line 25
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$27;

    .line 27
    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService$27;-><init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V

    .line 30
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 32
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 34
    const/4 v4, 0x3

    .line 35
    if-ne v2, v4, :cond_0

    .line 37
    invoke-virtual {v0, v1, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 40
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 42
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 64
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 66
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 73
    return-void
.end method

.method public onStandby(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 11
    const-string/jumbo v3, "tv_send_standby_on_sleep"

    .line 14
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_1

    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 30
    const-string/jumbo v3, "power_control_mode"

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v3, "none"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 59
    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->acquireWakeLock()V

    .line 64
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 69
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 71
    const/4 v3, 0x3

    .line 72
    invoke-virtual {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 75
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(IZ)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 81
    move-result-object v0

    .line 82
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 84
    if-nez v2, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 94
    invoke-virtual {v2, v1, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 97
    check-cast v0, Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v0

    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 115
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    return-void

    .line 123
    :cond_4
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$27;

    .line 125
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$27;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 134
    return-void
.end method

.method public final onStart()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initService()V

    .line 4
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 9
    const-string/jumbo v1, "hdmi_control"

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 21
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 50
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    move-result-object v0

    .line 61
    const-string/jumbo v1, "mhl_input_switching_enabled"

    .line 64
    const-string/jumbo v2, "mhl_power_charge_enabled"

    .line 67
    const-string/jumbo v3, "device_name"

    .line 70
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

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

    .line 79
    aget-object v4, v1, v3

    .line 81
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 87
    const/4 v6, -0x1

    .line 88
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    return-void
.end method

.method public onWakeUp(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 13
    const-string v3, " not defined."

    .line 15
    const-string/jumbo v4, "wakeUpAction "

    .line 18
    const-string v5, "HdmiControlService"

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_4

    .line 29
    if-eqz p1, :cond_1

    .line 31
    if-eq p1, v6, :cond_0

    .line 33
    invoke-static {p1, v4, v3, v5}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 41
    if-eqz v0, :cond_2

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

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const-string v0, "Device does not support HDMI-CEC."

    .line 52
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_8

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_7

    .line 67
    if-eqz p1, :cond_6

    .line 69
    if-eq p1, v6, :cond_5

    .line 71
    invoke-static {p1, v4, v3, v5}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 75
    :cond_5
    move v1, v6

    .line 76
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    .line 79
    goto :goto_2

    .line 80
    :cond_7
    invoke-virtual {p0, v2, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 83
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_a

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 92
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 94
    if-eqz p1, :cond_9

    .line 96
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter p1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 101
    iget v0, v0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

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

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 116
    move-result v1

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 120
    move-result p0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-static {v0, v0, v6, v1, p0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    .line 127
    goto :goto_4

    .line 128
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_c

    .line 134
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    .line 141
    move-result v0

    .line 142
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 144
    const-string/jumbo v1, "soundbar_mode"

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 150
    move-result p0

    .line 151
    if-ne p0, v6, :cond_b

    .line 153
    move v2, v6

    .line 154
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    const/16 p0, 0x2d4

    .line 159
    invoke-static {p0, v0, v2, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    .line 162
    :cond_c
    :goto_4
    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 6
    const-string v1, "HdmiControlService"

    .line 8
    if-nez v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 12
    const-string p0, "Local device is under address allocation. Save OTP callback for later process."

    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 27
    move-result-object v0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 30
    const-string p0, "Local source device not available"

    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p0, 0x2

    .line 36
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 43
    return-void
.end method

.method public pauseActiveMediaSessions()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/media/session/MediaSessionManager;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/media/session/MediaController;

    .line 34
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

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

    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 10
    return-object p0
.end method

.method public final portIdToPath(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 16
    const-string p0, "Cannot find the port info: "

    .line 18
    const-string v0, "HdmiCecNetwork"

    .line 20
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    const p0, 0xffff

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

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

    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 6
    const-string v1, "HdmiControlService"

    .line 8
    if-nez v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 12
    const-string p0, "Local device is under address allocation. Queue display callback for later process."

    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 27
    move-result-object v0

    .line 28
    :cond_1
    const/4 p0, -0x1

    .line 29
    if-nez v0, :cond_2

    .line 31
    const-string v0, "Local source device not available"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 43
    const-class v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v2

    .line 53
    const-string v3, "HdmiCecLocalDeviceSource"

    .line 55
    if-nez v2, :cond_3

    .line 57
    const-string/jumbo p0, "queryDisplayStatus already in progress"

    .line 60
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 p0, 0x0

    .line 64
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    .line 70
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    if-nez p1, :cond_4

    .line 80
    const-string v1, "DevicePowerStatusAction"

    .line 82
    const-string v2, "Wrong arguments"

    .line 84
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    new-instance v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    .line 91
    invoke-direct {v1, v0, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 94
    :goto_0
    if-nez v1, :cond_5

    .line 96
    const-string v1, "Cannot initiate queryDisplayStatus"

    .line 98
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 108
    :goto_1
    return-void
.end method

.method public readBooleanSetting(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result p0

    .line 13
    const/4 p1, 0x1

    .line 14
    if-ne p0, p1, :cond_0

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

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public readDeviceTypes()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecDeviceTypes()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    const-string v2, "HdmiControlService"

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "Error parsing ro.hdmi.cec_device_types: "

    .line 24
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "ro.hdmi.cec_device_types"

    .line 30
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 56
    move-result-object p0

    .line 57
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/util/List;

    .line 76
    return-object p0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceTypes()Ljava/util/List;

    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "Error parsing ro.hdmi.device_type: "

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "ro.hdmi.device_type"

    .line 97
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 114
    move-result-object p0

    .line 115
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    .line 117
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 123
    move-result-object p0

    .line 124
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 127
    move-result-object v0

    .line 128
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/util/List;

    .line 134
    return-object p0
.end method

.method public readIntSetting(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 15
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const-string v0, "HdmiControlService"

    .line 23
    const-string v1, "Exception when releasing wake lock."

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 31
    :cond_1
    return-void
.end method

.method public removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 6
    return-void
.end method

.method public final runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 10
    const-string v1, "android.permission.HDMI_CEC"

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

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

    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$7;

    .line 27
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 36
    new-instance p2, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 38
    invoke-direct {p2, v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "Invalid message type:"

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    new-array p1, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    if-eqz p2, :cond_1

    .line 66
    const/4 p0, 0x3

    .line 67
    invoke-interface {p2, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public final setActiveSource(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 6
    iput p1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 8
    iput p2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 17
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 20
    move-result v1

    .line 21
    invoke-static {v1, p2}, Lcom/android/server/hdmi/HdmiUtils;->pathRelationship(II)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const/16 v0, 0x135

    .line 30
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 55
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 62
    move-result v2

    .line 63
    if-ne p1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 67
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 70
    move-result v2

    .line 71
    if-ne p2, v2, :cond_1

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

    .line 78
    invoke-direct {v3, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    .line 81
    new-instance v4, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;

    .line 83
    invoke-direct {v4, v3, v2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V

    .line 86
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 88
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_0

    .line 94
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 96
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 99
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 101
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 107
    const/4 p2, 0x1

    .line 108
    invoke-direct {p1, p0, p2}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

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

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 13
    const-string v2, "android.hardware.hdmi.action.ON_ACTIVE_SOURCE_RECOVERED_DISMISS_UI"

    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 37
    invoke-virtual {v0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 40
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    :cond_0
    const/4 v0, 0x5

    .line 47
    if-ne p2, v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_1

    .line 59
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 66
    move-result p0

    .line 67
    invoke-virtual {p2, p0, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 73
    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 76
    :cond_1
    return-void
.end method

.method public final setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 8
    move-result-object p0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final setAudioStatus(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 36
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 38
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 53
    :cond_1
    if-ltz p1, :cond_2

    .line 55
    const/16 v0, 0x64

    .line 57
    if-gt p1, v0, :cond_2

    .line 59
    const-string/jumbo v0, "volume: "

    .line 62
    const-string v2, "HdmiControlService"

    .line 64
    invoke-static {p1, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    const/16 v0, 0x101

    .line 71
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public setCecController(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 3
    return-void
.end method

.method public setCecMessageBuffer(Lcom/android/server/hdmi/CecMessageBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 3
    return-void
.end method

.method public setDeviceConfig(Lcom/android/server/hdmi/DeviceConfigWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 3
    return-void
.end method

.method public setEarcController(Lcom/android/server/hdmi/HdmiEarcController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 3
    return-void
.end method

.method public setEarcEnabled(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 20
    const-string p0, "HdmiControlService"

    .line 22
    const-string p1, "Enabled/disabled eARC setting, but the hardware doesn\u00b4t support eARC. This settings change doesn\u00b4t have an effect."

    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 33
    if-eqz p1, :cond_2

    .line 35
    const/4 p1, 0x6

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

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

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$30;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

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

    .line 4
    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$35;

    .line 8
    invoke-direct {p2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$35;-><init>(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p2, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 30
    move-result-object v1

    .line 31
    if-ne v0, v1, :cond_1

    .line 33
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    .line 35
    invoke-interface {p2, p1}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;->nativeSetEarcEnabled(Z)V

    .line 38
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 40
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 42
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v1

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    const-string/jumbo v1, "setHpdSignalType: portId %b, signal %b"

    .line 60
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 65
    invoke-interface {p2, p1, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetHpdSignalType(II)V

    .line 68
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    const-string p1, "Should run on service thread."

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method public setEarcSupported(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

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

    .line 3
    return-void
.end method

.method public setHdmiCecNetwork(Lcom/android/server/hdmi/HdmiCecNetwork;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 3
    return-void
.end method

.method public setHdmiCecVolumeControlEnabledInternal(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;

    .line 13
    invoke-direct {v2, p1}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

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

    .line 3
    return-void
.end method

.method public setIoLooper(Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 3
    return-void
.end method

.method public setPowerManager(Lcom/android/server/hdmi/PowerManagerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 3
    return-void
.end method

.method public setPowerManagerInternal(Lcom/android/server/hdmi/PowerManagerInternalWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 3
    return-void
.end method

.method public setPowerStatus(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 10
    return-void
.end method

.method public setSoundbarMode(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ne p1, v5, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v5, v4

    .line 23
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const/16 v3, 0x2d4

    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-static {v3, v0, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    .line 32
    const-string v3, "HdmiControlService"

    .line 34
    if-nez v1, :cond_1

    .line 36
    const-string p0, "Device type not compatible to change soundbar mode."

    .line 38
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 44
    const-string p0, "Device type doesn\'t support ARC."

    .line 46
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 50
    :cond_2
    if-nez p1, :cond_5

    .line 52
    if-eqz v2, :cond_5

    .line 54
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode(Lcom/android/server/hdmi/HdmiControlService$27;)V

    .line 68
    :cond_3
    if-eqz p1, :cond_6

    .line 70
    const-class v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 72
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 81
    :cond_4
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 83
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$20;

    .line 85
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$20;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 88
    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 91
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move p1, v4

    .line 96
    :cond_6
    :goto_1
    if-nez p1, :cond_7

    .line 98
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 100
    const/4 p1, 0x5

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    .line 104
    :cond_7
    return-void
.end method

.method public final setSystemAudioActivated(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

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

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v2, "power_control_mode"

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v2, "none"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v2, "hdmi_cec_enabled"

    .line 37
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eq v0, v2, :cond_2

    .line 44
    return v1

    .line 45
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 47
    return p0
.end method

.method public final standby()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 14
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    move-result-wide v0

    .line 20
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 22
    const/4 v2, 0x5

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 27
    return-void
.end method

.method public final startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x6

    .line 8
    invoke-static {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 19
    :goto_0
    return-void
.end method

.method public final switchToFullVolumeBehavior()V
    .locals 4

    .line 1
    const-string v0, "HdmiControlService"

    .line 3
    const-string v1, "Switching to full volume behavior"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 11
    move-result-object v0

    .line 12
    const-class v1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 63
    sget-object v2, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 81
    check-cast v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 83
    const/4 v3, 0x1

    .line 84
    iget-object v2, v2, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

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

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 13
    move-result-object v0

    .line 14
    :cond_0
    if-nez v0, :cond_1

    .line 16
    const-string p0, "HdmiControlService"

    .line 18
    const-string v0, "Local source device not available"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 27
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 29
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 31
    iget-object v1, v1, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 33
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->pauseActiveMediaSessions()V

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 46
    :goto_0
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;-><init>(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 55
    return-void
.end method

.method public final tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 10
    return-object p0
.end method

.method public final verifyPhysicalAddress(I[B)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    array-length v0, p2

    .line 10
    add-int/lit8 v2, p1, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ge v0, v2, :cond_1

    .line 15
    return v3

    .line 16
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 19
    move-result p1

    .line 20
    const p2, 0xffff

    .line 23
    if-eq p1, p2, :cond_2

    .line 25
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 27
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 30
    move-result p2

    .line 31
    if-ne p1, p2, :cond_2

    .line 33
    return v1

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 39
    move-result p0

    .line 40
    const/4 p1, -0x1

    .line 41
    if-ne p0, p1, :cond_3

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

    .line 3
    const/16 v1, 0x70

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 9
    if-eq p1, v1, :cond_4

    .line 11
    const/16 v1, 0x84

    .line 13
    if-eq p1, v1, :cond_3

    .line 15
    const/16 v1, 0x86

    .line 17
    if-eq p1, v1, :cond_3

    .line 19
    const/16 v1, 0x9d

    .line 21
    if-eq p1, v1, :cond_3

    .line 23
    const/16 v1, 0xa1

    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p1, v1, :cond_1

    .line 28
    const/16 v1, 0xa2

    .line 30
    if-eq p1, v1, :cond_1

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 35
    return v2

    .line 36
    :pswitch_0
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

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

    .line 54
    const/4 v1, 0x5

    .line 55
    if-ne p1, v1, :cond_2

    .line 57
    array-length p1, v0

    .line 58
    const/16 v1, 0x8

    .line 60
    sub-int/2addr p1, v1

    .line 61
    if-lt p1, v4, :cond_2

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 66
    move-result v2

    .line 67
    :cond_2
    return v2

    .line 68
    :cond_3
    :pswitch_1
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_4
    array-length p1, v0

    .line 74
    if-eqz p1, :cond_6

    .line 76
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress(I[B)Z

    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_5

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

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 15
    const/16 v2, 0x8

    .line 17
    const-string v3, "android.server.hdmi:WAKE"

    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 22
    return-void
.end method

.method public writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method
