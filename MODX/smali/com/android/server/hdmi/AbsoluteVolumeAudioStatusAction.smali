.class public final Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInitialAudioStatusRetriesLeft:I

.field public mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 7
    iput p2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    .line 9
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 8
    if-lez p1, :cond_1

    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 12
    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    .line 17
    :cond_1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 7
    const/16 v3, 0x7a

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eq v2, v3, :cond_0

    .line 12
    return v4

    .line 13
    :cond_0
    iget v2, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    .line 15
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 17
    if-ne v2, v3, :cond_f

    .line 19
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 21
    array-length v3, v2

    .line 22
    if-nez v3, :cond_1

    .line 24
    goto/16 :goto_8

    .line 26
    :cond_1
    sget-object v3, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 28
    aget-byte v2, v2, v4

    .line 30
    const/16 v3, 0x80

    .line 32
    and-int/2addr v2, v3

    .line 33
    const/4 v5, 0x1

    .line 34
    if-ne v2, v3, :cond_2

    .line 36
    move v2, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v2, v4

    .line 39
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 42
    move-result v1

    .line 43
    const/4 v3, -0x1

    .line 44
    if-ne v1, v3, :cond_3

    .line 46
    :goto_1
    move v4, v5

    .line 47
    goto/16 :goto_8

    .line 49
    :cond_3
    new-instance v3, Lcom/android/server/hdmi/AudioStatus;

    .line 51
    invoke-direct {v3, v1, v2}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    .line 54
    iget v1, v3, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    .line 56
    iget-boolean v2, v3, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    .line 58
    iget v6, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 60
    const/16 v7, 0x64

    .line 62
    const/4 v8, 0x3

    .line 63
    const/4 v9, 0x2

    .line 64
    iget-object v10, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 66
    if-ne v6, v5, :cond_7

    .line 68
    iget-object v6, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 70
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 73
    move-result v10

    .line 74
    if-eqz v10, :cond_4

    .line 76
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 79
    move-result-object v10

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 84
    move-result-object v10

    .line 85
    :goto_2
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    .line 88
    move-result v11

    .line 89
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 92
    iget-object v12, v6, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 94
    invoke-virtual {v12, v11}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 97
    move-result-object v11

    .line 98
    new-instance v12, Landroid/media/VolumeInfo$Builder;

    .line 100
    invoke-direct {v12, v8}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 103
    invoke-virtual {v12, v2}, Landroid/media/VolumeInfo$Builder;->setMuted(Z)Landroid/media/VolumeInfo$Builder;

    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8, v1}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v7}, Landroid/media/VolumeInfo$Builder;->setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v4}, Landroid/media/VolumeInfo$Builder;->setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    .line 122
    move-result-object v1

    .line 123
    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 125
    invoke-direct {v4, v6, v10, v11}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 128
    iput-object v4, v6, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 130
    invoke-virtual {v6, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbMuteChange(Z)V

    .line 133
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    .line 140
    move-result v2

    .line 141
    const-string v4, "HdmiControlService"

    .line 143
    if-ne v2, v5, :cond_5

    .line 145
    const-string v2, "Enabling absolute volume behavior"

    .line 147
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object v2

    .line 158
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_6

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    move-result-object v4

    .line 168
    move-object v13, v4

    .line 169
    check-cast v13, Landroid/media/AudioDeviceAttributes;

    .line 171
    iget-object v4, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 173
    iget-object v7, v6, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 175
    check-cast v4, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 177
    iget-object v12, v4, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 179
    const/16 v17, 0x1

    .line 181
    iget-object v15, v6, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 183
    move-object v14, v1

    .line 184
    move-object/from16 v16, v7

    .line 186
    invoke-virtual/range {v12 .. v17}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V

    .line 189
    goto :goto_3

    .line 190
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_6

    .line 196
    const-string v2, "Enabling adjust-only absolute volume behavior"

    .line 198
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 204
    move-result-object v2

    .line 205
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    move-result-object v2

    .line 209
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_6

    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object v4

    .line 219
    move-object v13, v4

    .line 220
    check-cast v13, Landroid/media/AudioDeviceAttributes;

    .line 222
    iget-object v4, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 224
    iget-object v7, v6, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 226
    check-cast v4, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 228
    iget-object v12, v4, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 230
    const/16 v17, 0x1

    .line 232
    iget-object v15, v6, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    .line 234
    move-object v14, v1

    .line 235
    move-object/from16 v16, v7

    .line 237
    invoke-virtual/range {v12 .. v17}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V

    .line 240
    goto :goto_4

    .line 241
    :cond_6
    iput v9, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 243
    goto :goto_7

    .line 244
    :cond_7
    if-ne v6, v9, :cond_e

    .line 246
    iget-object v6, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 248
    iget v6, v6, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    .line 250
    if-eq v1, v6, :cond_8

    .line 252
    move v4, v5

    .line 253
    :cond_8
    if-eqz v4, :cond_c

    .line 255
    iget-object v6, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 257
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    .line 260
    move-result v9

    .line 261
    if-nez v9, :cond_9

    .line 263
    goto :goto_6

    .line 264
    :cond_9
    iget-object v9, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 266
    sget-object v11, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 268
    check-cast v9, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 270
    iget-object v9, v9, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 272
    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 275
    move-result-object v9

    .line 276
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 279
    move-result-object v9

    .line 280
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    move-result v11

    .line 284
    if-eqz v11, :cond_c

    .line 286
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Landroid/media/AudioDeviceAttributes;

    .line 292
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    .line 295
    move-result-object v12

    .line 296
    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 299
    move-result v11

    .line 300
    if-eqz v11, :cond_a

    .line 302
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 305
    move-result v9

    .line 306
    if-eqz v9, :cond_b

    .line 308
    const/16 v9, 0x2001

    .line 310
    goto :goto_5

    .line 311
    :cond_b
    const/16 v9, 0x2000

    .line 313
    :goto_5
    iget-object v11, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 315
    iget v6, v6, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    .line 317
    mul-int/2addr v1, v6

    .line 318
    div-int/2addr v1, v7

    .line 319
    check-cast v11, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 321
    iget-object v6, v11, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 323
    invoke-virtual {v6, v8, v1, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 326
    :cond_c
    :goto_6
    iget-object v1, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 328
    iget-boolean v1, v1, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    .line 330
    if-ne v2, v1, :cond_d

    .line 332
    if-nez v4, :cond_d

    .line 334
    iget-object v1, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 336
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_e

    .line 342
    :cond_d
    iget-object v1, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 344
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbMuteChange(Z)V

    .line 347
    :cond_e
    :goto_7
    iput-object v3, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 349
    goto/16 :goto_1

    .line 351
    :cond_f
    :goto_8
    return v4
.end method

.method public final sendGiveAudioStatus()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/16 v1, 0x7d0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x71

    .line 14
    iget v2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    .line 16
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 26
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    .line 7
    return-void
.end method
