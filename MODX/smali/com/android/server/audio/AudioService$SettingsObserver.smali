.class public final Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 5

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->$r8$classId:I

    .line 3
    packed-switch p2, :pswitch_data_0

    .line 6
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 8
    new-instance p2, Landroid/os/Handler;

    .line 10
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 13
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 16
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 18
    const-string/jumbo v0, "zen_mode"

    .line 21
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    const-string/jumbo v0, "zen_mode_config_etag"

    .line 34
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    const-string/jumbo v0, "mute_alarm_stream_with_ringer_mode"

    .line 46
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    const-string/jumbo v0, "mode_ringer_streams_affected"

    .line 58
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    const-string/jumbo v0, "dock_audio_media_enabled"

    .line 70
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    const-string/jumbo v0, "master_mono"

    .line 82
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    move-result-object v2

    .line 86
    const/4 v3, -0x1

    .line 87
    invoke-virtual {p2, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    const-string/jumbo v2, "master_balance"

    .line 95
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p2, v4, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    const-string/jumbo v0, "mono_audio_type"

    .line 125
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 132
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 134
    const-string/jumbo v0, "speaker_balance"

    .line 137
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 146
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    const-string/jumbo p2, "encoded_surround_output"

    .line 154
    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 157
    move-result v0

    .line 158
    iput v0, p1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    .line 160
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 162
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {v0, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 171
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    const-string/jumbo p2, "encoded_surround_output_enabled_formats"

    .line 179
    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v0, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 196
    const-string/jumbo p2, "voice_interaction_service"

    .line 199
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    return-void

    .line 207
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 209
    new-instance p2, Landroid/os/Handler;

    .line 211
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 217
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 219
    const-string/jumbo v0, "multi_audio_focus_enabled"

    .line 222
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 225
    move-result-object v0

    .line 226
    const/4 v1, 0x0

    .line 227
    const/4 v2, -0x1

    .line 228
    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 231
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    const-string/jumbo v0, "ear_shock_condition"

    .line 236
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 243
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 245
    if-eqz p2, :cond_0

    .line 247
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 249
    const-string/jumbo v0, "translate_during_calls"

    .line 252
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 259
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 261
    const-string/jumbo p2, "translate_during_allow_apps"

    .line 264
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    :cond_0
    return-void

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 11
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 13
    const-string/jumbo v0, "multi_audio_focus_enabled"

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    move p1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v1

    .line 27
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 29
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService;->setMultiAudioFocusEnabled(Z)V

    .line 32
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 34
    if-eqz p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 38
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/PlatformTypeUtils;->getPlatformType(Landroid/content/Context;)I

    .line 43
    move-result p1

    .line 44
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 46
    iget v3, v2, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 48
    if-eq v3, p1, :cond_2

    .line 50
    iput p1, v2, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 52
    if-ne p1, v0, :cond_1

    .line 54
    sput-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 56
    :cond_1
    const-string p1, "AS.AudioService.CMC"

    .line 58
    invoke-virtual {v2, p1, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(Ljava/lang/String;Z)V

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 63
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    const-string/jumbo v2, "ear_shock_condition"

    .line 68
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 74
    move p1, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move p1, v1

    .line 77
    :goto_1
    iget-object v8, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 79
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mIsVolumeEffectOn:Z

    .line 81
    const/4 v9, 0x3

    .line 82
    if-eq p1, v2, :cond_5

    .line 84
    iput-boolean p1, v8, Lcom/android/server/audio/AudioService;->mIsVolumeEffectOn:Z

    .line 86
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 88
    invoke-virtual {v2, p1}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex(Z)V

    .line 91
    iget-object p1, v8, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 93
    iget p1, p1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 95
    if-ne p1, v9, :cond_4

    .line 97
    iget-boolean p1, v8, Lcom/android/server/audio/AudioService;->mIsVolumeEffectOn:Z

    .line 99
    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->getEarProtectLimit()I

    .line 104
    move-result p1

    .line 105
    sub-int/2addr p1, v0

    .line 106
    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 109
    move-result v2

    .line 110
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 112
    aget-object v3, v3, v9

    .line 114
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 117
    move-result v3

    .line 118
    mul-int/lit8 v4, p1, 0xa

    .line 120
    if-le v3, v4, :cond_4

    .line 122
    iget-object p1, v8, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 124
    invoke-virtual {p1, v9, v3, v2}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume(III)Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 130
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 132
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 134
    const v3, 0x103012b

    .line 137
    invoke-direct {p1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 140
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 142
    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;

    .line 144
    const/4 v5, 0x0

    .line 145
    invoke-direct {v3, v5, p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 148
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    const/4 v3, 0x3

    .line 152
    const/4 v7, 0x0

    .line 153
    const/high16 v5, 0x100000

    .line 155
    const-string v6, "android"

    .line 157
    move-object v2, v8

    .line 158
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_4
    iget-boolean p1, v8, Lcom/android/server/audio/AudioService;->mVolumeLimitOn:Z

    .line 163
    if-eqz p1, :cond_5

    .line 165
    const-string p1, "android"

    .line 167
    invoke-virtual {v8, p1}, Lcom/android/server/audio/AudioService;->setVolumeLevelToLimit(Ljava/lang/String;)V

    .line 170
    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 172
    if-eqz p1, :cond_b

    .line 174
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 176
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    const-string/jumbo v2, "translate_during_calls"

    .line 181
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_6

    .line 187
    move v1, v0

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 190
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 192
    const-string/jumbo v0, "translate_during_allow_apps"

    .line 195
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 201
    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mLiveTranslatorDuringCall:Z

    .line 203
    if-ne v1, v2, :cond_7

    .line 205
    if-eqz p1, :cond_b

    .line 207
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mLiveTranslatorAllowApps:Ljava/lang/String;

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_b

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 217
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 222
    move-result v0

    .line 223
    if-ne v0, v9, :cond_a

    .line 225
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 227
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mExternalVoipModeOwner:Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 229
    if-eqz v2, :cond_8

    .line 231
    iget-object v0, v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 233
    goto :goto_2

    .line 234
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_9

    .line 240
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 242
    goto :goto_2

    .line 243
    :cond_9
    const-string v0, ""

    .line 245
    :goto_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 247
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

    .line 249
    invoke-virtual {v2, v9, v0}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->updateAudioMode(ILjava/lang/String;)V

    .line 252
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 254
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mLiveTranslatorDuringCall:Z

    .line 256
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mLiveTranslatorAllowApps:Ljava/lang/String;

    .line 258
    :cond_b
    return-void

    .line 259
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 262
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 264
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 266
    monitor-enter p1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 269
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 272
    move-result v0

    .line 273
    const/4 v1, 0x0

    .line 274
    if-eqz v0, :cond_c

    .line 276
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 278
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 281
    move-result v2

    .line 282
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 285
    goto :goto_3

    .line 286
    :catchall_0
    move-exception p0

    .line 287
    goto :goto_4

    .line 288
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 290
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 292
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 297
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 299
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 304
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 306
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateEncodedSurroundOutput()V

    .line 312
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 314
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 316
    iget-boolean v3, v0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    .line 318
    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 321
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 323
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->updateAssistantUIdLocked(Z)V

    .line 326
    monitor-exit p1

    .line 327
    return-void

    .line 328
    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    throw p0

    .line 330
    nop

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateEncodedSurroundOutput()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 5
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo v1, "encoded_surround_output"

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 20
    iget v3, v1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    .line 22
    if-eq v3, v0, :cond_0

    .line 24
    const-string v2, "SettingsObserver"

    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 31
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v3, 0x6

    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 42
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 44
    iput v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    .line 52
    :goto_0
    return-void
.end method
