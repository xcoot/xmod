.class public abstract Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static final BRIGHTNESS_ANIMATION_MIN_LIMIT_HZ:I

.field public static final HBM_LUX:I

.field public static final SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

.field public static final SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

.field public static final SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

.field public static final SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

.field public static final SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

.field public static final SEC_FEATURE_DEX_DUAL_VIEW:Z

.field public static final SEC_FEATURE_DISPLAY_QUALITY:Z

.field public static final SEC_FEATURE_DUAL_DISPLAY:Z

.field public static final SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

.field public static final SEC_FEATURE_FLIP_COVER_DISPLAY:Z

.field public static final SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

.field public static final SEC_FEATURE_FOLD_COVER_DISPLAY:Z

.field public static final SEC_FEATURE_FULLSCREEN_AOD:Z

.field public static final SEC_FEATURE_HQM_SEND_DPUC:Z

.field public static final SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

.field public static final SEC_FEATURE_LCD_SUPPORT_PASSIVE_MODE:Z

.field public static final SEC_FEATURE_PAPAYA_DQE:Z

.field public static final SEC_FEATURE_SCREEN_CURTAIN:Z

.field public static final SEC_FEATURE_SEAMLESS_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

.field public static final SEC_FEATURE_SUPPORT_HBM:Z

.field public static final SEC_FEATURE_SUPPORT_LEGACY_MISC_POWER_HAL:Z

.field public static final SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

.field public static final SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

.field public static final SEC_FEATURE_TABLET:Z

.field public static final SEC_FEATURE_USE_AFC:Z

.field public static final SEC_FEATURE_USE_GED_DOZE:Z

.field public static final SEC_FEATURE_USE_LIGHTS_HAL_EXTENSION:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_USE_SFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_AFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

.field public static final SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

.field public static final SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

.field public static final SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

.field public static final USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

.field public static USE_SEC_LONG_TERM_MODEL:Z

.field public static final sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

.field public static final sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

.field public static final sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

.field public static final sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const-string/jumbo v0, "ro.product.vendor.device"

    .line 2
    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "o1"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string/jumbo v1, "t2"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string/jumbo v1, "p3"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move v1, v2

    .line 47
    :goto_1
    const-string/jumbo v4, "r0"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    const-string v4, "g0"

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    const-string v4, "b0"

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v4, v3

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    :goto_2
    move v4, v2

    .line 76
    :goto_3
    const-string v5, "a53x"

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const-string v6, "a23xq"

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    const-string v6, "dm1"

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_5

    .line 94
    .line 95
    const-string v6, "dm2"

    .line 96
    .line 97
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_5

    .line 102
    .line 103
    const-string v6, "dm3"

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move v6, v3

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    :goto_4
    move v6, v2

    .line 115
    :goto_5
    const-string v7, "e1"

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_7

    .line 122
    .line 123
    const-string v7, "e2"

    .line 124
    .line 125
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_7

    .line 130
    .line 131
    const-string v7, "e3"

    .line 132
    .line 133
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_6

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_6
    move v7, v3

    .line 141
    goto :goto_7

    .line 142
    :cond_7
    :goto_6
    move v7, v2

    .line 143
    :goto_7
    const-string v8, "gts10"

    .line 144
    .line 145
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    const-string/jumbo v8, "pa1"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_9

    .line 156
    .line 157
    const-string/jumbo v8, "pa2"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_9

    .line 165
    .line 166
    const-string/jumbo v8, "pa3"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_8
    move v0, v3

    .line 177
    goto :goto_9

    .line 178
    :cond_9
    :goto_8
    move v0, v2

    .line 179
    :goto_9
    const-string v8, "2"

    .line 180
    .line 181
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    sput v8, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    .line 186
    .line 187
    const/4 v9, 0x4

    .line 188
    if-ne v8, v9, :cond_a

    .line 189
    .line 190
    move v10, v2

    .line 191
    goto :goto_a

    .line 192
    :cond_a
    move v10, v3

    .line 193
    :goto_a
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    .line 194
    .line 195
    const/4 v10, 0x5

    .line 196
    if-ne v8, v10, :cond_b

    .line 197
    .line 198
    move v8, v2

    .line 199
    goto :goto_b

    .line 200
    :cond_b
    move v8, v3

    .line 201
    :goto_b
    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    .line 202
    .line 203
    xor-int/lit8 v8, v4, 0x1

    .line 204
    .line 205
    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    .line 206
    .line 207
    const-string/jumbo v8, "ro.boot.debug_level"

    .line 208
    .line 209
    .line 210
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    const-string v11, "Unknown"

    .line 215
    .line 216
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    const-string v11, "0x4f4c"

    .line 221
    .line 222
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v10, :cond_c

    .line 231
    .line 232
    if-nez v8, :cond_c

    .line 233
    .line 234
    move v8, v2

    .line 235
    goto :goto_c

    .line 236
    :cond_c
    move v8, v3

    .line 237
    :goto_c
    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    .line 238
    .line 239
    const-string/jumbo v8, "ro.product.first_api_level"

    .line 240
    .line 241
    .line 242
    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    const/16 v11, 0x1e

    .line 247
    .line 248
    if-ge v10, v11, :cond_d

    .line 249
    .line 250
    move v10, v2

    .line 251
    goto :goto_d

    .line 252
    :cond_d
    move v10, v3

    .line 253
    :goto_d
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    .line 254
    .line 255
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    const-string v11, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 260
    .line 261
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    const-string v12, "aodversion"

    .line 266
    .line 267
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    invoke-virtual {v13, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    invoke-virtual {v13, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v13

    .line 283
    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    .line 284
    .line 285
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    const-string v15, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    .line 290
    .line 291
    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    const-string v15, "INFINITY"

    .line 296
    .line 297
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    .line 302
    .line 303
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 304
    .line 305
    .line 306
    move-result-object v14

    .line 307
    const-string v15, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

    .line 308
    .line 309
    const/4 v3, -0x1

    .line 310
    invoke-virtual {v14, v15, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    if-ne v14, v2, :cond_e

    .line 315
    .line 316
    move v14, v2

    .line 317
    goto :goto_e

    .line 318
    :cond_e
    const/4 v14, 0x0

    .line 319
    :goto_e
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FULLSCREEN_AOD:Z

    .line 320
    .line 321
    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    .line 322
    .line 323
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    .line 324
    .line 325
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    const-string v13, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_CLOCKPACK_ITEM"

    .line 330
    .line 331
    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    const-string v13, "clockpackversion"

    .line 336
    .line 337
    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    .line 342
    .line 343
    sget-boolean v10, Lcom/android/server/aod/AODConfig;->SUPPORT_SUB_DISPLAY_COVER:Z

    .line 344
    .line 345
    if-eqz v10, :cond_f

    .line 346
    .line 347
    sget-boolean v10, Lcom/android/server/aod/AODConfig;->SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

    .line 348
    .line 349
    if-nez v10, :cond_f

    .line 350
    .line 351
    move v10, v2

    .line 352
    goto :goto_f

    .line 353
    :cond_f
    const/4 v10, 0x0

    .line 354
    :goto_f
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    .line 355
    .line 356
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    const-string v13, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_BRIGHTNESS_ANIMATION"

    .line 361
    .line 362
    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    if-ne v10, v2, :cond_10

    .line 367
    .line 368
    move v10, v2

    .line 369
    goto :goto_10

    .line 370
    :cond_10
    const/4 v10, 0x0

    .line 371
    :goto_10
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

    .line 372
    .line 373
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    const-string v13, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    .line 378
    .line 379
    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v10

    .line 383
    const-string v13, "0"

    .line 384
    .line 385
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    if-ne v13, v9, :cond_11

    .line 390
    .line 391
    const/16 v14, 0x78

    .line 392
    .line 393
    goto :goto_11

    .line 394
    :cond_11
    const/16 v14, 0x3c

    .line 395
    .line 396
    :goto_11
    sput v14, Lcom/android/server/power/PowerManagerUtil;->BRIGHTNESS_ANIMATION_MIN_LIMIT_HZ:I

    .line 397
    .line 398
    if-eqz v10, :cond_12

    .line 399
    .line 400
    if-ge v13, v9, :cond_12

    .line 401
    .line 402
    move v9, v2

    .line 403
    goto :goto_12

    .line 404
    :cond_12
    const/4 v9, 0x0

    .line 405
    :goto_12
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_LCD_SUPPORT_PASSIVE_MODE:Z

    .line 406
    .line 407
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    .line 412
    .line 413
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 418
    .line 419
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    .line 424
    .line 425
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 430
    .line 431
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    .line 436
    .line 437
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    .line 442
    .line 443
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX"

    .line 448
    .line 449
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 454
    .line 455
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION"

    .line 460
    .line 461
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 466
    .line 467
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    .line 472
    .line 473
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 478
    .line 479
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_NIGHT_MODE"

    .line 484
    .line 485
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 486
    .line 487
    .line 488
    move-result v9

    .line 489
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    .line 490
    .line 491
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 492
    .line 493
    .line 494
    move-result-object v9

    .line 495
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH"

    .line 496
    .line 497
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    .line 502
    .line 503
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    .line 508
    .line 509
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v9

    .line 513
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    .line 514
    .line 515
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 516
    .line 517
    .line 518
    move-result-object v9

    .line 519
    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    .line 520
    .line 521
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result v9

    .line 525
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 526
    .line 527
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    const-string v13, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    .line 532
    .line 533
    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 538
    .line 539
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 540
    .line 541
    .line 542
    move-result-object v13

    .line 543
    const-string v14, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    .line 544
    .line 545
    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v13

    .line 549
    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    .line 550
    .line 551
    if-nez v9, :cond_14

    .line 552
    .line 553
    if-eqz v10, :cond_13

    .line 554
    .line 555
    goto :goto_13

    .line 556
    :cond_13
    const/4 v9, 0x0

    .line 557
    goto :goto_14

    .line 558
    :cond_14
    :goto_13
    move v9, v2

    .line 559
    :goto_14
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 560
    .line 561
    if-nez v9, :cond_16

    .line 562
    .line 563
    if-nez v1, :cond_16

    .line 564
    .line 565
    if-nez v4, :cond_16

    .line 566
    .line 567
    if-nez v6, :cond_16

    .line 568
    .line 569
    if-nez v7, :cond_16

    .line 570
    .line 571
    if-eqz v0, :cond_15

    .line 572
    .line 573
    goto :goto_15

    .line 574
    :cond_15
    const/4 v0, 0x0

    .line 575
    goto :goto_16

    .line 576
    :cond_16
    :goto_15
    move v0, v2

    .line 577
    :goto_16
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    .line 578
    .line 579
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    .line 580
    .line 581
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const-string v1, "activeclock"

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    .line 596
    .line 597
    if-nez v0, :cond_17

    .line 598
    .line 599
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {v0, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    const-string v1, "clocktransition"

    .line 608
    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-nez v0, :cond_17

    .line 614
    .line 615
    move v0, v2

    .line 616
    goto :goto_17

    .line 617
    :cond_17
    const/4 v0, 0x0

    .line 618
    :goto_17
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    .line 619
    .line 620
    const-string/jumbo v0, "ro.build.characteristics"

    .line 621
    .line 622
    .line 623
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    if-eqz v0, :cond_18

    .line 628
    .line 629
    const-string/jumbo v1, "tablet"

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_18

    .line 637
    .line 638
    move v0, v2

    .line 639
    goto :goto_18

    .line 640
    :cond_18
    const/4 v0, 0x0

    .line 641
    :goto_18
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    .line 642
    .line 643
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_TOUCH_EVENT_AUTOBRIGHTNESS"

    .line 648
    .line 649
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    .line 654
    .line 655
    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    .line 656
    .line 657
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    const v1, 0x111016e

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PAPAYA_DQE:Z

    .line 669
    .line 670
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    .line 671
    .line 672
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_QUALITY:Z

    .line 673
    .line 674
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    .line 679
    .line 680
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    if-eqz v0, :cond_19

    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    :cond_19
    const-string v0, "34"

    .line 691
    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    const/16 v1, 0x21

    .line 697
    .line 698
    if-lt v0, v1, :cond_1a

    .line 699
    .line 700
    move v0, v2

    .line 701
    goto :goto_19

    .line 702
    :cond_1a
    const/4 v0, 0x0

    .line 703
    :goto_19
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    .line 704
    .line 705
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    const v4, 0x10e0038

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eq v0, v3, :cond_1b

    .line 717
    .line 718
    move v0, v2

    .line 719
    goto :goto_1a

    .line 720
    :cond_1b
    const/4 v0, 0x0

    .line 721
    :goto_1a
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 722
    .line 723
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    sput v0, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 732
    .line 733
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    const-string v3, "SEC_FLOATING_FEATURE_SYSTEM_SUPPORT_SCREEN_CURTAIN"

    .line 738
    .line 739
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    .line 744
    .line 745
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    const-string v3, ""

    .line 750
    .line 751
    invoke-virtual {v0, v11, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD:Z

    .line 760
    .line 761
    const/4 v0, 0x0

    .line 762
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    const/16 v4, 0x1f

    .line 767
    .line 768
    if-ge v3, v4, :cond_1c

    .line 769
    .line 770
    move/from16 v16, v2

    .line 771
    .line 772
    goto :goto_1b

    .line 773
    :cond_1c
    move/from16 v16, v0

    .line 774
    .line 775
    :goto_1b
    sput-boolean v16, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_MISC_POWER_HAL:Z

    .line 776
    .line 777
    if-eqz v9, :cond_1d

    .line 778
    .line 779
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    if-ge v3, v1, :cond_1d

    .line 784
    .line 785
    move v0, v2

    .line 786
    goto :goto_1c

    .line 787
    :cond_1d
    const/4 v0, 0x0

    .line 788
    :goto_1c
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_LIGHTS_HAL_EXTENSION:Z

    .line 789
    .line 790
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 791
    .line 792
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 793
    .line 794
    const-class v1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 795
    .line 796
    const/16 v2, 0x64

    .line 797
    .line 798
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 799
    .line 800
    .line 801
    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

    .line 802
    .line 803
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 804
    .line 805
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 806
    .line 807
    .line 808
    const/4 v1, 0x0

    .line 809
    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    .line 810
    .line 811
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->clearAll()V

    .line 812
    .line 813
    .line 814
    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 815
    .line 816
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 817
    .line 818
    const-class v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 819
    .line 820
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 821
    .line 822
    .line 823
    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;

    .line 824
    .line 825
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 826
    .line 827
    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>()V

    .line 828
    .line 829
    .line 830
    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 831
    .line 832
    return-void
.end method

.method public static brightnessToString(F)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4
    const-string v1, "%d(%.2f)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static brightnessToString(FI)Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d(%.3f)"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static callerInfoToString(Z)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, " (uid: "

    .line 15
    .line 16
    const-string v4, " pid: "

    .line 17
    .line 18
    const-string v5, ")"

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-eqz p0, :cond_4

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq p0, v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_0
    array-length v2, p0

    .line 51
    if-ge v1, v2, :cond_3

    .line 52
    .line 53
    aget-object v2, p0, v1

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "dalvik.system.VMStack"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    aget-object v2, p0, v1

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "java.lang.Thread"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    aget-object v2, p0, v1

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "com.android.server.power.PowerManagerUtil"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    aget-object v2, p0, v1

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "com.android.server.power.PowerManagerService"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    aget-object v2, p0, v1

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "android.os.PowerManager"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, " <- "

    .line 127
    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    aget-object v3, p0, v1

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, "() in "

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    aget-object v3, p0, v1

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, ":"

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    aget-object p0, p0, v1

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "fileExist "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ": "

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v1, "PowerManagerUtil"

    .line 39
    .line 40
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "fileWriteString to "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PowerManagerUtil"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 29
    .line 30
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method public static getCurrentTimeAsString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v2, "MM-dd HH:mm:ss.SSS"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static isFakeAodAvailable(I)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :cond_1
    :goto_0
    return v1
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "readFromFile "

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    new-instance v3, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "r"

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "PowerManagerUtil"

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ": "

    .line 33
    .line 34
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :catch_0
    :goto_1
    return-object v1
.end method
