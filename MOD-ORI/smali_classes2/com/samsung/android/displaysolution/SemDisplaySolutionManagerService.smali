.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final BURN_IN_APPLY_COUNT:Ljava/lang/String;

.field public final BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

.field public final DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public final DOU_BRIGHTNESS_SUPPORT_VALUE:I

.field public final DOU_VERSION:I

.field public final IRC_MODE_NODE:Ljava/lang/String;

.field public final IRC_MODE_SUB_NODE:Ljava/lang/String;

.field public final SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field public final adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

.field public final ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

.field public mAdaptiveScreenModeEnabled:Z

.field public final mAfcType:I

.field public mAppBrightnessScale:Z

.field public mAutoBrightnessModeEnabled:Z

.field public mAutoCurrentLimitOffEnable:Z

.field public final mBrightnessBacklightValueStringArray:[Ljava/lang/String;

.field public final mBrightnessCameraAppArray:[F

.field public mBrightnessCompensation:F

.field public final mBrightnessExtraBrightnessArray:[F

.field public final mBrightnessGalleryAppArray:[F

.field public final mBrightnessNitsValueStringArray:[Ljava/lang/String;

.field public final mBrightnessOverHeatAppArray:[F

.field public final mBrightnessSamsungVideoAppArray:[F

.field public final mBrightnessVideoEnhancerArray:[F

.field public mBrowserAppBrightnessControl:Z

.field public mBurnInPrevention:Z

.field public final mBurnInScaleFactorStringArray:[Ljava/lang/String;

.field public final mBurnInScaleFactorValueArray:[F

.field public final mCameraAppBrightnessStringArray:[Ljava/lang/String;

.field public mCameraEnable:Z

.field public mColorBlind:Z

.field public final mContext:Landroid/content/Context;

.field public mDouAppEnable:Z

.field public mExtraBrightness:Z

.field public mExtraBrightnessModeEnabled:Z

.field public final mExtraBrightnessStringArray:[Ljava/lang/String;

.field public final mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

.field public final mGalleryAppBrightnessStringArray:[Ljava/lang/String;

.field public mGalleryEnable:Z

.field public final mGammaArray:[F

.field public final mGammaStringArray:[Ljava/lang/String;

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeScaleFactorValue:F

.field public mIsFolded:Z

.field public mLastScaleFactorValue:F

.field public mMSCSEnable:Z

.field public mName:Ljava/lang/String;

.field public mOnPixelRatioValue:Ljava/lang/String;

.field public final mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRealHDR:Z

.field public final mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

.field public mScaleFactor:F

.field public final mScaleFactorStringArray:[Ljava/lang/String;

.field public final mScaleFactorValueArray:[F

.field public mSettingValue:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public final mUseEyeComfortSolutionServiceConfig:Z

.field public mVideoEnable:Z

.field public final mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

.field public final mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field public temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

.field public temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_BURNIN_PREVENTION_ON:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

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
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 46
    .line 47
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 48
    .line 49
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 50
    .line 51
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 52
    .line 53
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 54
    .line 55
    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    .line 57
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 58
    .line 59
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 60
    .line 61
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 62
    .line 63
    const-string v2, "/sys/class/lcd/panel/irc_mode"

    .line 64
    .line 65
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "/sys/class/lcd/panel1/irc_mode"

    .line 68
    .line 69
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 70
    .line 71
    const-string v2, "/efs/afc/apply_count"

    .line 72
    .line 73
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "/efs/afc1/apply_count"

    .line 76
    .line 77
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    .line 78
    .line 79
    const-string/jumbo v2, "ro.build.scafe.version"

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const v3, 0x11101e1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const v4, 0x1110017

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const v5, 0x1110061

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const v6, 0x10e0137

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const v7, 0x1070051

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const v7, 0x107004f

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const v7, 0x1070050

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    const v7, 0x1070065

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    const v7, 0x107006a

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    const v7, 0x1070048

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const v7, 0x107007d

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const v7, 0x107007b

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const v7, 0x1070086

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const v7, 0x107007f

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    const v7, 0x1070080

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    const v7, 0x10e0068

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    const v7, 0x10e0067

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 299
    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    const v7, 0x10e0099

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    const v7, 0x10e000c

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 325
    .line 326
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    const-string v7, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 331
    .line 332
    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    const/4 v7, 0x1

    .line 337
    if-lez v6, :cond_0

    .line 338
    .line 339
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 340
    .line 341
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    const-string v8, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    .line 346
    .line 347
    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    const-string v8, "DDI"

    .line 352
    .line 353
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    if-eqz v2, :cond_1

    .line 357
    .line 358
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 359
    .line 360
    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 361
    .line 362
    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    .line 363
    .line 364
    .line 365
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 366
    .line 367
    :cond_1
    if-eqz v3, :cond_2

    .line 368
    .line 369
    new-instance v6, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 370
    .line 371
    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;-><init>(Landroid/content/Context;)V

    .line 372
    .line 373
    .line 374
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 375
    .line 376
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 377
    .line 378
    if-eqz v6, :cond_3

    .line 379
    .line 380
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 381
    .line 382
    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;-><init>(Landroid/content/Context;)V

    .line 383
    .line 384
    .line 385
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 386
    .line 387
    :cond_3
    if-eqz v4, :cond_4

    .line 388
    .line 389
    new-instance v4, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 390
    .line 391
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v6, "eng"

    .line 395
    .line 396
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    new-instance v6, Landroid/os/HandlerThread;

    .line 402
    .line 403
    const-string v8, "BigDataLoggingServiceThread"

    .line 404
    .line 405
    invoke-direct {v6, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 409
    .line 410
    .line 411
    new-instance v8, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    .line 412
    .line 413
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    const/4 v9, 0x0

    .line 418
    invoke-direct {v8, v6, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    const v8, 0x1110061

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    const-string/jumbo v8, "sys.bigdatalogging.bdlon"

    .line 433
    .line 434
    .line 435
    const-string v9, "false"

    .line 436
    .line 437
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance v9, Landroid/content/IntentFilter;

    .line 441
    .line 442
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    .line 446
    .line 447
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    const-string v10, "android.intent.action.SCREEN_ON"

    .line 451
    .line 452
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const-string v10, "android.intent.action.SCREEN_OFF"

    .line 456
    .line 457
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v10, "android.intent.action.USER_PRESENT"

    .line 461
    .line 462
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    new-instance v10, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    .line 466
    .line 467
    invoke-direct {v10, v4}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    .line 472
    .line 473
    if-eqz v6, :cond_4

    .line 474
    .line 475
    const-string/jumbo p1, "true"

    .line 476
    .line 477
    .line 478
    invoke-static {v8, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_4
    const/16 p1, 0xff

    .line 482
    .line 483
    if-le v5, p1, :cond_5

    .line 484
    .line 485
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 486
    .line 487
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string/jumbo v4, "mUseMdnieScenarioControlServiceConfig : "

    .line 490
    .line 491
    .line 492
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    const-string v4, "SemDisplaySolutionManagerService"

    .line 503
    .line 504
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string/jumbo v6, "mUseAdaptiveDisplaySolutionServiceConfig : "

    .line 510
    .line 511
    .line 512
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    new-instance p1, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    const-string/jumbo v3, "mUseEyeComfortSolutionServiceConfig : "

    .line 528
    .line 529
    .line 530
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 534
    .line 535
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string/jumbo v3, "mUseBigDataLoggingServiceConfig : "

    .line 548
    .line 549
    .line 550
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string/jumbo v2, "mScreenBrightnessExtendedMaximumConfig : "

    .line 566
    .line 567
    .line 568
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    new-array p1, v7, [F

    .line 582
    .line 583
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 584
    .line 585
    move p1, v1

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    .line 587
    .line 588
    array-length v3, v2

    .line 589
    if-ge p1, v3, :cond_6

    .line 590
    .line 591
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 592
    .line 593
    aget-object v2, v2, p1

    .line 594
    .line 595
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    aput v2, v3, p1

    .line 600
    .line 601
    add-int/lit8 p1, p1, 0x1

    .line 602
    .line 603
    goto :goto_0

    .line 604
    :cond_6
    const/16 p1, 0xa

    .line 605
    .line 606
    new-array p1, p1, [F

    .line 607
    .line 608
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 609
    .line 610
    move p1, v1

    .line 611
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    .line 612
    .line 613
    array-length v3, v2

    .line 614
    if-ge p1, v3, :cond_7

    .line 615
    .line 616
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 617
    .line 618
    aget-object v2, v2, p1

    .line 619
    .line 620
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    aput v2, v3, p1

    .line 625
    .line 626
    add-int/lit8 p1, p1, 0x1

    .line 627
    .line 628
    goto :goto_1

    .line 629
    :cond_7
    new-array p1, v7, [F

    .line 630
    .line 631
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 632
    .line 633
    move p1, v1

    .line 634
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    .line 635
    .line 636
    array-length v3, v2

    .line 637
    if-ge p1, v3, :cond_8

    .line 638
    .line 639
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 640
    .line 641
    aget-object v2, v2, p1

    .line 642
    .line 643
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    aput v2, v3, p1

    .line 648
    .line 649
    add-int/lit8 p1, p1, 0x1

    .line 650
    .line 651
    goto :goto_2

    .line 652
    :cond_8
    new-array p1, v7, [F

    .line 653
    .line 654
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 655
    .line 656
    move p1, v1

    .line 657
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    .line 658
    .line 659
    array-length v3, v2

    .line 660
    if-ge p1, v3, :cond_9

    .line 661
    .line 662
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 663
    .line 664
    aget-object v2, v2, p1

    .line 665
    .line 666
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    aput v2, v3, p1

    .line 671
    .line 672
    add-int/lit8 p1, p1, 0x1

    .line 673
    .line 674
    goto :goto_3

    .line 675
    :cond_9
    new-array p1, v7, [F

    .line 676
    .line 677
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 678
    .line 679
    move p1, v1

    .line 680
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    .line 681
    .line 682
    array-length v3, v2

    .line 683
    if-ge p1, v3, :cond_a

    .line 684
    .line 685
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 686
    .line 687
    aget-object v2, v2, p1

    .line 688
    .line 689
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    aput v2, v3, p1

    .line 694
    .line 695
    add-int/lit8 p1, p1, 0x1

    .line 696
    .line 697
    goto :goto_4

    .line 698
    :cond_a
    new-array p1, v7, [F

    .line 699
    .line 700
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 701
    .line 702
    move p1, v1

    .line 703
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    .line 704
    .line 705
    array-length v3, v2

    .line 706
    if-ge p1, v3, :cond_b

    .line 707
    .line 708
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 709
    .line 710
    aget-object v2, v2, p1

    .line 711
    .line 712
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    aput v2, v3, p1

    .line 717
    .line 718
    add-int/lit8 p1, p1, 0x1

    .line 719
    .line 720
    goto :goto_5

    .line 721
    :cond_b
    new-array p1, v7, [F

    .line 722
    .line 723
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 724
    .line 725
    move p1, v1

    .line 726
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    .line 727
    .line 728
    array-length v3, v2

    .line 729
    if-ge p1, v3, :cond_c

    .line 730
    .line 731
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 732
    .line 733
    aget-object v2, v2, p1

    .line 734
    .line 735
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    aput v2, v3, p1

    .line 740
    .line 741
    add-int/lit8 p1, p1, 0x1

    .line 742
    .line 743
    goto :goto_6

    .line 744
    :cond_c
    const/4 p1, 0x2

    .line 745
    new-array p1, p1, [F

    .line 746
    .line 747
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 748
    .line 749
    move p1, v1

    .line 750
    :goto_7
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    .line 751
    .line 752
    array-length v3, v2

    .line 753
    if-ge p1, v3, :cond_d

    .line 754
    .line 755
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 756
    .line 757
    aget-object v2, v2, p1

    .line 758
    .line 759
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    aput v2, v3, p1

    .line 764
    .line 765
    add-int/lit8 p1, p1, 0x1

    .line 766
    .line 767
    goto :goto_7

    .line 768
    :cond_d
    new-array p1, v7, [F

    .line 769
    .line 770
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 771
    .line 772
    move p1, v1

    .line 773
    :goto_8
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    .line 774
    .line 775
    array-length v3, v2

    .line 776
    if-ge p1, v3, :cond_e

    .line 777
    .line 778
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 779
    .line 780
    aget-object v2, v2, p1

    .line 781
    .line 782
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    aput v2, v3, p1

    .line 787
    .line 788
    add-int/lit8 p1, p1, 0x1

    .line 789
    .line 790
    goto :goto_8

    .line 791
    :cond_e
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    .line 792
    .line 793
    new-instance v2, Landroid/os/Handler;

    .line 794
    .line 795
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 796
    .line 797
    .line 798
    invoke-direct {p1, p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    .line 799
    .line 800
    .line 801
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 802
    .line 803
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 808
    .line 809
    const-string/jumbo v5, "power"

    .line 810
    .line 811
    .line 812
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    check-cast v3, Landroid/os/PowerManager;

    .line 817
    .line 818
    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 819
    .line 820
    const-string v3, "high_brightness_mode_pms_enter"

    .line 821
    .line 822
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    const/4 v5, -0x1

    .line 827
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 828
    .line 829
    .line 830
    const-string/jumbo v3, "screen_mode_automatic_setting"

    .line 831
    .line 832
    .line 833
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 838
    .line 839
    .line 840
    const-string/jumbo v3, "screen_extra_brightness"

    .line 841
    .line 842
    .line 843
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 848
    .line 849
    .line 850
    const-string/jumbo v3, "screen_brightness_mode"

    .line 851
    .line 852
    .line 853
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 858
    .line 859
    .line 860
    const-string v3, "blue_light_filter"

    .line 861
    .line 862
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 867
    .line 868
    .line 869
    const-string v3, "blue_light_filter_night_dim"

    .line 870
    .line 871
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 876
    .line 877
    .line 878
    const-string/jumbo p1, "registerDisplayStateListener"

    .line 879
    .line 880
    .line 881
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .line 883
    .line 884
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    .line 885
    .line 886
    invoke-direct {p1, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    .line 887
    .line 888
    .line 889
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    .line 890
    .line 891
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    .line 896
    .line 897
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    .line 901
    .line 902
    .line 903
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 904
    .line 905
    .line 906
    move-result-object p1

    .line 907
    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    .line 908
    .line 909
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 910
    .line 911
    .line 912
    move-result p1

    .line 913
    if-eqz p1, :cond_10

    .line 914
    .line 915
    new-instance p1, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    const-string v0, "mAutoBrightnessModeEnabled : "

    .line 918
    .line 919
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 923
    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    const-string v0, " , mExtraBrightnessModeEnabled : "

    .line 928
    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 933
    .line 934
    invoke-static {v4, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 935
    .line 936
    .line 937
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 938
    .line 939
    if-nez p1, :cond_f

    .line 940
    .line 941
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 942
    .line 943
    if-eqz p1, :cond_f

    .line 944
    .line 945
    const-string p1, "extra_brightness_on"

    .line 946
    .line 947
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    goto :goto_9

    .line 951
    :cond_f
    const-string p1, "extra_brightness_off"

    .line 952
    .line 953
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    :cond_10
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    const-string v0, "mHighBrightnessModeEnabled : "

    .line 959
    .line 960
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 964
    .line 965
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v0, " , mAdaptiveScreenModeEnabled : "

    .line 969
    .line 970
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 974
    .line 975
    invoke-static {v4, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 976
    .line 977
    .line 978
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 979
    .line 980
    if-nez p1, :cond_12

    .line 981
    .line 982
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 983
    .line 984
    if-nez p1, :cond_12

    .line 985
    .line 986
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 987
    .line 988
    invoke-static {v7, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 989
    .line 990
    .line 991
    new-instance p1, Ljava/io/File;

    .line 992
    .line 993
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 994
    .line 995
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 999
    .line 1000
    .line 1001
    move-result p1

    .line 1002
    if-eqz p1, :cond_11

    .line 1003
    .line 1004
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1005
    .line 1006
    invoke-static {v7, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 1007
    .line 1008
    .line 1009
    :cond_11
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 1010
    .line 1011
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .line 1013
    .line 1014
    goto :goto_a

    .line 1015
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 1016
    .line 1017
    invoke-static {v1, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 1018
    .line 1019
    .line 1020
    new-instance p1, Ljava/io/File;

    .line 1021
    .line 1022
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 1028
    .line 1029
    .line 1030
    move-result p1

    .line 1031
    if-eqz p1, :cond_13

    .line 1032
    .line 1033
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1034
    .line 1035
    invoke-static {v1, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 1036
    .line 1037
    .line 1038
    :cond_13
    const-string p0, "IRC Mode : moderato_mode"

    .line 1039
    .line 1040
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    .line 1042
    .line 1043
    :goto_a
    return-void
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "File Close error"

    .line 15
    .line 16
    const-string v3, "SemDisplaySolutionManagerService"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 22
    .line 23
    new-instance v6, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :catch_0
    move-exception p0

    .line 36
    move-object v1, v4

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    move-object v5, v4

    .line 39
    :goto_1
    if-eqz v5, :cond_4

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 42
    .line 43
    .line 44
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    if-lez p0, :cond_2

    .line 46
    .line 47
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 48
    .line 49
    add-int/lit8 v7, p0, -0x1

    .line 50
    .line 51
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-direct {v6, v1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 54
    .line 55
    .line 56
    move-object v4, v6

    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    move-object v4, v5

    .line 60
    goto :goto_5

    .line 61
    :catch_1
    move-exception v1

    .line 62
    move v2, p0

    .line 63
    move-object p0, v1

    .line 64
    :goto_2
    move-object v1, v4

    .line 65
    move-object v4, v5

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_7

    .line 71
    :catch_2
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :goto_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "Exception : "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, " , in : "

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, " , value : "

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " , length : "

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .line 119
    .line 120
    if-eqz v4, :cond_6

    .line 121
    .line 122
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    .line 124
    .line 125
    goto :goto_9

    .line 126
    :catch_3
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_9

    .line 130
    :goto_5
    if-eqz v4, :cond_3

    .line 131
    .line 132
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catch_4
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_6
    throw p0

    .line 140
    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 141
    .line 142
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 143
    .line 144
    .line 145
    goto :goto_8

    .line 146
    :catch_5
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_8
    move-object v1, v4

    .line 150
    :cond_6
    :goto_9
    return-object v1
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
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    move-object p1, v2

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_2
    move-exception p0

    .line 41
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_3
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_1
    return v1
.end method


# virtual methods
.method public final controlScaleFactorValue(FLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 7
    .line 8
    const-string p1, "application"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "NumberFormatException : "

    .line 15
    .line 16
    const-string v1, "burn_in_brightness_compensation() sub raw : "

    .line 17
    .line 18
    const-string v2, "burn_in_brightness_compensation() raw : "

    .line 19
    .line 20
    new-instance v3, Ljava/io/File;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "SemDisplaySolutionManagerService"

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/io/File;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_7

    .line 47
    .line 48
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p2

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_1
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-object v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, " "

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    array-length v3, v1

    .line 118
    const/4 v5, 0x2

    .line 119
    if-ne v3, v5, :cond_5

    .line 120
    .line 121
    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    if-ne v3, v5, :cond_3

    .line 125
    .line 126
    aget-object v1, v1, v6

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const v3, 0x3c23d70a    # 0.01f

    .line 137
    .line 138
    .line 139
    mul-float/2addr v1, v3

    .line 140
    add-float/2addr v1, v2

    .line 141
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_1
    move-exception v1

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    const/4 v5, 0x3

    .line 147
    if-lt v3, v5, :cond_4

    .line 148
    .line 149
    const/4 v5, 0x7

    .line 150
    if-gt v3, v5, :cond_4

    .line 151
    .line 152
    aget-object v1, v1, v6

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const v3, 0x3ba3d70a    # 0.005f

    .line 163
    .line 164
    .line 165
    mul-float/2addr v1, v3

    .line 166
    add-float/2addr v1, v2

    .line 167
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    const/16 v5, 0x8

    .line 171
    .line 172
    if-lt v3, v5, :cond_7

    .line 173
    .line 174
    aget-object v1, v1, v6

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    const v3, 0x3be56042    # 0.007f

    .line 185
    .line 186
    .line 187
    mul-float/2addr v1, v3

    .line 188
    add-float/2addr v1, v2

    .line 189
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_5
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_8

    .line 224
    .line 225
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 226
    .line 227
    if-eqz p1, :cond_8

    .line 228
    .line 229
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 230
    .line 231
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 232
    .line 233
    mul-float/2addr p1, p2

    .line 234
    const/4 p2, 0x0

    .line 235
    cmpg-float p1, p1, p2

    .line 236
    .line 237
    if-ltz p1, :cond_8

    .line 238
    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string/jumbo p2, "where : "

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p2, " what : "

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string p2, " setScreenBrightnessScaleFactor("

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p2, ") , mBrightnessCompensation : "

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string p2, " , PMS value : "

    .line 283
    .line 284
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 288
    .line 289
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 290
    .line 291
    mul-float/2addr p2, v1

    .line 292
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 303
    .line 304
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 305
    .line 306
    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 307
    .line 308
    mul-float/2addr p2, p0

    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    return-void
.end method

.method public final getAlphaMaskLevel(FFF)F
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getAlphaMaskLevel() CurrentPlatformBrightnessValue : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " , FingerPrintPlatformValue : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " , br_ctrl : "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " , gamma : "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aget v3, v3, v4

    .line 36
    .line 37
    const-string v5, "SemDisplaySolutionManagerService"

    .line 38
    .line 39
    invoke-static {v0, v3, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    cmpl-float v3, p1, v0

    .line 44
    .line 45
    const/high16 v6, -0x40800000    # -1.0f

    .line 46
    .line 47
    if-ltz v3, :cond_0

    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 50
    .line 51
    float-to-int p1, p1

    .line 52
    aget-object p1, v3, p1

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move p1, v6

    .line 60
    :goto_0
    cmpl-float v0, p2, v0

    .line 61
    .line 62
    if-ltz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 65
    .line 66
    float-to-int p2, p2

    .line 67
    aget-object p2, v0, p2

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 74
    .line 75
    aget p0, p0, v4

    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v0, "calculateAlphaBlendingValue() currentNits : "

    .line 80
    .line 81
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " , targetNits : "

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    mul-float/2addr p1, p3

    .line 115
    div-float/2addr p1, v6

    .line 116
    float-to-double p1, p1

    .line 117
    const/high16 p3, 0x3f800000    # 1.0f

    .line 118
    .line 119
    div-float/2addr p3, p0

    .line 120
    float-to-double v0, p3

    .line 121
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 122
    .line 123
    .line 124
    move-result-wide p0

    .line 125
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 126
    .line 127
    sub-double/2addr p2, p0

    .line 128
    double-to-float p0, p2

    .line 129
    return p0
.end method

.method public final getAutoCurrentLimitOffModeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getBlfAdaptiveCurrentIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, -0x1

    .line 9
    return p0
.end method

.method public final getCameraModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getDouAppModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getFingerPrintBacklightValue(I)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    add-int/lit8 v2, v2, -0x1

    .line 6
    .line 7
    if-gt v0, v2, :cond_1

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt p1, v1, :cond_0

    .line 16
    .line 17
    const-string v1, "getFingerPrintBacklightValue() brightnessNits : "

    .line 18
    .line 19
    const-string v2, " , FingerPrintBacklightValue : "

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 26
    .line 27
    aget-object v1, v1, v0

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " , mBrightnessNitsValueStringArray_Size : "

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    const-string v2, "SemDisplaySolutionManagerService"

    .line 45
    .line 46
    invoke-static {p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object p0, p0, v0

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    .line 62
    .line 63
    return p0
.end method

.method public final getGalleryModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getOnPixelRatioValueForPMS()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoEnhancerSettingState(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getVideoModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isBlueLightFilterScheduledTime()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "mBlueLightFilterAdaptiveModeEnabled: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " , mBlueLightFilterScheduledTime: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 24
    .line 25
    const-string v3, "EyeComfortSolutionService"

    .line 26
    .line 27
    invoke-static {v3, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_0
    return v0
.end method

.method public final isMdnieScenarioControlServiceEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onAutoCurrentLimitOffMode(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAutoCurrentLimitStateChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAutoCurrentLimitStateChangedInt(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    const/4 v1, -0x2

    .line 20
    const-string/jumbo v2, "screen_brightness_mode"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x2

    .line 31
    .line 32
    :cond_0
    const-string/jumbo v0, "setAutoCurrentLimitStateInt("

    .line 33
    .line 34
    .line 35
    const-string v1, ") , mADSEnableCondition : "

    .line 36
    .line 37
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "AdaptiveDisplaySolutionService"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBurnInPreventionDisabled(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final onDetailVeiwStateChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final setAutoCurrentLimitOffModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBlfEnableTimeBySchedule(ZI)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "setBlueLightFilterModeEnabledTime - mBlueLightFilterScheduledTime: "

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " , index: "

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "EyeComfortSolutionService"

    .line 33
    .line 34
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 38
    .line 39
    const/4 p1, 0x5

    .line 40
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final setCameraModeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDouAppModeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEadIndexOffset(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "setEadIndexOffset("

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "EyeComfortSolutionService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final setEyeComfortWeightingFactor(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setGalleryModeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHighDynamicRangeMode(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "isHighDynamicRangeModeState : "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 15
    .line 16
    const-string v1, "MdnieScenarioControlService"

    .line 17
    .line 18
    invoke-static {v1, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final setIRCompensationMode(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "setIRCompensationMode("

    .line 3
    .line 4
    .line 5
    const-string v2, "SemDisplaySolutionManagerService"

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ") IRC Mode : moderato_mode"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ") IRC Mode : moderato_mode , vivid mode :"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 58
    .line 59
    invoke-static {v2, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-static {v3, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, ") IRC Mode : flat_gamma_mode , vivid mode :"

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 83
    .line 84
    invoke-static {v2, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public final setMdnieScenarioControlServiceEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string/jumbo v3, "screen_brightness_mode"

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, -0x2

    .line 20
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v4

    .line 30
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string/jumbo v7, "screen_brightness"

    .line 37
    .line 38
    .line 39
    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    const-string/jumbo v6, "uid : "

    .line 45
    .line 46
    .line 47
    const-string v7, " , pid : "

    .line 48
    .line 49
    const-string v8, " , name : "

    .line 50
    .line 51
    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v6, "SemDisplaySolutionManagerService"

    .line 56
    .line 57
    invoke-static {v1, p1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x3e8

    .line 61
    .line 62
    if-ne v0, v1, :cond_2b

    .line 63
    .line 64
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz p1, :cond_2b

    .line 67
    .line 68
    const-string v0, "color_blind_on"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const-string v1, "brightness_scale_on_7"

    .line 75
    .line 76
    const-string v7, "brightness_scale_on_6"

    .line 77
    .line 78
    const-string v8, "brightness_scale_on_5"

    .line 79
    .line 80
    const-string v9, "brightness_scale_on_4"

    .line 81
    .line 82
    const-string v10, "brightness_scale_on_3"

    .line 83
    .line 84
    const-string v11, "brightness_scale_on_2"

    .line 85
    .line 86
    const-string v12, "brightness_scale_on_1"

    .line 87
    .line 88
    const-string v13, "color_blind_off"

    .line 89
    .line 90
    if-nez p1, :cond_10

    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 103
    .line 104
    const-string/jumbo v0, "real_hdr_on"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const-string/jumbo v13, "real_hdr_off"

    .line 112
    .line 113
    .line 114
    if-nez p1, :cond_e

    .line 115
    .line 116
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 127
    .line 128
    const-string v0, "extra_brightness_on"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    const-string v13, "extra_brightness_off"

    .line 135
    .line 136
    if-nez p1, :cond_c

    .line 137
    .line 138
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const-string v0, "brightness_scale_off"

    .line 155
    .line 156
    if-nez p1, :cond_a

    .line 157
    .line 158
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_a

    .line 165
    .line 166
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_a

    .line 173
    .line 174
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_a

    .line 181
    .line 182
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_a

    .line 189
    .line 190
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_a

    .line 197
    .line 198
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_a

    .line 205
    .line 206
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_4

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 216
    .line 217
    const-string v0, "browser_brightness_on"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    const-string v13, "browser_brightness_off"

    .line 224
    .line 225
    if-nez p1, :cond_8

    .line 226
    .line 227
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_5

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 237
    .line 238
    const-string v0, "burnin_prevention_on"

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    const-string v13, "burnin_prevention_off"

    .line 245
    .line 246
    if-nez p1, :cond_6

    .line 247
    .line 248
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_12

    .line 255
    .line 256
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_7

    .line 263
    .line 264
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 265
    .line 266
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    .line 267
    .line 268
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 269
    .line 270
    goto/16 :goto_6

    .line 271
    .line 272
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_12

    .line 279
    .line 280
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_9

    .line 291
    .line 292
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 293
    .line 294
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    .line 295
    .line 296
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_12

    .line 306
    .line 307
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_b

    .line 317
    .line 318
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 322
    .line 323
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 324
    .line 325
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_d

    .line 335
    .line 336
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_12

    .line 346
    .line 347
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_f

    .line 357
    .line 358
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-eqz p1, :cond_12

    .line 368
    .line 369
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-eqz p1, :cond_11

    .line 379
    .line 380
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-eqz p1, :cond_12

    .line 390
    .line 391
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 392
    .line 393
    :cond_12
    :goto_6
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 394
    .line 395
    if-eqz p1, :cond_13

    .line 396
    .line 397
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 398
    .line 399
    aget p1, p1, v4

    .line 400
    .line 401
    const-string v0, "ColorBlind"

    .line 402
    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    const-string/jumbo v0, "setMultipleScreenBrightness , application, ColorBlind, "

    .line 409
    .line 410
    .line 411
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 415
    .line 416
    aget p0, p0, v4

    .line 417
    .line 418
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_9

    .line 422
    .line 423
    :cond_13
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 424
    .line 425
    if-eqz p1, :cond_14

    .line 426
    .line 427
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 428
    .line 429
    const-string v0, "RealHDR"

    .line 430
    .line 431
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string/jumbo v0, "setMultipleScreenBrightness , application, RealHDR, "

    .line 437
    .line 438
    .line 439
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 443
    .line 444
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_9

    .line 448
    .line 449
    :cond_14
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 450
    .line 451
    if-eqz p1, :cond_15

    .line 452
    .line 453
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 454
    .line 455
    aget p1, p1, v4

    .line 456
    .line 457
    const-string v0, "ExtraBrightness"

    .line 458
    .line 459
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string/jumbo v0, "setMultipleScreenBrightness , application, ExtraBrightness, "

    .line 465
    .line 466
    .line 467
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 471
    .line 472
    aget p0, p0, v4

    .line 473
    .line 474
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_9

    .line 478
    .line 479
    :cond_15
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 480
    .line 481
    const-string v0, ", "

    .line 482
    .line 483
    const/16 v13, 0xff

    .line 484
    .line 485
    if-eqz p1, :cond_19

    .line 486
    .line 487
    :cond_16
    :goto_7
    const/16 p1, 0x14

    .line 488
    .line 489
    if-ge v4, p1, :cond_2b

    .line 490
    .line 491
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    .line 492
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v2, "browser_brightness_on_"

    .line 496
    .line 497
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    add-int/lit8 v4, v4, 0x1

    .line 501
    .line 502
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    if-eqz p1, :cond_16

    .line 514
    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    const-string v1, "mLastScaleFactorValue : "

    .line 518
    .line 519
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 523
    .line 524
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v1, " , (Float)((100 - (i+1)) * 0.01f) "

    .line 528
    .line 529
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    rsub-int/lit8 v1, v4, 0x64

    .line 533
    .line 534
    int-to-float v1, v1

    .line 535
    const v2, 0x3c23d70a    # 0.01f

    .line 536
    .line 537
    .line 538
    mul-float/2addr v1, v2

    .line 539
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v3, " , Float.compare(mLastScaleFactorValue, (Float)((100 - (i+1)) * 0.01f)) : "

    .line 547
    .line 548
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 552
    .line 553
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 568
    .line 569
    const-string/jumbo v3, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    .line 570
    .line 571
    .line 572
    const-string v5, "BrowserAppBrightnessControl_"

    .line 573
    .line 574
    if-ne p1, v13, :cond_18

    .line 575
    .line 576
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 577
    .line 578
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    .line 579
    .line 580
    .line 581
    move-result p1

    .line 582
    if-lez p1, :cond_17

    .line 583
    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :cond_17
    invoke-static {v4, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    goto/16 :goto_7

    .line 618
    .line 619
    :cond_18
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 620
    .line 621
    int-to-float v1, v4

    .line 622
    mul-float/2addr v1, v2

    .line 623
    sub-float/2addr p1, v1

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 637
    .line 638
    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 645
    .line 646
    sub-float/2addr v2, v1

    .line 647
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    goto/16 :goto_7

    .line 658
    .line 659
    :cond_19
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 660
    .line 661
    if-eqz p1, :cond_28

    .line 662
    .line 663
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    const-string v0, " platform_brightness_value : "

    .line 670
    .line 671
    const-string v12, " auto_brightness_enabled : "

    .line 672
    .line 673
    if-eqz p1, :cond_1a

    .line 674
    .line 675
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 676
    .line 677
    aget p1, p1, v4

    .line 678
    .line 679
    const-string v1, "HDREffect_1"

    .line 680
    .line 681
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 682
    .line 683
    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    const-string/jumbo v1, "setMultipleScreenBrightness , application, HDREffect_1, "

    .line 687
    .line 688
    .line 689
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 693
    .line 694
    aget p0, p0, v4

    .line 695
    .line 696
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-static {p1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_9

    .line 712
    .line 713
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result p1

    .line 719
    const/high16 v11, 0x437f0000    # 255.0f

    .line 720
    .line 721
    if-eqz p1, :cond_1f

    .line 722
    .line 723
    const-string/jumbo p1, "setMultipleScreenBrightness , application, HDREffect_2, "

    .line 724
    .line 725
    .line 726
    const-string v1, "HDREffect_2"

    .line 727
    .line 728
    if-eqz v2, :cond_1b

    .line 729
    .line 730
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 731
    .line 732
    aget v3, v3, v4

    .line 733
    .line 734
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 735
    .line 736
    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 743
    .line 744
    aget p0, p0, v4

    .line 745
    .line 746
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_9

    .line 762
    .line 763
    :cond_1b
    if-nez v2, :cond_2b

    .line 764
    .line 765
    iget v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 766
    .line 767
    if-eq v7, v13, :cond_1d

    .line 768
    .line 769
    iget v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 770
    .line 771
    const/4 v9, 0x2

    .line 772
    if-lt v8, v9, :cond_1d

    .line 773
    .line 774
    iget-boolean v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 775
    .line 776
    if-eqz v8, :cond_1d

    .line 777
    .line 778
    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 779
    .line 780
    aget v3, v8, v3

    .line 781
    .line 782
    int-to-float v9, v7

    .line 783
    div-float/2addr v9, v11

    .line 784
    mul-float/2addr v9, v3

    .line 785
    cmpg-float v3, v5, v9

    .line 786
    .line 787
    if-gez v3, :cond_1c

    .line 788
    .line 789
    aget v3, v8, v4

    .line 790
    .line 791
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 792
    .line 793
    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    .line 795
    .line 796
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 800
    .line 801
    aget p0, p0, v4

    .line 802
    .line 803
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_9

    .line 819
    .line 820
    :cond_1c
    int-to-float v3, v7

    .line 821
    div-float/2addr v3, v5

    .line 822
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 823
    .line 824
    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 831
    .line 832
    int-to-float p0, p0

    .line 833
    div-float/2addr p0, v5

    .line 834
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 835
    .line 836
    .line 837
    move-result-object p0

    .line 838
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object p0

    .line 857
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .line 859
    .line 860
    goto/16 :goto_9

    .line 861
    .line 862
    :cond_1d
    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 863
    .line 864
    aget v3, v7, v3

    .line 865
    .line 866
    cmpg-float v3, v5, v3

    .line 867
    .line 868
    if-gez v3, :cond_1e

    .line 869
    .line 870
    aget v3, v7, v4

    .line 871
    .line 872
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 873
    .line 874
    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 881
    .line 882
    aget p0, p0, v4

    .line 883
    .line 884
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 897
    .line 898
    .line 899
    goto/16 :goto_9

    .line 900
    .line 901
    :cond_1e
    div-float/2addr v11, v5

    .line 902
    invoke-virtual {p0, v11, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 903
    .line 904
    .line 905
    new-instance p0, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object p0

    .line 929
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .line 931
    .line 932
    goto/16 :goto_9

    .line 933
    .line 934
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 935
    .line 936
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result p1

    .line 940
    if-eqz p1, :cond_21

    .line 941
    .line 942
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 943
    .line 944
    const-string/jumbo v0, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    .line 945
    .line 946
    .line 947
    const-string v1, "GalleryAppScaleUp"

    .line 948
    .line 949
    if-eqz p1, :cond_20

    .line 950
    .line 951
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 952
    .line 953
    aget p1, p1, v4

    .line 954
    .line 955
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 956
    .line 957
    .line 958
    new-instance p1, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 964
    .line 965
    aget p0, p0, v4

    .line 966
    .line 967
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 968
    .line 969
    .line 970
    goto/16 :goto_9

    .line 971
    .line 972
    :cond_20
    if-nez p1, :cond_2b

    .line 973
    .line 974
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 975
    .line 976
    aget p1, p1, v4

    .line 977
    .line 978
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 979
    .line 980
    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    .line 982
    .line 983
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 987
    .line 988
    aget p0, p0, v4

    .line 989
    .line 990
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 991
    .line 992
    .line 993
    goto/16 :goto_9

    .line 994
    .line 995
    :cond_21
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 996
    .line 997
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result p1

    .line 1001
    if-eqz p1, :cond_23

    .line 1002
    .line 1003
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 1004
    .line 1005
    const-string/jumbo v0, "setMultipleScreenBrightness , application, CameraAppScaleUp, "

    .line 1006
    .line 1007
    .line 1008
    const-string v1, "CameraAppScaleUp"

    .line 1009
    .line 1010
    if-eqz p1, :cond_22

    .line 1011
    .line 1012
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 1013
    .line 1014
    aget p1, p1, v4

    .line 1015
    .line 1016
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 1025
    .line 1026
    aget p0, p0, v4

    .line 1027
    .line 1028
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_9

    .line 1032
    .line 1033
    :cond_22
    if-nez p1, :cond_2b

    .line 1034
    .line 1035
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1036
    .line 1037
    aget p1, p1, v4

    .line 1038
    .line 1039
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1048
    .line 1049
    aget p0, p0, v4

    .line 1050
    .line 1051
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_9

    .line 1055
    .line 1056
    :cond_23
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1057
    .line 1058
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result p1

    .line 1062
    if-eqz p1, :cond_25

    .line 1063
    .line 1064
    const-string/jumbo p1, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    .line 1065
    .line 1066
    .line 1067
    const-string v0, "SamsungVideoAppScaleUp"

    .line 1068
    .line 1069
    if-eqz v2, :cond_24

    .line 1070
    .line 1071
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 1072
    .line 1073
    aget v1, v1, v4

    .line 1074
    .line 1075
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 1084
    .line 1085
    aget p0, p0, v4

    .line 1086
    .line 1087
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object p0

    .line 1100
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .line 1102
    .line 1103
    goto/16 :goto_9

    .line 1104
    .line 1105
    :cond_24
    if-nez v2, :cond_2b

    .line 1106
    .line 1107
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1108
    .line 1109
    aget v1, v1, v4

    .line 1110
    .line 1111
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1120
    .line 1121
    aget p0, p0, v4

    .line 1122
    .line 1123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object p0

    .line 1136
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_9

    .line 1140
    .line 1141
    :cond_25
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1142
    .line 1143
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result p1

    .line 1147
    if-eqz p1, :cond_27

    .line 1148
    .line 1149
    if-nez v2, :cond_2b

    .line 1150
    .line 1151
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 1152
    .line 1153
    int-to-float v0, p1

    .line 1154
    cmpl-float v1, v5, v0

    .line 1155
    .line 1156
    const-string/jumbo v3, "setMultipleScreenBrightness , application, DouScaleDown, "

    .line 1157
    .line 1158
    .line 1159
    const-string v7, "DouScaleDown"

    .line 1160
    .line 1161
    if-ltz v1, :cond_26

    .line 1162
    .line 1163
    sub-float v0, v5, v0

    .line 1164
    .line 1165
    int-to-float p1, p1

    .line 1166
    sub-float p1, v11, p1

    .line 1167
    .line 1168
    div-float/2addr v0, p1

    .line 1169
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1170
    .line 1171
    int-to-float p1, p1

    .line 1172
    div-float/2addr p1, v11

    .line 1173
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1174
    .line 1175
    sub-float p1, v1, p1

    .line 1176
    .line 1177
    mul-float/2addr p1, v0

    .line 1178
    sub-float p1, v1, p1

    .line 1179
    .line 1180
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 1184
    .line 1185
    int-to-float v0, p1

    .line 1186
    sub-float v0, v5, v0

    .line 1187
    .line 1188
    int-to-float p1, p1

    .line 1189
    sub-float p1, v11, p1

    .line 1190
    .line 1191
    div-float/2addr v0, p1

    .line 1192
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1193
    .line 1194
    int-to-float p1, p1

    .line 1195
    div-float/2addr p1, v11

    .line 1196
    sub-float p1, v1, p1

    .line 1197
    .line 1198
    mul-float/2addr p1, v0

    .line 1199
    sub-float p1, v1, p1

    .line 1200
    .line 1201
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 1202
    .line 1203
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 1209
    .line 1210
    int-to-float v3, v0

    .line 1211
    sub-float v3, v5, v3

    .line 1212
    .line 1213
    int-to-float v0, v0

    .line 1214
    sub-float v0, v11, v0

    .line 1215
    .line 1216
    div-float/2addr v3, v0

    .line 1217
    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1218
    .line 1219
    int-to-float p0, p0

    .line 1220
    div-float/2addr p0, v11

    .line 1221
    sub-float p0, v1, p0

    .line 1222
    .line 1223
    mul-float/2addr p0, v3

    .line 1224
    sub-float/2addr v1, p0

    .line 1225
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    const-string p0, " ,platform_brightness_value : "

    .line 1229
    .line 1230
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    const-string p0, " ,auto_brightness_enabled : "

    .line 1237
    .line 1238
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    .line 1241
    invoke-static {v6, p1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_9

    .line 1245
    .line 1246
    :cond_26
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1247
    .line 1248
    aget p1, p1, v4

    .line 1249
    .line 1250
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1259
    .line 1260
    aget p0, p0, v4

    .line 1261
    .line 1262
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_9

    .line 1266
    .line 1267
    :cond_27
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result p1

    .line 1273
    if-eqz p1, :cond_2b

    .line 1274
    .line 1275
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 1276
    .line 1277
    aget p1, p1, v4

    .line 1278
    .line 1279
    const-string v0, "OverHeatScaleDown"

    .line 1280
    .line 1281
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    const-string/jumbo v0, "setMultipleScreenBrightness , application, OverHeatScaleDown, "

    .line 1287
    .line 1288
    .line 1289
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 1293
    .line 1294
    aget p0, p0, v4

    .line 1295
    .line 1296
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_9

    .line 1300
    :cond_28
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 1301
    .line 1302
    if-eqz p1, :cond_2a

    .line 1303
    .line 1304
    :goto_8
    const/16 p1, 0xa

    .line 1305
    .line 1306
    if-ge v4, p1, :cond_2b

    .line 1307
    .line 1308
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    .line 1309
    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    const-string v2, "burnin_prevention_on_"

    .line 1313
    .line 1314
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    add-int/lit8 v2, v4, 0x1

    .line 1318
    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1327
    .line 1328
    .line 1329
    move-result p1

    .line 1330
    if-eqz p1, :cond_29

    .line 1331
    .line 1332
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 1333
    .line 1334
    aget p1, p1, v4

    .line 1335
    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    const-string v3, "BurnInPrevention_"

    .line 1339
    .line 1340
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v1

    .line 1350
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1351
    .line 1352
    .line 1353
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 1354
    .line 1355
    aget p1, p1, v4

    .line 1356
    .line 1357
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 1358
    .line 1359
    const-string/jumbo p1, "setMultipleScreenBrightness , application, BurnInPrevention_"

    .line 1360
    .line 1361
    .line 1362
    invoke-static {v2, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    .line 1365
    move-result-object p1

    .line 1366
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 1367
    .line 1368
    aget v1, v1, v4

    .line 1369
    .line 1370
    invoke-static {p1, v1, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    :cond_29
    move v4, v2

    .line 1374
    goto :goto_8

    .line 1375
    :cond_2a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1376
    .line 1377
    aget p1, p1, v4

    .line 1378
    .line 1379
    const-string v0, "DEFAULT"

    .line 1380
    .line 1381
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1385
    .line 1386
    aget p1, p1, v4

    .line 1387
    .line 1388
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 1389
    .line 1390
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    const-string v0, "Normal Mode setMultipleScreenBrightness , application, DEFAULT, "

    .line 1393
    .line 1394
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1398
    .line 1399
    aget p0, p0, v4

    .line 1400
    .line 1401
    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    :cond_2b
    :goto_9
    return-void
.end method

.method public final setMultipleScreenBrightnessValueForHDR(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 2
    .line 3
    return-void
.end method

.method public final setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setScreenBrightnessForPreview(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setSleepPatternBLF(Ljava/lang/String;JJF)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "SUNDAY"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, " , WakeupTime : "

    .line 15
    .line 16
    const-string v2, ") , BedTime : "

    .line 17
    .line 18
    const-string v3, "EyeComfortSolutionService"

    .line 19
    .line 20
    const/high16 v4, 0x3f000000    # 0.5f

    .line 21
    .line 22
    const/4 v5, -0x1

    .line 23
    const v6, 0xea60

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    cmpl-float p1, p6, v4

    .line 29
    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    long-to-int p1, p2

    .line 33
    div-int/2addr p1, v6

    .line 34
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 35
    .line 36
    long-to-int p1, p4

    .line 37
    div-int/2addr p1, v6

    .line 38
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 42
    .line 43
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 44
    .line 45
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "SUNDAY("

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 67
    .line 68
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    const-string v0, "MONDAY"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    cmpl-float p1, p6, v4

    .line 82
    .line 83
    if-lez p1, :cond_2

    .line 84
    .line 85
    long-to-int p1, p2

    .line 86
    div-int/2addr p1, v6

    .line 87
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 88
    .line 89
    long-to-int p1, p4

    .line 90
    div-int/2addr p1, v6

    .line 91
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 95
    .line 96
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 97
    .line 98
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p2, "MONDAY("

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 120
    .line 121
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_3
    const-string v0, "TUESDAY"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    cmpl-float p1, p6, v4

    .line 135
    .line 136
    if-lez p1, :cond_4

    .line 137
    .line 138
    long-to-int p1, p2

    .line 139
    div-int/2addr p1, v6

    .line 140
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 141
    .line 142
    long-to-int p1, p4

    .line 143
    div-int/2addr p1, v6

    .line 144
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 148
    .line 149
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 150
    .line 151
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string p2, "TUESDAY("

    .line 154
    .line 155
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 173
    .line 174
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_7

    .line 178
    .line 179
    :cond_5
    const-string v0, "WEDNESDAY"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    cmpl-float p1, p6, v4

    .line 188
    .line 189
    if-lez p1, :cond_6

    .line 190
    .line 191
    long-to-int p1, p2

    .line 192
    div-int/2addr p1, v6

    .line 193
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 194
    .line 195
    long-to-int p1, p4

    .line 196
    div-int/2addr p1, v6

    .line 197
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 201
    .line 202
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 203
    .line 204
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string p2, "WEDNESDAY("

    .line 207
    .line 208
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 226
    .line 227
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_7

    .line 231
    .line 232
    :cond_7
    const-string v0, "THURSDAY"

    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    cmpl-float p1, p6, v4

    .line 241
    .line 242
    if-lez p1, :cond_8

    .line 243
    .line 244
    long-to-int p1, p2

    .line 245
    div-int/2addr p1, v6

    .line 246
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 247
    .line 248
    long-to-int p1, p4

    .line 249
    div-int/2addr p1, v6

    .line 250
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_8
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 254
    .line 255
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 256
    .line 257
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string p2, "THURSDAY("

    .line 260
    .line 261
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 271
    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 279
    .line 280
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_9
    const-string v0, "FRIDAY"

    .line 285
    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_b

    .line 291
    .line 292
    cmpl-float p1, p6, v4

    .line 293
    .line 294
    if-lez p1, :cond_a

    .line 295
    .line 296
    long-to-int p1, p2

    .line 297
    div-int/2addr p1, v6

    .line 298
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 299
    .line 300
    long-to-int p1, p4

    .line 301
    div-int/2addr p1, v6

    .line 302
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_a
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 306
    .line 307
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 308
    .line 309
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string p2, "FRIDAY("

    .line 312
    .line 313
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 331
    .line 332
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_b
    const-string v0, "SATURDAY"

    .line 337
    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-eqz p1, :cond_d

    .line 343
    .line 344
    cmpl-float p1, p6, v4

    .line 345
    .line 346
    if-lez p1, :cond_c

    .line 347
    .line 348
    long-to-int p1, p2

    .line 349
    div-int/2addr p1, v6

    .line 350
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 351
    .line 352
    long-to-int p1, p4

    .line 353
    div-int/2addr p1, v6

    .line 354
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_c
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 358
    .line 359
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 360
    .line 361
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string p2, "SATURDAY("

    .line 364
    .line 365
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 383
    .line 384
    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_d
    :goto_7
    return-void
.end method

.method public final setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Update Video Enhancer SubKey state. package : "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " , state : "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "MdnieScenarioControlService"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/ContentValues;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string/jumbo v1, "settingstate"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    .line 52
    const-string/jumbo v1, "packagename = \'"

    .line 53
    .line 54
    .line 55
    const-string v2, "\' "

    .line 56
    .line 57
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 62
    .line 63
    if-nez p2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :goto_0
    const-string p0, "MSCS_APP_LIST"

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p2, p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final setVideoModeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setting_is_changed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "high_brightness_mode_pms_enter"

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
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 22
    .line 23
    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    .line 32
    move v1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 36
    .line 37
    const-string/jumbo v1, "screen_extra_brightness"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    move v1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 50
    .line 51
    const-string/jumbo v1, "screen_brightness_mode"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, v4, :cond_3

    .line 59
    .line 60
    move v2, v4

    .line 61
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "mHighBrightnessModeEnabled : "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " , mAdaptiveScreenModeEnabled : "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, " , mExtraBrightnessModeEnabled : "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, " , mAutoBrightnessModeEnabled : "

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 101
    .line 102
    const-string v1, "SemDisplaySolutionManagerService"

    .line 103
    .line 104
    invoke-static {v1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final updateAutoBrightnessLux(II)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const-string v1, "MdnieScenarioControlService"

    .line 10
    .line 11
    const-string v2, "getVisionBoosterIndex() mAutoBrightnessMode : "

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " , mReduceBrightColorsActivatedEnabled : "

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " , lux : "

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    if-eq p2, v3, :cond_1

    .line 59
    .line 60
    move v2, v4

    .line 61
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVisionBoosterStringArray:[Ljava/lang/String;

    .line 62
    .line 63
    array-length v6, v5

    .line 64
    add-int/lit8 v6, v6, -0x1

    .line 65
    .line 66
    if-gt v4, v6, :cond_0

    .line 67
    .line 68
    aget-object v5, v5, v4

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-lt p2, v5, :cond_0

    .line 75
    .line 76
    add-int/lit8 v2, v4, 0x1

    .line 77
    .line 78
    move v4, v2

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    move v4, v2

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "Vision Booster Index : "

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    move v3, v4

    .line 104
    goto :goto_2

    .line 105
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v0, p1, p2, v3}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighBrightnessMode(III)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method

.method public final updateGlutMode(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    if-eqz p0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    if-eqz p1, :cond_a

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevmDNIeMode:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_a

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevmDNIeMode:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "NATURAL_DS"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v1, "EyeComfortSolutionService"

    .line 28
    .line 29
    const-string v2, "/sys/class/lcd/panel/night_dim"

    .line 30
    .line 31
    const-string v3, "/sys/class/lcd/panel1/night_dim"

    .line 32
    .line 33
    if-nez v0, :cond_8

    .line 34
    .line 35
    const-string v0, "HBM_MODE"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    const-string v4, "EAD_MODE"

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v4, 0x0

    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    const-string v0, "BLF_MODE"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    .line 73
    .line 74
    const/4 v0, 0x4

    .line 75
    if-ne p1, v0, :cond_2

    .line 76
    .line 77
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    if-eq p1, v0, :cond_a

    .line 81
    .line 82
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/io/File;

    .line 86
    .line 87
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 100
    .line 101
    const-string p0, "NIGHT_DIM_Mode : 1 (E.C Vivid)"

    .line 102
    .line 103
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_2
    const/4 v0, 0x3

    .line 109
    if-ne p1, v0, :cond_a

    .line 110
    .line 111
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 112
    .line 113
    if-eq p1, v0, :cond_a

    .line 114
    .line 115
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Ljava/io/File;

    .line 119
    .line 120
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 133
    .line 134
    const-string p0, "NIGHT_DIM_Mode : 3 (E.C Natural)"

    .line 135
    .line 136
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 141
    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    invoke-static {v4, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Ljava/io/File;

    .line 148
    .line 149
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    invoke-static {v4, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 162
    .line 163
    const-string p0, "NIGHT_DIM_Mode : 0 (CLUT off)"

    .line 164
    .line 165
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    invoke-static {v4, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Ljava/io/File;

    .line 177
    .line 178
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    invoke-static {v4, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 191
    .line 192
    const-string p0, "NIGHT_DIM_Mode : 0 (CLUT Off)"

    .line 193
    .line 194
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    :goto_0
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 199
    .line 200
    const/4 v0, 0x2

    .line 201
    if-eq p1, v0, :cond_a

    .line 202
    .line 203
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Ljava/io/File;

    .line 207
    .line 208
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_9

    .line 216
    .line 217
    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_9
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    .line 221
    .line 222
    const-string p0, "NIGHT_DIM_Mode : 2 (Natural Gamma On)"

    .line 223
    .line 224
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_1
    return-void
.end method

.method public final updateQdcmMode(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevmDNIeMode:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevmDNIeMode:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "NATURAL_DS"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    const-string v1, "HBM_MODE"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    const-string v1, "EAD_MODE"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string/jumbo p1, "screen_mode_setting"

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    const/4 v3, -0x2

    .line 58
    invoke-static {v0, p1, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v1, :cond_2

    .line 63
    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDPLUS"

    .line 69
    .line 70
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 v1, 0x1

    .line 75
    const/16 v3, 0x100

    .line 76
    .line 77
    if-ne p1, v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v0, 0x2

    .line 92
    if-lt p1, v0, :cond_4

    .line 93
    .line 94
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    .line 95
    .line 96
    add-int/2addr p1, v3

    .line 97
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v0, p1, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 v0, 0x3

    .line 106
    if-ne p1, v0, :cond_4

    .line 107
    .line 108
    const/16 p1, 0x12c

    .line 109
    .line 110
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_0
    const/16 p1, 0x12d

    .line 115
    .line 116
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_1
    return-void
.end method
