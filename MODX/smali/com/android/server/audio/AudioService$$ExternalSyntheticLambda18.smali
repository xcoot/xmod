.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/audio/AudioService;

    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget v0, v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;->f$1:I

    .line 8
    const-string v3, "APP_LIST_VERSION"

    .line 10
    const v4, 0x107000f

    .line 13
    const-string/jumbo v5, "voip_live_translate_allow"

    .line 16
    const-string v6, "SoundAppPolicyManager"

    .line 18
    const-wide/16 v7, 0x100

    .line 20
    const v9, 0x788659ac

    .line 23
    if-le v9, v0, :cond_0

    .line 25
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 27
    iget-object v10, v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 29
    const-string/jumbo v11, "setDefaultAllowList"

    .line 32
    invoke-static {v7, v8, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 35
    :try_start_0
    const-string v11, "SoundAppPolicy setDefaultWhiteList()"

    .line 37
    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v10}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 43
    const-string/jumbo v11, "bt_game_latency_deny"

    .line 46
    const v12, 0x1070009

    .line 49
    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 52
    const-string/jumbo v11, "delay_loss_audio_focus"

    .line 55
    const v12, 0x107000a

    .line 58
    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 61
    const-string/jumbo v11, "karaoke_allow"

    .line 64
    const v12, 0x107000b

    .line 67
    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 70
    const-string/jumbo v11, "karaoke_listenback_allow"

    .line 73
    const v12, 0x107000c

    .line 76
    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 79
    const-string/jumbo v11, "media_button_deny"

    .line 82
    const v12, 0x107000d

    .line 85
    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 88
    const-string/jumbo v11, "virtual_vibration_sound_allowance"

    .line 91
    const v12, 0x107000e

    .line 94
    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 97
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    .line 100
    invoke-virtual {v10, v9, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 111
    throw v0

    .line 112
    :cond_0
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 114
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    const-string v9, "SoundAppPolicy APP_LIST_VERSION ="

    .line 118
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v9, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 123
    const/4 v10, 0x0

    .line 124
    invoke-virtual {v9, v10, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    .line 127
    move-result v3

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    const-string v3, "AS.AudioService"

    .line 137
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 142
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getAppList()Ljava/util/Hashtable;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->setBtGameLatencyList(Ljava/util/Hashtable;)V

    .line 149
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 151
    if-eqz v0, :cond_7

    .line 153
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 155
    const-string v9, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    .line 157
    const/4 v11, -0x1

    .line 158
    invoke-virtual {v0, v11, v9}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    .line 161
    move-result v0

    .line 162
    const-string v12, "CallPplicy LIVE_TRANSLATE_ALLOW_LIST_VERSION ="

    .line 164
    invoke-static {v0, v12, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eq v0, v11, :cond_5

    .line 169
    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 171
    iget-object v0, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_4

    .line 179
    :try_start_1
    iget-object v11, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    const-string/jumbo v12, "call_policy_category_packages"

    .line 184
    const-string v0, "_package"

    .line 186
    const-string v13, "_category"

    .line 188
    filled-new-array {v0, v13}, [Ljava/lang/String;

    .line 191
    move-result-object v13

    .line 192
    const/16 v16, 0x0

    .line 194
    const/16 v17, 0x0

    .line 196
    const/16 v18, 0x0

    .line 198
    const/4 v14, 0x0

    .line 199
    const/4 v15, 0x0

    .line 200
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 203
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_2

    .line 210
    :cond_1
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v12

    .line 218
    iget-object v13, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 220
    new-instance v14, Landroid/util/Pair;

    .line 222
    invoke-direct {v14, v0, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 231
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    if-nez v0, :cond_1

    .line 234
    goto :goto_1

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    move-object v12, v0

    .line 237
    goto :goto_2

    .line 238
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 241
    goto :goto_5

    .line 242
    :catch_0
    move-exception v0

    .line 243
    goto :goto_4

    .line 244
    :goto_2
    if-eqz v11, :cond_3

    .line 246
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    goto :goto_3

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    move-object v11, v0

    .line 252
    :try_start_5
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 255
    :cond_3
    :goto_3
    throw v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 256
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v12, "initCallPolicyAllowListFromDb error "

    .line 261
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v12, "AudioService.DB"

    .line 266
    invoke-static {v0, v11, v12}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 269
    :cond_4
    :goto_5
    iget-object v0, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 271
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 274
    move-result v0

    .line 275
    xor-int/2addr v0, v1

    .line 276
    if-nez v0, :cond_7

    .line 278
    :cond_5
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 280
    iget-object v2, v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 282
    const-string/jumbo v3, "setDefaultCallPolicyAllowList"

    .line 285
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 288
    :try_start_6
    const-string/jumbo v3, "setDefaultCallPolicyAllowList()"

    .line 291
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetCallPolicyTable()V

    .line 297
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 304
    move-result-object v3

    .line 305
    array-length v4, v3

    .line 306
    move v6, v10

    .line 307
    :goto_6
    if-ge v6, v4, :cond_6

    .line 309
    aget-object v7, v3, v6

    .line 311
    invoke-virtual {v2, v7, v5}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putCallPolicyAllowList(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    add-int/2addr v6, v1

    .line 315
    goto :goto_6

    .line 316
    :cond_6
    invoke-virtual {v2, v10, v9}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 319
    iput v10, v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 324
    goto :goto_7

    .line 325
    :catchall_3
    move-exception v0

    .line 326
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 329
    throw v0

    .line 330
    :cond_7
    :goto_7
    return-void
.end method
