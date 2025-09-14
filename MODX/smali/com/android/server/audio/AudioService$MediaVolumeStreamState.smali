.class public final Lcom/android/server/audio/AudioService$MediaVolumeStreamState;
.super Lcom/android/server/audio/AudioService$VolumeStreamState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final applyDeviceVolume_syncVSS(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 12
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    and-int/lit8 v1, p1, 0x2

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string/jumbo v1, "l_volume_prevent_overheat_key;gain"

    .line 26
    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    :goto_0
    iput v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    .line 39
    iget-object v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 41
    iget v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 43
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 46
    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 48
    if-eqz v0, :cond_3

    .line 50
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 64
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 66
    iget-object v0, v0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 75
    move-result p1

    .line 76
    iget-object p0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 78
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 80
    iput p1, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 82
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 84
    if-eq v1, p0, :cond_1

    .line 86
    iput-boolean p0, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 88
    const/4 v1, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 91
    :goto_1
    monitor-enter v0

    .line 92
    :try_start_1
    iget-boolean v2, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 94
    if-nez v2, :cond_2

    .line 96
    monitor-exit v0

    .line 97
    goto :goto_3

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object v2, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 103
    invoke-virtual {v2, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    .line 106
    if-eqz v1, :cond_3

    .line 108
    iget-object p1, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 110
    invoke-virtual {p1, p0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    .line 113
    goto :goto_3

    .line 114
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_3
    :goto_3
    return-void
.end method

.method public final setIndex(IILjava/lang/String;Z)Z
    .locals 3

    .line 1
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 27
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    .line 32
    move-result v0

    .line 33
    const-string/jumbo v1, "isBluetoothDualModeActive="

    .line 36
    const-string v2, "AS.AudioService"

    .line 38
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    if-eqz v0, :cond_2

    .line 43
    :cond_0
    const-string/jumbo v0, "setA2dpDeviceVolume"

    .line 46
    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 52
    const-string/jumbo v0, "onSetA2dpSinkConnectionState"

    .line 55
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 61
    const-string/jumbo v0, "enforceBluetoothSafeMediaVolume"

    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 72
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateIndividualA2dpVolumes(I)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 79
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 81
    invoke-virtual {v0, p2}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    .line 84
    move-result v0

    .line 85
    if-le p1, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 89
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 91
    iget-object v1, v0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 93
    monitor-enter v1

    .line 94
    const/4 v2, 0x1

    .line 95
    :try_start_0
    iput v2, v0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 100
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 102
    const-string v2, " disable safe index  volIdx:"

    .line 104
    invoke-static {p1, p3, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p0

    .line 118
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 120
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMuteMediaByVibrateOrSilentMode:Z

    .line 122
    if-eqz v1, :cond_3

    .line 124
    iget v0, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 126
    const/4 v1, 0x2

    .line 127
    if-eq v0, v1, :cond_3

    .line 129
    if-ne p2, v1, :cond_3

    .line 131
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 133
    const/4 v1, 0x3

    .line 134
    aget v0, v0, v1

    .line 136
    if-le p1, v0, :cond_3

    .line 138
    const-string/jumbo v0, "muteMediaStreamOfSpeaker"

    .line 141
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 149
    const/4 v1, -0x1

    .line 150
    iput v1, v0, Lcom/android/server/audio/AudioService;->mSavedSpeakerMediaIndex:I

    .line 152
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 154
    const-string/jumbo v2, "speaker_media_index"

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 160
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 163
    move-result p0

    .line 164
    return p0
.end method
