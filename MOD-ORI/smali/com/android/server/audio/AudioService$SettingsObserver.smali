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

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7
    .line 8
    new-instance p2, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 17
    .line 18
    const-string/jumbo v0, "zen_mode"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 30
    .line 31
    const-string/jumbo v0, "zen_mode_config_etag"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    .line 43
    const-string/jumbo v0, "mute_alarm_stream_with_ringer_mode"

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    .line 55
    const-string/jumbo v0, "mode_ringer_streams_affected"

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    .line 67
    const-string/jumbo v0, "dock_audio_media_enabled"

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 78
    .line 79
    const-string/jumbo v0, "master_mono"

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, -0x1

    .line 87
    invoke-virtual {p2, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    .line 92
    const-string/jumbo v2, "master_balance"

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p2, v4, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    .line 104
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    .line 113
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 118
    .line 119
    .line 120
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    .line 122
    const-string/jumbo v0, "mono_audio_type"

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 133
    .line 134
    const-string/jumbo v0, "speaker_balance"

    .line 135
    .line 136
    .line 137
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const-string/jumbo p2, "encoded_surround_output"

    .line 152
    .line 153
    .line 154
    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput v0, p1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    .line 159
    .line 160
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    .line 162
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {v0, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 170
    .line 171
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    const-string/jumbo p2, "encoded_surround_output_enabled_formats"

    .line 177
    .line 178
    .line 179
    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    .line 187
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v0, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 195
    .line 196
    const-string/jumbo p2, "voice_interaction_service"

    .line 197
    .line 198
    .line 199
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 208
    .line 209
    new-instance p2, Landroid/os/Handler;

    .line 210
    .line 211
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 218
    .line 219
    const-string/jumbo v0, "multi_audio_focus_enabled"

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const/4 v1, 0x0

    .line 227
    const/4 v2, -0x1

    .line 228
    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    .line 230
    .line 231
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 232
    .line 233
    const-string/jumbo v0, "ear_shock_condition"

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    .line 242
    .line 243
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 244
    .line 245
    if-eqz p2, :cond_0

    .line 246
    .line 247
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 248
    .line 249
    const-string/jumbo v0, "translate_during_calls"

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 260
    .line 261
    const-string/jumbo p2, "translate_during_allow_apps"

    .line 262
    .line 263
    .line 264
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    .line 270
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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    .line 13
    const-string/jumbo v0, "multi_audio_focus_enabled"

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_0

    .line 23
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

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService;->setMultiAudioFocusEnabled(Z)V

    .line 30
    .line 31
    .line 32
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/PlatformTypeUtils;->getPlatformType(Landroid/content/Context;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 45
    .line 46
    iget v3, v2, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 47
    .line 48
    if-eq v3, p1, :cond_2

    .line 49
    .line 50
    iput p1, v2, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 51
    .line 52
    if-ne p1, v0, :cond_1

    .line 53
    .line 54
    sput-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 55
    .line 56
    :cond_1
    const-string p1, "AS.AudioService.CMC"

    .line 57
    .line 58
    invoke-virtual {v2, p1, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    .line 65
    const-string/jumbo v2, "ear_shock_condition"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
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

    .line 78
    .line 79
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mIsVolumeEffectOn:Z

    .line 80
    .line 81
    const/4 v9, 0x3

    .line 82
    if-eq p1, v2, :cond_5

    .line 83
    .line 84
    iput-boolean p1, v8, Lcom/android/server/audio/AudioService;->mIsVolumeEffectOn:Z

    .line 85
    .line 86
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v8, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 92
    .line 93
    iget p1, p1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 94
    .line 95
    if-ne p1, v9, :cond_4

    .line 96
    .line 97
    iget-boolean p1, v8, Lcom/android/server/audio/AudioService;->mIsVolumeEffectOn:Z

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->getEarProtectLimit()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    sub-int/2addr p1, v0

    .line 106
    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 111
    .line 112
    aget-object v3, v3, v9

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    mul-int/lit8 v4, p1, 0xa

    .line 119
    .line 120
    if-le v3, v4, :cond_4

    .line 121
    .line 122
    iget-object p1, v8, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 123
    .line 124
    invoke-virtual {p1, v9, v3, v2}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume(III)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 131
    .line 132
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    const v3, 0x103012b

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 141
    .line 142
    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    invoke-direct {v3, v5, p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    .line 150
    .line 151
    const/4 v3, 0x3

    .line 152
    const/4 v7, 0x0

    .line 153
    const/high16 v5, 0x100000

    .line 154
    .line 155
    const-string v6, "android"

    .line 156
    .line 157
    move-object v2, v8

    .line 158
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-boolean p1, v8, Lcom/android/server/audio/AudioService;->mVolumeLimitOn:Z

    .line 162
    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    const-string p1, "android"

    .line 166
    .line 167
    invoke-virtual {v8, p1}, Lcom/android/server/audio/AudioService;->setVolumeLevelToLimit(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 171
    .line 172
    if-eqz p1, :cond_b

    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 177
    .line 178
    const-string/jumbo v2, "translate_during_calls"

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    move v1, v0

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 191
    .line 192
    const-string/jumbo v0, "translate_during_allow_apps"

    .line 193
    .line 194
    .line 195
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 200
    .line 201
    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mLiveTranslatorDuringCall:Z

    .line 202
    .line 203
    if-ne v1, v2, :cond_7

    .line 204
    .line 205
    if-eqz p1, :cond_b

    .line 206
    .line 207
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mLiveTranslatorAllowApps:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_b

    .line 214
    .line 215
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-ne v0, v9, :cond_a

    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 226
    .line 227
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mExternalVoipModeOwner:Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 228
    .line 229
    if-eqz v2, :cond_8

    .line 230
    .line 231
    iget-object v0, v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_9
    const-string v0, ""

    .line 244
    .line 245
    :goto_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

    .line 248
    .line 249
    invoke-virtual {v2, v9, v0}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->updateAudioMode(ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 253
    .line 254
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mLiveTranslatorDuringCall:Z

    .line 255
    .line 256
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mLiveTranslatorAllowApps:Ljava/lang/String;

    .line 257
    .line 258
    :cond_b
    return-void

    .line 259
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 265
    .line 266
    monitor-enter p1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    const/4 v1, 0x0

    .line 274
    if-eqz v0, :cond_c

    .line 275
    .line 276
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 283
    .line 284
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

    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 296
    .line 297
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 298
    .line 299
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 303
    .line 304
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 305
    .line 306
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateEncodedSurroundOutput()V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 313
    .line 314
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 315
    .line 316
    iget-boolean v3, v0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    .line 317
    .line 318
    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 319
    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 322
    .line 323
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->updateAssistantUIdLocked(Z)V

    .line 324
    .line 325
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

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "encoded_surround_output"

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 19
    .line 20
    iget v3, v1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    .line 21
    .line 22
    if-eq v3, v0, :cond_0

    .line 23
    .line 24
    const-string v2, "SettingsObserver"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 32
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

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 43
    .line 44
    iput v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    .line 51
    .line 52
    :goto_0
    return-void
.end method
