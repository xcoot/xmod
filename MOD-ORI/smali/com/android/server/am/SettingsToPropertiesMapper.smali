.class public final Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final sDeviceConfigAconfigScopes:[Ljava/lang/String;

.field static final sDeviceConfigScopes:[Ljava/lang/String;

.field static final sGlobalSettings:[Ljava/lang/String;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceConfigAconfigScopes:[Ljava/lang/String;

.field public final mDeviceConfigScopes:[Ljava/lang/String;

.field public final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 103

    .line 1
    const-string/jumbo v0, "native_flags_health_check_enabled"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v28, "hdmi_control"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v29, "tethering_u_or_later_native"

    .line 14
    .line 15
    .line 16
    const-string v1, "activity_manager_native_boot"

    .line 17
    .line 18
    const-string/jumbo v2, "camera_native"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "configuration"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "connectivity"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "edgetpu_native"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v6, "input_native_boot"

    .line 31
    .line 32
    .line 33
    const-string/jumbo v7, "intelligence_content_suggestions"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v8, "lmkd_native"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v9, "media_native"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v10, "mglru_native"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v11, "netd_native"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v12, "nnapi_native"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v13, "profcollect_native_boot"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v14, "remote_key_provisioning_native"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v15, "runtime_native"

    .line 58
    .line 59
    .line 60
    const-string/jumbo v16, "runtime_native_boot"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v17, "statsd_native"

    .line 64
    .line 65
    .line 66
    const-string/jumbo v18, "statsd_native_boot"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v19, "storage_native_boot"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v20, "surface_flinger_native_boot"

    .line 73
    .line 74
    .line 75
    const-string/jumbo v21, "swcodec_native"

    .line 76
    .line 77
    .line 78
    const-string/jumbo v22, "vendor_system_native"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v23, "vendor_system_native_boot"

    .line 82
    .line 83
    .line 84
    const-string/jumbo v24, "virtualization_framework_native"

    .line 85
    .line 86
    .line 87
    const-string/jumbo v25, "window_manager_native_boot"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v26, "memory_safety_native_boot"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v27, "memory_safety_native"

    .line 94
    .line 95
    .line 96
    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    .line 101
    .line 102
    const-string/jumbo v101, "window_surfaces"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v102, "windowing_frontend"

    .line 106
    .line 107
    .line 108
    const-string v1, "accessibility"

    .line 109
    .line 110
    const-string v2, "android_core_networking"

    .line 111
    .line 112
    const-string v3, "android_stylus"

    .line 113
    .line 114
    const-string v4, "aoc"

    .line 115
    .line 116
    const-string v5, "app_widgets"

    .line 117
    .line 118
    const-string v6, "arc_next"

    .line 119
    .line 120
    const-string v7, "art_mainline"

    .line 121
    .line 122
    const-string v8, "art_performance"

    .line 123
    .line 124
    const-string v9, "attack_tools"

    .line 125
    .line 126
    const-string v10, "avic"

    .line 127
    .line 128
    const-string/jumbo v11, "biometrics"

    .line 129
    .line 130
    .line 131
    const-string/jumbo v12, "biometrics_framework"

    .line 132
    .line 133
    .line 134
    const-string/jumbo v13, "biometrics_integration"

    .line 135
    .line 136
    .line 137
    const-string/jumbo v14, "bluetooth"

    .line 138
    .line 139
    .line 140
    const-string/jumbo v15, "brownout_mitigation_audio"

    .line 141
    .line 142
    .line 143
    const-string/jumbo v16, "brownout_mitigation_modem"

    .line 144
    .line 145
    .line 146
    const-string/jumbo v17, "build"

    .line 147
    .line 148
    .line 149
    const-string/jumbo v18, "camera_hal"

    .line 150
    .line 151
    .line 152
    const-string/jumbo v19, "camera_platform"

    .line 153
    .line 154
    .line 155
    const-string/jumbo v20, "car_framework"

    .line 156
    .line 157
    .line 158
    const-string/jumbo v21, "car_perception"

    .line 159
    .line 160
    .line 161
    const-string/jumbo v22, "car_security"

    .line 162
    .line 163
    .line 164
    const-string/jumbo v23, "car_telemetry"

    .line 165
    .line 166
    .line 167
    const-string/jumbo v24, "codec_fwk"

    .line 168
    .line 169
    .line 170
    const-string/jumbo v25, "companion"

    .line 171
    .line 172
    .line 173
    const-string/jumbo v26, "com_android_adbd"

    .line 174
    .line 175
    .line 176
    const-string/jumbo v27, "content_protection"

    .line 177
    .line 178
    .line 179
    const-string/jumbo v28, "context_hub"

    .line 180
    .line 181
    .line 182
    const-string/jumbo v29, "core_experiments_team_internal"

    .line 183
    .line 184
    .line 185
    const-string/jumbo v30, "core_graphics"

    .line 186
    .line 187
    .line 188
    const-string/jumbo v31, "core_libraries"

    .line 189
    .line 190
    .line 191
    const-string/jumbo v32, "crumpet"

    .line 192
    .line 193
    .line 194
    const-string/jumbo v33, "dck_framework"

    .line 195
    .line 196
    .line 197
    const-string/jumbo v34, "devoptions_settings"

    .line 198
    .line 199
    .line 200
    const-string/jumbo v35, "game"

    .line 201
    .line 202
    .line 203
    const-string/jumbo v36, "gpu"

    .line 204
    .line 205
    .line 206
    const-string/jumbo v37, "haptics"

    .line 207
    .line 208
    .line 209
    const-string/jumbo v38, "hardware_backed_security_mainline"

    .line 210
    .line 211
    .line 212
    const-string/jumbo v39, "input"

    .line 213
    .line 214
    .line 215
    const-string/jumbo v40, "llvm_and_toolchains"

    .line 216
    .line 217
    .line 218
    const-string/jumbo v41, "lse_desktop_experience"

    .line 219
    .line 220
    .line 221
    const-string/jumbo v42, "machine_learning"

    .line 222
    .line 223
    .line 224
    const-string/jumbo v43, "mainline_modularization"

    .line 225
    .line 226
    .line 227
    const-string/jumbo v44, "mainline_sdk"

    .line 228
    .line 229
    .line 230
    const-string/jumbo v45, "make_pixel_haptics"

    .line 231
    .line 232
    .line 233
    const-string/jumbo v46, "media_audio"

    .line 234
    .line 235
    .line 236
    const-string/jumbo v47, "media_drm"

    .line 237
    .line 238
    .line 239
    const-string/jumbo v48, "media_reliability"

    .line 240
    .line 241
    .line 242
    const-string/jumbo v49, "media_solutions"

    .line 243
    .line 244
    .line 245
    const-string/jumbo v50, "media_tv"

    .line 246
    .line 247
    .line 248
    const-string/jumbo v51, "nearby"

    .line 249
    .line 250
    .line 251
    const-string/jumbo v52, "nfc"

    .line 252
    .line 253
    .line 254
    const-string/jumbo v53, "pdf_viewer"

    .line 255
    .line 256
    .line 257
    const-string/jumbo v54, "perfetto"

    .line 258
    .line 259
    .line 260
    const-string/jumbo v55, "pixel_audio_android"

    .line 261
    .line 262
    .line 263
    const-string/jumbo v56, "pixel_biometrics_face"

    .line 264
    .line 265
    .line 266
    const-string/jumbo v57, "pixel_bluetooth"

    .line 267
    .line 268
    .line 269
    const-string/jumbo v58, "pixel_connectivity_gps"

    .line 270
    .line 271
    .line 272
    const-string/jumbo v59, "pixel_continuity"

    .line 273
    .line 274
    .line 275
    const-string/jumbo v60, "pixel_sensors"

    .line 276
    .line 277
    .line 278
    const-string/jumbo v61, "pixel_system_sw_video"

    .line 279
    .line 280
    .line 281
    const-string/jumbo v62, "pixel_watch"

    .line 282
    .line 283
    .line 284
    const-string/jumbo v63, "platform_compat"

    .line 285
    .line 286
    .line 287
    const-string/jumbo v64, "platform_security"

    .line 288
    .line 289
    .line 290
    const-string/jumbo v65, "pmw"

    .line 291
    .line 292
    .line 293
    const-string/jumbo v66, "power"

    .line 294
    .line 295
    .line 296
    const-string/jumbo v67, "preload_safety"

    .line 297
    .line 298
    .line 299
    const-string/jumbo v68, "printing"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v69, "privacy_infra_policy"

    .line 303
    .line 304
    .line 305
    const-string/jumbo v70, "resource_manager"

    .line 306
    .line 307
    .line 308
    const-string/jumbo v71, "responsible_apis"

    .line 309
    .line 310
    .line 311
    const-string/jumbo v72, "rust"

    .line 312
    .line 313
    .line 314
    const-string/jumbo v73, "safety_center"

    .line 315
    .line 316
    .line 317
    const-string/jumbo v74, "sensors"

    .line 318
    .line 319
    .line 320
    const-string/jumbo v75, "spoon"

    .line 321
    .line 322
    .line 323
    const-string/jumbo v76, "statsd"

    .line 324
    .line 325
    .line 326
    const-string/jumbo v77, "system_performance"

    .line 327
    .line 328
    .line 329
    const-string/jumbo v78, "system_sw_touch"

    .line 330
    .line 331
    .line 332
    const-string/jumbo v79, "system_sw_usb"

    .line 333
    .line 334
    .line 335
    const-string/jumbo v80, "test_suites"

    .line 336
    .line 337
    .line 338
    const-string/jumbo v81, "text"

    .line 339
    .line 340
    .line 341
    const-string/jumbo v82, "threadnetwork"

    .line 342
    .line 343
    .line 344
    const-string/jumbo v83, "treble"

    .line 345
    .line 346
    .line 347
    const-string/jumbo v84, "tv_system_ui"

    .line 348
    .line 349
    .line 350
    const-string/jumbo v85, "usb"

    .line 351
    .line 352
    .line 353
    const-string/jumbo v86, "vibrator"

    .line 354
    .line 355
    .line 356
    const-string/jumbo v87, "virtual_devices"

    .line 357
    .line 358
    .line 359
    const-string/jumbo v88, "virtualization"

    .line 360
    .line 361
    .line 362
    const-string/jumbo v89, "wallet_integration"

    .line 363
    .line 364
    .line 365
    const-string/jumbo v90, "wear_calling_messaging"

    .line 366
    .line 367
    .line 368
    const-string/jumbo v91, "wear_connectivity"

    .line 369
    .line 370
    .line 371
    const-string/jumbo v92, "wear_esim_carriers"

    .line 372
    .line 373
    .line 374
    const-string/jumbo v93, "wear_frameworks"

    .line 375
    .line 376
    .line 377
    const-string/jumbo v94, "wear_health_services"

    .line 378
    .line 379
    .line 380
    const-string/jumbo v95, "wear_media"

    .line 381
    .line 382
    .line 383
    const-string/jumbo v96, "wear_offload"

    .line 384
    .line 385
    .line 386
    const-string/jumbo v97, "wear_security"

    .line 387
    .line 388
    .line 389
    const-string/jumbo v98, "wear_system_health"

    .line 390
    .line 391
    .line 392
    const-string/jumbo v99, "wear_systems"

    .line 393
    .line 394
    .line 395
    const-string/jumbo v100, "wear_sysui"

    .line 396
    .line 397
    .line 398
    filled-new-array/range {v1 .. v102}, [Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigAconfigScopes:[Ljava/lang/String;

    .line 403
    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigAconfigScopes:[Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static getResetFlagsFileContent()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    const-string v2, "/data/server_configurable_flags/reset_flags"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v3, Ljava/io/FileReader;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    const-string/jumbo v2, "failed to read file /data/server_configurable_flags/reset_flags"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v0
.end method

.method public static logErr(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static logErr(Ljava/lang/String;)V
    .locals 2

    .line 4
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static makeAconfigFlagPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.device_config.aconfig_flags."

    .line 2
    .line 3
    .line 4
    const-string v1, "."

    .line 5
    .line 6
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "^[\\w\\.\\-@:]*$"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, ".."

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.device_config."

    .line 2
    .line 3
    .line 4
    const-string v1, "."

    .line 5
    .line 6
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "^[\\w\\.\\-@:]*$"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, ".."

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x5c

    .line 22
    .line 23
    if-le v0, v1, :cond_2

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v1, "key="

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, " value="

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, " exceeds system property max length."

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "Unable to set property "

    .line 63
    .line 64
    const-string v2, " value \'"

    .line 65
    .line 66
    const-string v3, "\'"

    .line 67
    .line 68
    invoke-static {v1, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public static stageFlagsInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .locals 15

    .line 1
    const-string v0, "SettingsToPropertiesMapper"

    .line 2
    .line 3
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const-wide v6, 0x10b00000002L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v8, 0x20b00000001L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v10, -0x1

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x1

    .line 35
    if-eqz v5, :cond_5

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v5, v11}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    if-nez v11, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v13, "*"

    .line 53
    .line 54
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eq v13, v10, :cond_4

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    sub-int/2addr v14, v12

    .line 65
    if-eq v13, v14, :cond_4

    .line 66
    .line 67
    if-nez v13, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v5, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v13, v13, 0x1

    .line 74
    .line 75
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string v12, "."

    .line 80
    .line 81
    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-ne v12, v10, :cond_3

    .line 86
    .line 87
    const-string/jumbo v6, "invalid flag name: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v5}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v5, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    add-int/lit8 v12, v12, 0x1

    .line 103
    .line 104
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    const-wide v12, 0x10900000001L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-wide v12, 0x10900000002L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-wide v12, 0x10900000003L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-wide v10, 0x10800000004L

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v4, v4, 0x1

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_4
    :goto_1
    const-string/jumbo v6, "invalid local flag override: "

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v5}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_5
    if-nez v4, :cond_6

    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    const-string/jumbo p0, "received "

    .line 174
    .line 175
    .line 176
    new-instance v2, Landroid/net/LocalSocket;

    .line 177
    .line 178
    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 179
    .line 180
    .line 181
    :try_start_0
    new-instance v4, Landroid/net/LocalSocketAddress;

    .line 182
    .line 183
    const-string v5, "aconfigd"

    .line 184
    .line 185
    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 186
    .line 187
    invoke-direct {v4, v5, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v4, "connected to aconfigd socket"

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 197
    .line 198
    .line 199
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    .line 200
    .line 201
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 206
    .line 207
    .line 208
    new-instance v5, Ljava/io/DataOutputStream;

    .line 209
    .line 210
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    .line 216
    .line 217
    :try_start_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    array-length v2, v1

    .line 222
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 223
    .line 224
    .line 225
    array-length v2, v1

    .line 226
    invoke-virtual {v5, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 227
    .line 228
    .line 229
    const-string/jumbo v1, "flag override requests sent to aconfigd"

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    .line 234
    .line 235
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    .line 240
    .line 241
    invoke-direct {v2, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    .line 243
    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p0, " bytes back from aconfigd"

    .line 253
    .line 254
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 262
    .line 263
    .line 264
    move-object v11, v2

    .line 265
    goto :goto_2

    .line 266
    :catch_0
    move-exception p0

    .line 267
    const-string/jumbo v1, "failed to read requests return from aconfigd"

    .line 268
    .line 269
    .line 270
    invoke-static {p0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :catch_1
    move-exception p0

    .line 275
    const-string/jumbo v1, "failed to send requests to aconfigd"

    .line 276
    .line 277
    .line 278
    invoke-static {p0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :catch_2
    move-exception p0

    .line 283
    const-string/jumbo v1, "failed to get local socket iostreams"

    .line 284
    .line 285
    .line 286
    invoke-static {p0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :catch_3
    move-exception p0

    .line 291
    const-string/jumbo v1, "failed to connect to aconfigd socket"

    .line 292
    .line 293
    .line 294
    invoke-static {p0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    if-eq p0, v10, :cond_b

    .line 302
    .line 303
    if-eq p0, v12, :cond_7

    .line 304
    .line 305
    const-string/jumbo p0, "invalid message type, expect storage return message"

    .line 306
    .line 307
    .line 308
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_7
    invoke-virtual {v11, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 313
    .line 314
    .line 315
    move-result-wide v1

    .line 316
    invoke-virtual {v11}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    if-eq p0, v10, :cond_a

    .line 321
    .line 322
    const/4 v3, 0x2

    .line 323
    if-eq p0, v3, :cond_9

    .line 324
    .line 325
    const/16 v3, 0x8

    .line 326
    .line 327
    if-eq p0, v3, :cond_8

    .line 328
    .line 329
    const-string/jumbo p0, "invalid message type, expecting only flag override return or error message"

    .line 330
    .line 331
    .line 332
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_8
    const-wide v3, 0x10900000008L

    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string/jumbo v4, "override request failed: "

    .line 348
    .line 349
    .line 350
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_9
    const-string/jumbo p0, "successfully handled override requests"

    .line 365
    .line 366
    .line 367
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 371
    .line 372
    .line 373
    move-result-wide v3

    .line 374
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 375
    .line 376
    .line 377
    :cond_a
    :goto_3
    invoke-virtual {v11, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :catch_4
    move-exception p0

    .line 382
    const-string/jumbo v0, "failed to parse aconfigd return"

    .line 383
    .line 384
    .line 385
    invoke-static {p0, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_b
    return-void
.end method


# virtual methods
.method public updatePropertiesFromSettings()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_3

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const-string/jumbo v6, "global_settings"

    .line 15
    .line 16
    .line 17
    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v6, "setting uri is null for globalSetting "

    .line 26
    .line 27
    .line 28
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-nez v6, :cond_1

    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v6, "invalid prop name for globalSetting "

    .line 47
    .line 48
    .line 49
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    .line 64
    .line 65
    invoke-direct {v7, p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v8, "device_config.reset_performed"

    .line 69
    .line 70
    .line 71
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string/jumbo v9, "true"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    .line 89
    invoke-virtual {v4, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    .line 96
    .line 97
    array-length v1, v0

    .line 98
    move v3, v2

    .line 99
    :goto_2
    if-ge v3, v1, :cond_4

    .line 100
    .line 101
    aget-object v4, v0, v3

    .line 102
    .line 103
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    new-instance v6, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    invoke-direct {v6, p0, v7}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigAconfigScopes:[Ljava/lang/String;

    .line 118
    .line 119
    array-length v1, v0

    .line 120
    :goto_3
    if-ge v2, v1, :cond_5

    .line 121
    .line 122
    aget-object v3, v0, v2

    .line 123
    .line 124
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 125
    .line 126
    new-instance v5, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    const/4 v6, 0x1

    .line 129
    invoke-direct {v5, p0, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 139
    .line 140
    new-instance v1, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 v2, 0x2

    .line 143
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;I)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo p0, "staged"

    .line 147
    .line 148
    .line 149
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda3;

    .line 153
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v1, "device_config_overrides"

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p2, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
