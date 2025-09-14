.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    move-result-object v0

    .line 8
    new-instance v7, Lcom/android/server/audio/DefaultAudioPolicyFacade;

    .line 10
    invoke-direct {v7, v0}, Lcom/android/server/audio/DefaultAudioPolicyFacade;-><init>(Ljava/util/concurrent/Executor;)V

    .line 13
    new-instance v0, Lcom/android/server/audio/AudioService;

    .line 15
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v4, Lcom/android/server/audio/SystemServerAdapter;

    .line 24
    invoke-direct {v4, p1}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v5, Lcom/android/server/audio/SettingsAdapter;

    .line 29
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v6, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;

    .line 34
    invoke-direct {v6}, Lcom/android/server/audio/AudioVolumeGroupHelperBase;-><init>()V

    .line 37
    const-class v1, Landroid/app/AppOpsManager;

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    move-object v8, v1

    .line 44
    check-cast v8, Landroid/app/AppOpsManager;

    .line 46
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 49
    move-result-object v9

    .line 50
    invoke-static {}, Lcom/android/media/audio/Flags;->audioserverPermissions()Z

    .line 53
    move-object v1, v0

    .line 54
    move-object v2, p1

    .line 55
    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;Lcom/android/server/audio/DefaultAudioPolicyFacade;Landroid/app/AppOpsManager;Landroid/os/PermissionEnforcer;)V

    .line 58
    iput-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 60
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 3
    const/16 v0, 0x226

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/16 v2, 0x10

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 19
    goto/16 :goto_2

    .line 21
    :cond_0
    const/16 v0, 0x3e8

    .line 23
    if-ne p1, v0, :cond_d

    .line 25
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v2, 0xad3

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    const/16 v7, 0x7530

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 38
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 40
    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordEventChecker:Lcom/android/server/audio/AudioService$11;

    .line 44
    iput-object v0, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mChecker:Lcom/android/server/audio/AudioService$11;

    .line 46
    :cond_1
    new-instance p1, Lcom/samsung/android/server/audio/AudioGameManager;

    .line 48
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p1, v0}, Lcom/samsung/android/server/audio/AudioGameManager;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 55
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 59
    sget-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 61
    if-nez v1, :cond_2

    .line 63
    new-instance v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 65
    invoke-direct {v1, p1, v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    .line 68
    sput-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 70
    :cond_2
    sget-object p1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 72
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 74
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 76
    const-string v0, "APP_LIST_VERSION"

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    .line 82
    move-result p1

    .line 83
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;

    .line 85
    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/audio/AudioService;I)V

    .line 88
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 95
    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/samsung/android/server/audio/PackageListHelper;

    .line 99
    invoke-direct {v0, p1}, Lcom/samsung/android/server/audio/PackageListHelper;-><init>(Landroid/content/Context;)V

    .line 102
    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 104
    :cond_3
    sget-object p1, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 106
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 108
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    const-string v2, "PackageListHelper"

    .line 115
    const-string/jumbo v3, "initPackageList"

    .line 118
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move v2, v1

    .line 122
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 127
    move-result v3

    .line 128
    if-ge v2, v3, :cond_5

    .line 130
    iget-object v3, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 132
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/String;

    .line 138
    invoke-static {v0, v3}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_4

    .line 144
    sget-object v4, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    .line 146
    iget-object v5, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 148
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 154
    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    .line 157
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 159
    goto :goto_0

    .line 160
    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_FM_RADIO:Z

    .line 162
    if-eqz p1, :cond_6

    .line 164
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 166
    const-string/jumbo v0, "g_fmradio_enable=false"

    .line 169
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 172
    :cond_6
    const/4 p1, 0x2

    .line 173
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 176
    move-result-object p1

    .line 177
    array-length v0, p1

    .line 178
    move v2, v1

    .line 179
    move v3, v2

    .line 180
    :goto_1
    if-ge v2, v0, :cond_8

    .line 182
    aget-object v4, p1, v2

    .line 184
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 187
    move-result v4

    .line 188
    const/4 v5, 0x1

    .line 189
    if-ne v4, v5, :cond_7

    .line 191
    const-string v3, "AS.AudioService"

    .line 193
    const-string/jumbo v4, "updateReceiverSupported RCV"

    .line 196
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move v3, v5

    .line 200
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto :goto_1

    .line 203
    :cond_8
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 205
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    move-result-object v0

    .line 209
    iput-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 211
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 213
    const-string/jumbo v5, "speaker"

    .line 216
    const-string v6, ""

    .line 218
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 220
    monitor-enter v0

    .line 221
    :try_start_0
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    const/4 v3, 0x2

    .line 227
    invoke-static {v3, v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object v8

    .line 231
    new-instance v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 233
    const/4 v7, 0x0

    .line 234
    const/4 v4, 0x0

    .line 235
    move-object v2, v9

    .line 236
    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 241
    invoke-virtual {p1, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 247
    if-eqz p1, :cond_9

    .line 249
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 251
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 253
    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 256
    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 259
    iput-object v0, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 261
    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    .line 268
    const-string/jumbo v0, "l_call_voip_extra_volume_enable="

    .line 271
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 273
    if-eqz p1, :cond_a

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    iget-boolean v3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    .line 282
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 292
    :cond_a
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    .line 294
    if-eqz p1, :cond_b

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 313
    :cond_b
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 315
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    .line 322
    invoke-direct {v2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 325
    iput-object v2, v0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 327
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 329
    const-string v0, "alarm"

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    move-result-object v0

    .line 335
    move-object v2, v0

    .line 336
    check-cast v2, Landroid/app/AlarmManager;

    .line 338
    new-instance v0, Landroid/content/Intent;

    .line 340
    const-string/jumbo v3, "com.sec.media.action.AUDIOCORE_LOGGING"

    .line 343
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    const/high16 v3, 0x4000000

    .line 348
    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 351
    move-result-object v8

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 355
    move-result-wide v3

    .line 356
    const-wide/32 v5, 0x5265c00

    .line 359
    add-long v4, v3, v5

    .line 361
    const-wide/32 v6, 0x5265c00

    .line 364
    const/4 v3, 0x3

    .line 365
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 368
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 370
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 372
    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    .line 375
    iget p1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 377
    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    .line 380
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    .line 383
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 385
    if-eqz p1, :cond_c

    .line 387
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 389
    if-eqz p1, :cond_c

    .line 391
    iget-object p1, p1, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    .line 393
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 395
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/audio/MicModeType;->restoreMicMode(Landroid/content/ContentResolver;)V

    .line 398
    :cond_c
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 400
    if-eqz p1, :cond_d

    .line 402
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreLiveTranslator()V

    .line 405
    goto :goto_2

    .line 406
    :catchall_0
    move-exception p0

    .line 407
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    throw p0

    .line 409
    :cond_d
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "audio"

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    return-void
.end method
