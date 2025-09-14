.class public final Lcom/android/server/audio/AudioServiceExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mKaraokeListenbackEnabled:I


# instance fields
.field public mAdaptSoundEnabled:I

.field public mAllSoundMute:I

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBroadcastHandlerThread:Landroid/os/HandlerThread;

.field public mCallTranslationMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

.field public final mCr:Landroid/content/ContentResolver;

.field public mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

.field public mExtraVolume:Z

.field public mIsBikeMode:Z

.field public mIsPttCallVolumeEnabled:Z

.field public final mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

.field public mMainBalance:F

.field public mMainMono:I

.field public final mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

.field public mNbQualityMode:I

.field public final mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

.field public mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

.field public final mReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

.field public final mResetSettingsReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

.field public mScreenCall:Z

.field public final mService:Lcom/android/server/audio/AudioService;

.field public final mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

.field public mUpscalerEnabled:I

.field public mVideoCallMonsterSoundMode:I

.field public mVideoCallVoiceEffectMode:I

.field public mVoiceCallMonsterSoundMode:I

.field public mVoiceRxControlMode:I

.field public mVoiceTxControlMode:I

.field public mVoipAntiHowling:Z

.field public mVoipExtraVolume:Z

.field public mVolumeMonitorValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/samsung/android/server/audio/AudioSettingsHelper;Lcom/android/server/audio/SoundEffectsHelper;Lcom/samsung/android/server/audio/MicModeManager;Lcom/samsung/android/server/audio/LiveTranslatorManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 12
    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;I)V

    .line 18
    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mResetSettingsReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mScreenCall:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCallTranslationMode:Z

    .line 25
    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceTxControlMode:I

    .line 27
    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceRxControlMode:I

    .line 29
    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceCallMonsterSoundMode:I

    .line 32
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallMonsterSoundMode:I

    .line 34
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VIDEO_CALL_VOICE_DEFAULT_EFFECT:Z

    .line 36
    if-eqz v2, :cond_0

    .line 38
    const/16 v1, 0x64

    .line 40
    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    .line 42
    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mExtraVolume:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mIsPttCallVolumeEnabled:Z

    .line 50
    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 52
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    .line 56
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 58
    iput-object p4, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 60
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceExt;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 62
    iput-object p6, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 64
    iput-object p7, p0, Lcom/android/server/audio/AudioServiceExt;->mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 72
    new-instance p3, Landroid/os/HandlerThread;

    .line 74
    const-string p4, "AudioServiceExt Broadcast"

    .line 76
    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mBroadcastHandlerThread:Landroid/os/HandlerThread;

    .line 81
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 84
    sget-object p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 86
    if-nez p3, :cond_1

    .line 88
    new-instance p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 90
    invoke-direct {p3}, Lcom/samsung/android/server/audio/OmcRingtoneManager;-><init>()V

    .line 93
    sput-object p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 95
    :cond_1
    sget-object p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 97
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 99
    invoke-static {}, Lcom/samsung/android/server/audio/CoverHelper;->getInstance()Lcom/samsung/android/server/audio/CoverHelper;

    .line 102
    move-result-object p3

    .line 103
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    .line 105
    const-string/jumbo p3, "personalise_call_sound_soft"

    .line 108
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 111
    move-result p3

    .line 112
    iput p3, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    .line 114
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    .line 116
    const/4 p4, 0x1

    .line 117
    if-eqz p3, :cond_3

    .line 119
    const-string/jumbo p3, "voip_extra_volume"

    .line 122
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 125
    move-result p3

    .line 126
    if-eqz p3, :cond_2

    .line 128
    move p3, p4

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    move p3, v0

    .line 131
    :goto_0
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    .line 133
    :cond_3
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    .line 135
    if-eqz p3, :cond_5

    .line 137
    const-string/jumbo p3, "voip_anti_howling"

    .line 140
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 143
    move-result p3

    .line 144
    if-eqz p3, :cond_4

    .line 146
    move p3, p4

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    move p3, v0

    .line 149
    :goto_1
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    .line 151
    :cond_5
    const-string/jumbo p3, "hearing_musiccheck"

    .line 154
    const/4 p5, -0x2

    .line 155
    invoke-static {p2, p3, v0, p5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 158
    move-result p3

    .line 159
    iput p3, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 161
    const-string/jumbo p3, "k2hd_effect"

    .line 164
    invoke-static {p2, p3, v0, p5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 167
    move-result p3

    .line 168
    iput p3, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 170
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 172
    if-eqz p3, :cond_7

    .line 174
    const-string/jumbo p3, "isBikeMode"

    .line 177
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 180
    move-result p3

    .line 181
    if-ne p3, p4, :cond_6

    .line 183
    move p3, p4

    .line 184
    goto :goto_2

    .line 185
    :cond_6
    move p3, v0

    .line 186
    :goto_2
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    .line 188
    :cond_7
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 190
    if-eqz p3, :cond_8

    .line 192
    const-string/jumbo p3, "headphone_monitoring"

    .line 195
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 198
    move-result p3

    .line 199
    sput p3, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 201
    :cond_8
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 203
    if-eqz p3, :cond_a

    .line 205
    const-string/jumbo p3, "volume_monitor"

    .line 208
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 211
    move-result p2

    .line 212
    iput p2, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 214
    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 217
    move-result-object p1

    .line 218
    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 220
    if-ne p0, p4, :cond_9

    .line 222
    move v0, p4

    .line 223
    :cond_9
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    .line 226
    :cond_a
    return-void
.end method

.method public static getIntValueFromString(ILjava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p1

    .line 7
    const-string v0, "AS.AudioServiceExt"

    .line 9
    const-string v1, "NumberFormatException"

    .line 11
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :goto_0
    return p0
.end method


# virtual methods
.method public final restoreLiveTranslator()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

    .line 3
    if-eqz p0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsVoiceCapable:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 11
    const-string/jumbo v1, "voip_translator_enable"

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 22
    move v2, v1

    .line 23
    :cond_0
    sget-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 25
    const-string/jumbo v3, "voip_translator_package"

    .line 28
    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v4, "restoreVoipTranslator enabled = "

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, ", packageName = "

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    const-string v4, "LiveTranslatorManager"

    .line 57
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->setVoipTranslator(Ljava/lang/String;Z)V

    .line 65
    :cond_1
    return-void
.end method

.method public final setAllSoundMute()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    const-string/jumbo v0, "true"

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string/jumbo v0, "false"

    .line 13
    :goto_0
    const-string/jumbo v1, "l_all_sound_mute_enable="

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 25
    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string/jumbo v0, "persist.audio.allsoundmute"

    .line 34
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final setNbQualityMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    .line 3
    if-lez p1, :cond_0

    .line 5
    const-string/jumbo p0, "l_call_nb_quality_enable=true"

    .line 8
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo p0, "l_call_nb_quality_enable=false"

    .line 15
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 18
    :goto_0
    return-void
.end method

.method public final setSystemSettingForSoundAssistant(ILjava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "sound_balance"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 8
    const-string/jumbo v2, "mono_audio_db"

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    const-string v1, "adjust_media_volume_only"

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v3

    .line 32
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    const/4 v1, -0x2

    .line 37
    if-eqz v0, :cond_1

    .line 39
    add-int/lit8 v0, p1, -0x32

    .line 41
    int-to-float v0, v0

    .line 42
    const/high16 v2, 0x42480000    # 50.0f

    .line 44
    div-float/2addr v0, v2

    .line 45
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 47
    const-string/jumbo v5, "master_balance"

    .line 50
    invoke-static {v2, v5, v0, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 64
    const-string/jumbo v2, "master_mono"

    .line 67
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 72
    invoke-static {v0, p2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 83
    return-void

    .line 84
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0
.end method

.method public final updateCallGuardInfo(IIZ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "callguard: mode("

    .line 4
    const-string v1, "), pid("

    .line 6
    const-string v2, "), skipSet("

    .line 8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ")"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AS.AudioServiceExt"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 31
    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 34
    const-string/jumbo v1, "l_guard_call_mode"

    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 40
    move-result-object p1

    .line 41
    const-string/jumbo v0, "l_guard_call_mode_calling_pid"

    .line 44
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 47
    move-result-object p1

    .line 48
    const-string/jumbo p2, "l_guard_call_mode_skip"

    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final updateThemeSound(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 3
    const-string/jumbo v1, "theme_touch_sound"

    .line 6
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 12
    const-string/jumbo v2, "system_sound"

    .line 15
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 21
    if-eqz p0, :cond_7

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v3, "AS.SfxHelper"

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 36
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 42
    const-string/jumbo v1, "updateThemeSound( theme is changed )"

    .line 45
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 50
    :goto_0
    move v0, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 60
    const-string/jumbo v0, "updateThemeSound( theme is released )"

    .line 63
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v0, v7

    .line 70
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 78
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_4

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v2, "updateThemeSound( Change to "

    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, " )"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 109
    const-string v1, "Open_theme"

    .line 111
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_2

    .line 117
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 119
    :cond_2
    :goto_2
    move p1, v4

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_4

    .line 129
    const-string/jumbo p1, "updateThemeSound( Change to default )"

    .line 132
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    move p1, v7

    .line 141
    :goto_3
    if-nez p2, :cond_5

    .line 143
    if-nez v0, :cond_5

    .line 145
    if-eqz p1, :cond_7

    .line 147
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 149
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 151
    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_6

    .line 157
    const/4 v5, 0x0

    .line 158
    const/16 v6, 0x12c

    .line 160
    const/4 v2, 0x1

    .line 161
    const/4 v3, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    move-object v1, p0

    .line 164
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V

    .line 167
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 169
    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_7

    .line 175
    const/4 v5, 0x0

    .line 176
    const/16 v6, 0x12c

    .line 178
    const/4 v2, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    const/4 v4, 0x0

    .line 181
    move-object v1, p0

    .line 182
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V

    .line 185
    :cond_7
    return-void
.end method
