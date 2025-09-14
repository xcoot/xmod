.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

.field public final MDNIE_SUPPORT_FUNCTION:I

.field public final NIGHT_MODE_MAX_INDEX:I

.field public final afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field public final mAdaptiveBlueLightFilterSupported:Z

.field public mAlwaysOnDisplayEnabled:Z

.field public mBlueFilterIndex:I

.field public mBlueLightFilterEnabled:Z

.field public mContentMode:I

.field public final mContext:Landroid/content/Context;

.field public final mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

.field public final mDisplayListener:Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayOn:Z

.field public mDisplayState:I

.field public mDisplayStatePrev:I

.field public mEnvironmentAdaptiveDisplayEnabled:Z

.field public final mNaturalGammaScreenModeSupported:Z

.field public mNightDimModeEnabled:Z

.field public final mNightDimSupported:Z

.field public mNightMode:Z

.field public mNightModeBlock:Z

.field public mNightModeIndex:I

.field public final mPresetAdjustWhiteRGB:[[[I

.field public mScreenMode:I

.field public mScreenModeSetting:I

.field public final mSupportAPmDNIe:Z

.field public final mSupportBlueFilter:Z

.field public final mSupportContentMode:Z

.field public final mSupportContentModeGame:Z

.field public final mSupportContentModeVideoEnhance:Z

.field public final mSupportLightNotificationMode:Z

.field public final mSupportScreeenReadingMode:Z

.field public final mSupportScreenMode:Z

.field public final mUseAfterimageCompensationServiceConfig:Z

.field public mVividnessIndex:I

.field public mWorkBlueFilter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "eng"

    .line 5
    .line 6
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeSetting:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 21
    .line 22
    const-string v2, "0"

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    .line 33
    .line 34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 64
    .line 65
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNaturalGammaScreenModeSupported:Z

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 86
    .line 87
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    .line 88
    .line 89
    const/4 v4, -0x1

    .line 90
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    .line 91
    .line 92
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 93
    .line 94
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 95
    .line 96
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 97
    .line 98
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 99
    .line 100
    const/4 v5, -0x2

    .line 101
    new-instance v6, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;

    .line 102
    .line 103
    invoke-direct {v6, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    new-instance v8, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 113
    .line 114
    invoke-direct {v8, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    .line 115
    .line 116
    .line 117
    and-int/lit8 v9, v2, 0x1

    .line 118
    .line 119
    if-eqz v9, :cond_0

    .line 120
    .line 121
    move v9, v3

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move v9, v0

    .line 124
    :goto_0
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 125
    .line 126
    and-int/lit8 v9, v2, 0x2

    .line 127
    .line 128
    if-eqz v9, :cond_1

    .line 129
    .line 130
    move v9, v3

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    move v9, v0

    .line 133
    :goto_1
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 134
    .line 135
    and-int/lit8 v9, v2, 0x4

    .line 136
    .line 137
    if-eqz v9, :cond_2

    .line 138
    .line 139
    move v9, v3

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    move v9, v0

    .line 142
    :goto_2
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 143
    .line 144
    and-int/lit8 v9, v2, 0x10

    .line 145
    .line 146
    if-eqz v9, :cond_3

    .line 147
    .line 148
    move v9, v3

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    move v9, v0

    .line 151
    :goto_3
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 152
    .line 153
    and-int/lit8 v9, v2, 0x20

    .line 154
    .line 155
    if-eqz v9, :cond_4

    .line 156
    .line 157
    move v9, v3

    .line 158
    goto :goto_4

    .line 159
    :cond_4
    move v9, v0

    .line 160
    :goto_4
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 161
    .line 162
    and-int/lit16 v9, v2, 0x1000

    .line 163
    .line 164
    if-eqz v9, :cond_5

    .line 165
    .line 166
    move v9, v3

    .line 167
    goto :goto_5

    .line 168
    :cond_5
    move v9, v0

    .line 169
    :goto_5
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 170
    .line 171
    const v9, 0x8000

    .line 172
    .line 173
    .line 174
    and-int/2addr v2, v9

    .line 175
    if-eqz v2, :cond_6

    .line 176
    .line 177
    move v2, v3

    .line 178
    goto :goto_6

    .line 179
    :cond_6
    move v2, v0

    .line 180
    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    .line 181
    .line 182
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-string v9, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    .line 187
    .line 188
    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const-string v9, "DDI"

    .line 193
    .line 194
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_7

    .line 199
    .line 200
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 201
    .line 202
    :cond_7
    const-string/jumbo v2, "screen_mode_setting"

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v7, v2, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    .line 211
    .line 212
    const-string/jumbo v2, "screen_mode_automatic_setting"

    .line 213
    .line 214
    .line 215
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v7, v2, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v2, "sec_display_temperature_red"

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v7, v2, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 230
    .line 231
    .line 232
    const-string/jumbo v2, "sec_display_temperature_green"

    .line 233
    .line 234
    .line 235
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v7, v2, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    .line 241
    .line 242
    const-string/jumbo v2, "sec_display_temperature_blue"

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v7, v2, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    .line 251
    .line 252
    const-string/jumbo v2, "sec_display_preset_index"

    .line 253
    .line 254
    .line 255
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v7, v2, v0, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 260
    .line 261
    .line 262
    const-string/jumbo v2, "vividness_intensity"

    .line 263
    .line 264
    .line 265
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v7, v2, v0, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    .line 271
    .line 272
    const-string v2, "blue_light_filter_night_dim"

    .line 273
    .line 274
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v7, v2, v0, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    .line 280
    .line 281
    const-string v2, "aod_show_state"

    .line 282
    .line 283
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v7, v2, v0, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    .line 289
    .line 290
    const-string v2, "ead_enabled"

    .line 291
    .line 292
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v7, v2, v0, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    .line 298
    .line 299
    new-instance v2, Landroid/content/IntentFilter;

    .line 300
    .line 301
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 305
    .line 306
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v4, "android.intent.action.SCREEN_ON"

    .line 310
    .line 311
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 315
    .line 316
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string v4, "android.intent.action.USER_PRESENT"

    .line 320
    .line 321
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-nez v4, :cond_8

    .line 329
    .line 330
    new-instance v4, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    .line 331
    .line 332
    invoke-direct {v4, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 343
    .line 344
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-lez v2, :cond_9

    .line 349
    .line 350
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 351
    .line 352
    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    .line 357
    .line 358
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-lez v2, :cond_a

    .line 363
    .line 364
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 365
    .line 366
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NATURAL_MODE_TYPE"

    .line 371
    .line 372
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-ne v0, v3, :cond_b

    .line 377
    .line 378
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNaturalGammaScreenModeSupported:Z

    .line 379
    .line 380
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 381
    .line 382
    if-eqz v0, :cond_c

    .line 383
    .line 384
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 385
    .line 386
    if-eqz v2, :cond_c

    .line 387
    .line 388
    const/16 v0, 0x132

    .line 389
    .line 390
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_c
    if-eqz v0, :cond_d

    .line 394
    .line 395
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 396
    .line 397
    if-nez v0, :cond_d

    .line 398
    .line 399
    const/16 v0, 0x66

    .line 400
    .line 401
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_d
    const/16 v0, 0xb

    .line 405
    .line 406
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 407
    .line 408
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v2, "SemMdnieMdnieManager Night mode Index : "

    .line 411
    .line 412
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 416
    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const-string v2, "SemMdnieManagerService"

    .line 425
    .line 426
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const v4, 0x1110014

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 441
    .line 442
    if-eqz v0, :cond_e

    .line 443
    .line 444
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-nez v0, :cond_e

    .line 449
    .line 450
    new-instance v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 451
    .line 452
    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;-><init>(Landroid/content/Context;)V

    .line 453
    .line 454
    .line 455
    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 456
    .line 457
    :cond_e
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 458
    .line 459
    if-nez v0, :cond_f

    .line 460
    .line 461
    const-string v0, "display"

    .line 462
    .line 463
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 468
    .line 469
    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 470
    .line 471
    invoke-virtual {v0, v6, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 472
    .line 473
    .line 474
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 475
    .line 476
    if-nez v0, :cond_10

    .line 477
    .line 478
    const-string v0, "display_aiqe"

    .line 479
    .line 480
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    check-cast p1, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 485
    .line 486
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .line 488
    goto :goto_8

    .line 489
    :catch_0
    const-string p1, "failed to registerProcessObserver"

    .line 490
    .line 491
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    :cond_10
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 495
    .line 496
    .line 497
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 498
    .line 499
    if-eqz p1, :cond_12

    .line 500
    .line 501
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNaturalGammaScreenModeSupported:Z

    .line 502
    .line 503
    if-eqz p1, :cond_11

    .line 504
    .line 505
    const-string p1, "AP setNaturalMode : DS"

    .line 506
    .line 507
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 511
    .line 512
    const-string v0, "DS"

    .line 513
    .line 514
    invoke-virtual {p1, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setNaturalMode(Ljava/lang/String;)Z

    .line 515
    .line 516
    .line 517
    goto :goto_9

    .line 518
    :cond_11
    const-string p1, "AP setNaturalMode : DM"

    .line 519
    .line 520
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 524
    .line 525
    const-string v0, "DM"

    .line 526
    .line 527
    invoke-virtual {p1, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setNaturalMode(Ljava/lang/String;)Z

    .line 528
    .line 529
    .line 530
    :cond_12
    :goto_9
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-eqz p1, :cond_16

    .line 535
    .line 536
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 537
    .line 538
    if-eqz p1, :cond_13

    .line 539
    .line 540
    const-string p1, "AP setByPassMode : true"

    .line 541
    .line 542
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 546
    .line 547
    invoke-virtual {p1, v3}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setByPassMode(Z)Z

    .line 548
    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_13
    const-string p1, "/sys/class/mdnie/mdnie/bypass"

    .line 552
    .line 553
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_14

    .line 558
    .line 559
    invoke-static {v3, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 560
    .line 561
    .line 562
    :cond_14
    const-string p1, "/sys/class/mdnie/mdnie1/bypass"

    .line 563
    .line 564
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_15

    .line 569
    .line 570
    invoke-static {v3, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    :cond_15
    const-string p1, "DDI setByPassMode : true"

    .line 574
    .line 575
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    :cond_16
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string/jumbo v0, "mMdnieWhiteRGBSupported - false, S_EAD - false, SemMdnieMdnieManager AFC config : "

    .line 581
    .line 582
    .line 583
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 587
    .line 588
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p0

    .line 595
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    const-string p0, "SemMdnieMdnieManagerService Init Success"

    .line 599
    .line 600
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    return-void
.end method

.method public static sysfsWrite(ILjava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "UTF-8"

    .line 24
    .line 25
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    move-object p1, v2

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_2
    move-exception p0

    .line 47
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_3
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_1
    return v1
.end method

.method public static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    new-instance v3, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    const-string p0, "UTF-8"

    .line 14
    .line 15
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    move-object v1, v2

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_2
    move-exception p0

    .line 37
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_3
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_1
    return v0
.end method


# virtual methods
.method public final afpcDataApply()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "afpcDataApply"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "SemMdnieManagerService"

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataApply()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final afpcDataOff()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "afpcDataOff"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "SemMdnieManagerService"

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataOff()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final afpcDataVerify()Z
    .locals 2

    .line 1
    const-string v0, "SemMdnieManagerService"

    .line 2
    .line 3
    const-string v1, "afpcDataVerify"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataVerify()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final afpcDataWrite()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "afpcDataWrite"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "SemMdnieManagerService"

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataWrite()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final afpcWorkOff()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "afpcWorkOff"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "SemMdnieManagerService"

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v1, "AfterimageCompensationService"

    .line 24
    .line 25
    const-string v2, "afpcWorkOff()"

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    return v0
.end method

.method public final checkScreenMode(I)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    if-eq p1, v3, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    if-eq p1, v2, :cond_1

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    move v4, v3

    .line 29
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    if-ne p1, v1, :cond_3

    .line 34
    .line 35
    move v4, v3

    .line 36
    :cond_3
    if-ne p1, v2, :cond_4

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    move v3, v4

    .line 40
    :goto_1
    return v3
.end method

.method public final disableNightMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "disableNightMode"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final enableNightMode(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "enableNightMode"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getContentMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getNightModeBlock()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string v2, "getNightModeBlock"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "getNightModeBlock : "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 18
    .line 19
    const-string v2, "SemMdnieManagerService"

    .line 20
    .line 21
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 22
    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 25
    .line 26
    return p0
.end method

.method public final getNightModeStep()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getNightModeStep : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 9
    .line 10
    const-string v2, "SemMdnieManagerService"

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    .line 16
    .line 17
    return p0
.end method

.method public final getScreenMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportedContentMode()[I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MDNIE_SUPPORT_FUNCTION ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "), mSupportContentMode ("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ")"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SemMdnieManagerService"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    move v2, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v2, v1

    .line 46
    :goto_0
    new-array v2, v2, [I

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    aput v1, v2, v1

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    aput p0, v2, p0

    .line 54
    .line 55
    const/4 p0, 0x2

    .line 56
    const/4 v1, 0x4

    .line 57
    aput v1, v2, p0

    .line 58
    .line 59
    const/4 p0, 0x3

    .line 60
    aput v0, v2, p0

    .line 61
    .line 62
    const/16 p0, 0x8

    .line 63
    .line 64
    aput p0, v2, v1

    .line 65
    .line 66
    const/4 p0, 0x5

    .line 67
    const/16 v0, 0x9

    .line 68
    .line 69
    aput v0, v2, p0

    .line 70
    .line 71
    :cond_1
    return-object v2
.end method

.method public final getSupportedScreenMode()[I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x4

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    move v5, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v5, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 18
    .line 19
    if-eqz v5, :cond_2

    .line 20
    .line 21
    move v5, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v5, v3

    .line 24
    :goto_0
    new-array v5, v5, [I

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    aput v3, v5, v3

    .line 30
    .line 31
    aput v6, v5, v6

    .line 32
    .line 33
    aput v1, v5, v1

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    aput v4, v5, v0

    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 39
    .line 40
    if-eqz p0, :cond_4

    .line 41
    .line 42
    aput v2, v5, v4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 46
    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    aput v4, v5, v3

    .line 50
    .line 51
    aput v2, v5, v6

    .line 52
    .line 53
    :cond_4
    :goto_1
    return-object v5
.end method

.method public final isContentModeSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final isNightModeSupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final isScreenModeSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final setColorFadeNightDim(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "blue_light_filter"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v1, v4, :cond_0

    .line 17
    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    .line 22
    .line 23
    const-string v1, "blue_light_filter_night_dim"

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v2

    .line 33
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    const-string v0, "SemMdnieManagerService"

    .line 42
    .line 43
    const-string/jumbo v1, "setColorFadeNightDim"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 52
    .line 53
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 54
    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_2
    iget p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    if-ne p1, v0, :cond_3

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 66
    .line 67
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0

    .line 74
    :cond_3
    return v2
.end method

.method public final setColorVision(ZII)Z
    .locals 2

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    const/16 p0, 0xc

    .line 4
    .line 5
    if-gt p2, p0, :cond_1

    .line 6
    .line 7
    if-ltz p3, :cond_1

    .line 8
    .line 9
    const/16 p0, 0x9

    .line 10
    .line 11
    if-gt p3, p0, :cond_1

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " "

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "/sys/class/mdnie/mdnie/color_lens"

    .line 45
    .line 46
    invoke-static {v0, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const-string v0, "/sys/class/mdnie/mdnie1/color_lens"

    .line 53
    .line 54
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-static {v0, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string/jumbo p0, "setColorVision : "

    .line 64
    .line 65
    .line 66
    const-string v0, " - "

    .line 67
    .line 68
    invoke-static {p2, p0, v0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "SemMdnieManagerService"

    .line 73
    .line 74
    invoke-static {p0, p3, p1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_1
    const/4 p0, 0x0

    .line 80
    return p0
.end method

.method public final setContentMode(I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x14

    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    if-eq p1, v1, :cond_0

    .line 29
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_0
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 44
    .line 45
    const-string v2, "SemMdnieManagerService"

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-string v1, "AP setContentMode : "

    .line 50
    .line 51
    invoke-static {p1, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setContentMode(I)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const-string v1, "/sys/class/mdnie/mdnie1/scenario"

    .line 69
    .line 70
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    const-string v1, "DDI setContentMode : "

    .line 80
    .line 81
    invoke-static {p1, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 85
    .line 86
    return v0

    .line 87
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 88
    return p0

    .line 89
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setEadMode(I[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setEadModeSub(I[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setExtraDimMode(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 2
    .line 3
    const-string v1, "SemMdnieManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AP setExtraDimMode : "

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setExtraDimMode(I)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "sys/class/mdnie/mdnie/extra_dim"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const-string/jumbo p0, "sys/class/mdnie/mdnie1/extra_dim"

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    const-string p0, "DDI setExtraDimMode : "

    .line 40
    .line 41
    invoke-static {p1, p0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final setHighBrightnessMode(III)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 2
    .line 3
    const-string v1, ", index : "

    .line 4
    .line 5
    const-string v2, ") lux : "

    .line 6
    .line 7
    const-string v3, "SemMdnieManagerService"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "AP setHighBrightnessMode id("

    .line 12
    .line 13
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, p3, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setHighBrightnessMode(I)Z

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-string p0, "/sys/class/lcd/panel/lux"

    .line 29
    .line 30
    invoke-static {p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x1

    .line 35
    if-ne p1, p0, :cond_2

    .line 36
    .line 37
    const-string p0, "/sys/class/lcd/panel1/lux"

    .line 38
    .line 39
    invoke-static {p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    const-string p0, "DDI setHighBrightnessMode id("

    .line 43
    .line 44
    invoke-static {p1, p2, p0, v2, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p3, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public final setHighDynamicRangeMode(Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "SemMdnieManagerService"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "AP setHighDynamicRangeMode : "

    .line 11
    .line 12
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setHighDynamicRangeMode(Z)Z

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    const-string/jumbo p0, "sys/class/mdnie/mdnie/hdr"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const-string/jumbo p0, "sys/class/mdnie/mdnie1/hdr"

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "DDI setHighDynamicRangeMode : "

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    return v1
.end method

.method public final setLightNotificationMode(Z)Z
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const-string p0, "/sys/class/mdnie/mdnie1/light_notification"

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v0, "setLightNotificationMode : "

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "SemMdnieManagerService"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string p0, "/sys/class/mdnie/mdnie/light_notification"

    .line 37
    .line 38
    invoke-static {p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final setNightDimOffMode(IZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string v2, "blue_light_filter_night_dim"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v3

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 22
    .line 23
    const-string v2, " "

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, p1, 0x66

    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    move v2, p1

    .line 76
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 77
    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    if-ltz p1, :cond_5

    .line 85
    .line 86
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 87
    .line 88
    if-gt p1, v4, :cond_5

    .line 89
    .line 90
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 91
    .line 92
    const-string v4, ", index : "

    .line 93
    .line 94
    const-string v5, "SemMdnieManagerService"

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "AP setNightMode : "

    .line 101
    .line 102
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 122
    .line 123
    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setBlueLightFilterMode(ZI)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const-string v2, "/sys/class/mdnie/mdnie/night_mode"

    .line 128
    .line 129
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    const-string v2, "/sys/class/mdnie/mdnie1/night_mode"

    .line 136
    .line 137
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    :cond_3
    const-string v2, "DDI setNightDimOffMode : "

    .line 147
    .line 148
    const-string v3, ", str : ("

    .line 149
    .line 150
    invoke-static {p1, v2, v4, v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v3, ")"

    .line 155
    .line 156
    invoke-static {v2, v0, v3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_2
    iput-boolean p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 160
    .line 161
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 162
    .line 163
    return v1

    .line 164
    :cond_5
    return v3
.end method

.method public final setNightMode(ZI)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "blue_light_filter_night_dim"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v1, v4, :cond_0

    .line 17
    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 22
    .line 23
    const-string v1, "aod_show_state"

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v4, :cond_1

    .line 30
    .line 31
    move v0, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 37
    .line 38
    const-string v3, " "

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 45
    .line 46
    if-eq v0, v4, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit16 v1, p2, 0xcc

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, p2, 0x66

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    move v1, p2

    .line 119
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 120
    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 124
    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    if-ltz p2, :cond_7

    .line 128
    .line 129
    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 130
    .line 131
    if-gt p2, v3, :cond_7

    .line 132
    .line 133
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 134
    .line 135
    const-string v3, ", index : "

    .line 136
    .line 137
    const-string v5, "SemMdnieManagerService"

    .line 138
    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "AP setNightMode : "

    .line 144
    .line 145
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 165
    .line 166
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setBlueLightFilterMode(ZI)Z

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    const-string v1, "/sys/class/mdnie/mdnie/night_mode"

    .line 171
    .line 172
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    const-string v1, "/sys/class/mdnie/mdnie1/night_mode"

    .line 179
    .line 180
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    :cond_5
    const-string v1, "DDI setNightMode : "

    .line 190
    .line 191
    const-string v2, ", str : ("

    .line 192
    .line 193
    invoke-static {p2, v1, v3, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const-string v2, ")"

    .line 198
    .line 199
    invoke-static {v1, v0, v2, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_6
    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 203
    .line 204
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 205
    .line 206
    return v4

    .line 207
    :cond_7
    return v2
.end method

.method public final setNightModeBlock(Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 7
    .line 8
    const-string/jumbo v3, "setNightModeBlock"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "setNightModeBlock : "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " - "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "SemMdnieManagerService"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->disableNightMode()Z

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 53
    .line 54
    return v0
.end method

.method public final setNightModeStep(I)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "setNightModeStep : "

    .line 2
    .line 3
    .line 4
    const-string v1, "SemMdnieManagerService"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public final setScreenMode(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 16
    .line 17
    const-string v1, "SemMdnieManagerService"

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "AP setScreenMode : "

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setScreenMode(I)Z

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/io/File;

    .line 32
    .line 33
    const-string v1, "/sys/class/sensors/light_sensor/screen_mode"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const-string v0, "/sys/class/mdnie/mdnie1/mode"

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    const-string v0, "DDI setScreenMode : "

    .line 68
    .line 69
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :cond_4
    const/4 p0, 0x0

    .line 77
    return p0
.end method

.method public final setWhiteRGB(IIIIII)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "setWhiteRGB("

    .line 2
    .line 3
    .line 4
    const-string v0, ","

    .line 5
    .line 6
    invoke-static {p1, p2, p0, v0, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p3, p4, v0, v0, p0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    const-string p1, ")"

    .line 14
    .line 15
    invoke-static {p5, p6, v0, p1, p0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "SemMdnieManagerService"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setmDNIeAccessibilityMode(IZ)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string/jumbo v1, "setmDNIeAccessibilityMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "setmDNIeAccessibilityMode("

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", "

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ")"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "SemMdnieManagerService"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final setmDNIeColorBlind(Z[I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string/jumbo v0, "setmDNIeColorBlind"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo p2, "setmDNIeColorBlind ("

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ")"

    .line 23
    .line 24
    const-string p2, "SemMdnieManagerService"

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final setmDNIeEmergencyMode(Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string/jumbo v1, "setmDNIeEmergencyMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "setmDNIeEmergencyMode ("

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ")"

    .line 23
    .line 24
    const-string v1, "SemMdnieManagerService"

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x4

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    move v1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, p0

    .line 36
    :goto_0
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "/sys/class/mdnie/mdnie1/accessibility"

    .line 43
    .line 44
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    move p0, v0

    .line 53
    :cond_1
    invoke-static {p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    and-int/2addr v1, p0

    .line 58
    :cond_2
    return v1
.end method

.method public final setmDNIeNegative(Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string/jumbo v1, "setmDNIeNegative"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "setmDNIeNegative ("

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ")"

    .line 23
    .line 24
    const-string v0, "SemMdnieManagerService"

    .line 25
    .line 26
    invoke-static {p0, p1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final setmDNIeScreenCurtain(Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    .line 4
    .line 5
    const-string/jumbo v1, "setmDNIeScreenCurtain"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "setmDNIeScreenCurtain ("

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ")"

    .line 23
    .line 24
    const-string v1, "SemMdnieManagerService"

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x3

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    move v1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, p0

    .line 36
    :goto_0
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "/sys/class/mdnie/mdnie1/accessibility"

    .line 43
    .line 44
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    move p0, v0

    .line 53
    :cond_1
    invoke-static {p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    and-int/2addr v1, p0

    .line 58
    :cond_2
    return v1
.end method

.method public final setting_is_changed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "sec_display_temperature_red"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v1, "sec_display_temperature_green"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string/jumbo v1, "sec_display_temperature_blue"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string/jumbo v1, "sec_display_preset_index"

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string/jumbo v1, "screen_mode_setting"

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeSetting:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "ead_enabled"

    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x1

    .line 81
    if-ne v0, v1, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move v1, v2

    .line 85
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string/jumbo v1, "vividness_intensity"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v1, "setting_is_changed - Screen Mode : "

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeSetting:I

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " , mMdnieWhiteRGBSupported : false , mEnvironmentAdaptiveDisplayEnabled : "

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    .line 121
    .line 122
    const-string v1, "SemMdnieManagerService"

    .line 123
    .line 124
    invoke-static {v1, v0, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final updateAlwaysOnDisplay(ZI)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 20
    .line 21
    iput p2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 31
    .line 32
    .line 33
    monitor-exit p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    :goto_0
    return-void
.end method
