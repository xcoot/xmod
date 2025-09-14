.class public abstract Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

.field public static final DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

.field public static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

.field public static final FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

.field public static final GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;

.field public static final MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

.field public static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

.field public static final USER_RESTRICTIONS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    .line 1
    const-string/jumbo v78, "no_thread_network"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v79, "no_change_near_field_communication_radio"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "no_config_wifi"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "no_config_locale"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "no_modify_accounts"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "no_install_apps"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "no_uninstall_apps"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "no_share_location"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "no_install_unknown_sources"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v7, "no_install_unknown_sources_globally"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v8, "no_config_bluetooth"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v9, "no_bluetooth"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v10, "no_bluetooth_sharing"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v11, "no_usb_file_transfer"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v12, "no_config_credentials"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v13, "no_remove_user"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v14, "no_remove_managed_profile"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v15, "no_debugging_features"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v16, "no_config_vpn"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v17, "no_config_date_time"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v18, "no_config_tethering"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v19, "no_network_reset"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v20, "no_factory_reset"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v21, "no_add_user"

    .line 71
    .line 72
    .line 73
    const-string/jumbo v22, "no_add_managed_profile"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v23, "no_add_clone_profile"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v24, "no_add_private_profile"

    .line 80
    .line 81
    .line 82
    const-string v25, "ensure_verify_apps"

    .line 83
    .line 84
    const-string/jumbo v26, "no_config_cell_broadcasts"

    .line 85
    .line 86
    .line 87
    const-string/jumbo v27, "no_config_mobile_networks"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v28, "no_control_apps"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v29, "no_physical_media"

    .line 94
    .line 95
    .line 96
    const-string/jumbo v30, "no_unmute_microphone"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v31, "no_adjust_volume"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v32, "no_outgoing_calls"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v33, "no_sms"

    .line 106
    .line 107
    .line 108
    const-string/jumbo v34, "no_fun"

    .line 109
    .line 110
    .line 111
    const-string/jumbo v35, "no_create_windows"

    .line 112
    .line 113
    .line 114
    const-string/jumbo v36, "no_system_error_dialogs"

    .line 115
    .line 116
    .line 117
    const-string/jumbo v37, "no_cross_profile_copy_paste"

    .line 118
    .line 119
    .line 120
    const-string/jumbo v38, "no_outgoing_beam"

    .line 121
    .line 122
    .line 123
    const-string/jumbo v39, "no_wallpaper"

    .line 124
    .line 125
    .line 126
    const-string/jumbo v40, "no_safe_boot"

    .line 127
    .line 128
    .line 129
    const-string v41, "allow_parent_profile_app_linking"

    .line 130
    .line 131
    const-string/jumbo v42, "no_record_audio"

    .line 132
    .line 133
    .line 134
    const-string/jumbo v43, "no_camera"

    .line 135
    .line 136
    .line 137
    const-string/jumbo v44, "no_run_in_background"

    .line 138
    .line 139
    .line 140
    const-string/jumbo v45, "no_data_roaming"

    .line 141
    .line 142
    .line 143
    const-string/jumbo v46, "no_set_user_icon"

    .line 144
    .line 145
    .line 146
    const-string/jumbo v47, "no_set_wallpaper"

    .line 147
    .line 148
    .line 149
    const-string/jumbo v48, "no_oem_unlock"

    .line 150
    .line 151
    .line 152
    const-string v49, "disallow_unmute_device"

    .line 153
    .line 154
    const-string/jumbo v50, "no_autofill"

    .line 155
    .line 156
    .line 157
    const-string/jumbo v51, "no_content_capture"

    .line 158
    .line 159
    .line 160
    const-string/jumbo v52, "no_content_suggestions"

    .line 161
    .line 162
    .line 163
    const-string/jumbo v53, "no_user_switch"

    .line 164
    .line 165
    .line 166
    const-string/jumbo v54, "no_unified_password"

    .line 167
    .line 168
    .line 169
    const-string/jumbo v55, "no_config_location"

    .line 170
    .line 171
    .line 172
    const-string/jumbo v56, "no_airplane_mode"

    .line 173
    .line 174
    .line 175
    const-string/jumbo v57, "no_config_brightness"

    .line 176
    .line 177
    .line 178
    const-string/jumbo v58, "no_sharing_into_profile"

    .line 179
    .line 180
    .line 181
    const-string/jumbo v59, "no_ambient_display"

    .line 182
    .line 183
    .line 184
    const-string/jumbo v60, "no_config_screen_timeout"

    .line 185
    .line 186
    .line 187
    const-string/jumbo v61, "no_printing"

    .line 188
    .line 189
    .line 190
    const-string v62, "disallow_config_private_dns"

    .line 191
    .line 192
    const-string v63, "disallow_microphone_toggle"

    .line 193
    .line 194
    const-string/jumbo v64, "no_non_market_app_by_knox"

    .line 195
    .line 196
    .line 197
    const-string v65, "disallow_camera_toggle"

    .line 198
    .line 199
    const-string/jumbo v66, "no_change_wifi_state"

    .line 200
    .line 201
    .line 202
    const-string/jumbo v67, "no_wifi_tethering"

    .line 203
    .line 204
    .line 205
    const-string/jumbo v68, "no_grant_admin"

    .line 206
    .line 207
    .line 208
    const-string/jumbo v69, "no_sharing_admin_configured_wifi"

    .line 209
    .line 210
    .line 211
    const-string/jumbo v70, "no_wifi_direct"

    .line 212
    .line 213
    .line 214
    const-string/jumbo v71, "no_add_wifi_config"

    .line 215
    .line 216
    .line 217
    const-string/jumbo v72, "no_cellular_2g"

    .line 218
    .line 219
    .line 220
    const-string/jumbo v73, "no_ultra_wideband_radio"

    .line 221
    .line 222
    .line 223
    const-string v74, "disallow_config_default_apps"

    .line 224
    .line 225
    const-string/jumbo v75, "no_near_field_communication_radio"

    .line 226
    .line 227
    .line 228
    const-string/jumbo v76, "no_sim_globally"

    .line 229
    .line 230
    .line 231
    const-string/jumbo v77, "no_assist_content"

    .line 232
    .line 233
    .line 234
    filled-new-array/range {v0 .. v79}, [Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    const/16 v2, 0x50

    .line 247
    .line 248
    if-ne v1, v2, :cond_0

    .line 249
    .line 250
    const/4 v1, 0x1

    .line 251
    goto :goto_0

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 253
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 254
    .line 255
    .line 256
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 257
    .line 258
    const-string/jumbo v0, "no_add_managed_profile"

    .line 259
    .line 260
    .line 261
    const-string/jumbo v1, "no_remove_managed_profile"

    .line 262
    .line 263
    .line 264
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    .line 273
    .line 274
    const-string/jumbo v0, "no_record_audio"

    .line 275
    .line 276
    .line 277
    filled-new-array {v0}, [Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 286
    .line 287
    const-string/jumbo v15, "no_data_roaming"

    .line 288
    .line 289
    .line 290
    const-string/jumbo v16, "no_airplane_mode"

    .line 291
    .line 292
    .line 293
    const-string/jumbo v2, "no_bluetooth"

    .line 294
    .line 295
    .line 296
    const-string/jumbo v3, "no_usb_file_transfer"

    .line 297
    .line 298
    .line 299
    const-string/jumbo v4, "no_config_tethering"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v5, "no_network_reset"

    .line 303
    .line 304
    .line 305
    const-string/jumbo v6, "no_factory_reset"

    .line 306
    .line 307
    .line 308
    const-string/jumbo v7, "no_add_user"

    .line 309
    .line 310
    .line 311
    const-string/jumbo v8, "no_config_cell_broadcasts"

    .line 312
    .line 313
    .line 314
    const-string/jumbo v9, "no_config_mobile_networks"

    .line 315
    .line 316
    .line 317
    const-string/jumbo v10, "no_physical_media"

    .line 318
    .line 319
    .line 320
    const-string/jumbo v11, "no_sms"

    .line 321
    .line 322
    .line 323
    const-string/jumbo v12, "no_fun"

    .line 324
    .line 325
    .line 326
    const-string/jumbo v13, "no_safe_boot"

    .line 327
    .line 328
    .line 329
    const-string/jumbo v14, "no_create_windows"

    .line 330
    .line 331
    .line 332
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 341
    .line 342
    const-string/jumbo v13, "no_thread_network"

    .line 343
    .line 344
    .line 345
    const-string/jumbo v14, "no_change_near_field_communication_radio"

    .line 346
    .line 347
    .line 348
    const-string/jumbo v2, "no_user_switch"

    .line 349
    .line 350
    .line 351
    const-string v3, "disallow_config_private_dns"

    .line 352
    .line 353
    const-string v4, "disallow_microphone_toggle"

    .line 354
    .line 355
    const-string v5, "disallow_camera_toggle"

    .line 356
    .line 357
    const-string/jumbo v6, "no_change_wifi_state"

    .line 358
    .line 359
    .line 360
    const-string/jumbo v7, "no_wifi_tethering"

    .line 361
    .line 362
    .line 363
    const-string/jumbo v8, "no_wifi_direct"

    .line 364
    .line 365
    .line 366
    const-string/jumbo v9, "no_add_wifi_config"

    .line 367
    .line 368
    .line 369
    const-string/jumbo v10, "no_cellular_2g"

    .line 370
    .line 371
    .line 372
    const-string/jumbo v11, "no_ultra_wideband_radio"

    .line 373
    .line 374
    .line 375
    const-string/jumbo v12, "no_near_field_communication_radio"

    .line 376
    .line 377
    .line 378
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 387
    .line 388
    const-string/jumbo v1, "no_wallpaper"

    .line 389
    .line 390
    .line 391
    const-string/jumbo v2, "no_oem_unlock"

    .line 392
    .line 393
    .line 394
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 403
    .line 404
    const-string/jumbo v9, "no_assist_content"

    .line 405
    .line 406
    .line 407
    const-string v10, "disallow_config_default_apps"

    .line 408
    .line 409
    const-string/jumbo v1, "no_adjust_volume"

    .line 410
    .line 411
    .line 412
    const-string/jumbo v2, "no_bluetooth_sharing"

    .line 413
    .line 414
    .line 415
    const-string/jumbo v3, "no_config_date_time"

    .line 416
    .line 417
    .line 418
    const-string/jumbo v4, "no_system_error_dialogs"

    .line 419
    .line 420
    .line 421
    const-string/jumbo v5, "no_run_in_background"

    .line 422
    .line 423
    .line 424
    const-string/jumbo v6, "no_unmute_microphone"

    .line 425
    .line 426
    .line 427
    const-string v7, "disallow_unmute_device"

    .line 428
    .line 429
    const-string/jumbo v8, "no_camera"

    .line 430
    .line 431
    .line 432
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 441
    .line 442
    const-string/jumbo v12, "no_thread_network"

    .line 443
    .line 444
    .line 445
    const-string/jumbo v13, "no_change_near_field_communication_radio"

    .line 446
    .line 447
    .line 448
    const-string/jumbo v1, "no_airplane_mode"

    .line 449
    .line 450
    .line 451
    const-string/jumbo v2, "no_config_date_time"

    .line 452
    .line 453
    .line 454
    const-string v3, "disallow_config_private_dns"

    .line 455
    .line 456
    const-string/jumbo v4, "no_change_wifi_state"

    .line 457
    .line 458
    .line 459
    const-string/jumbo v5, "no_debugging_features"

    .line 460
    .line 461
    .line 462
    const-string/jumbo v6, "no_wifi_tethering"

    .line 463
    .line 464
    .line 465
    const-string/jumbo v7, "no_wifi_direct"

    .line 466
    .line 467
    .line 468
    const-string/jumbo v8, "no_add_wifi_config"

    .line 469
    .line 470
    .line 471
    const-string/jumbo v9, "no_cellular_2g"

    .line 472
    .line 473
    .line 474
    const-string/jumbo v10, "no_ultra_wideband_radio"

    .line 475
    .line 476
    .line 477
    const-string/jumbo v11, "no_near_field_communication_radio"

    .line 478
    .line 479
    .line 480
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 489
    .line 490
    const-string/jumbo v0, "no_sim_globally"

    .line 491
    .line 492
    .line 493
    filled-new-array {v0}, [Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

    .line 502
    .line 503
    const-string/jumbo v24, "no_config_brightness"

    .line 504
    .line 505
    .line 506
    const-string/jumbo v25, "no_config_screen_timeout"

    .line 507
    .line 508
    .line 509
    const-string/jumbo v2, "no_config_bluetooth"

    .line 510
    .line 511
    .line 512
    const-string/jumbo v3, "no_config_location"

    .line 513
    .line 514
    .line 515
    const-string/jumbo v4, "no_config_wifi"

    .line 516
    .line 517
    .line 518
    const-string/jumbo v5, "no_content_capture"

    .line 519
    .line 520
    .line 521
    const-string/jumbo v6, "no_content_suggestions"

    .line 522
    .line 523
    .line 524
    const-string/jumbo v7, "no_debugging_features"

    .line 525
    .line 526
    .line 527
    const-string/jumbo v8, "no_share_location"

    .line 528
    .line 529
    .line 530
    const-string/jumbo v9, "no_outgoing_calls"

    .line 531
    .line 532
    .line 533
    const-string/jumbo v10, "no_camera"

    .line 534
    .line 535
    .line 536
    const-string/jumbo v11, "no_bluetooth"

    .line 537
    .line 538
    .line 539
    const-string/jumbo v12, "no_bluetooth_sharing"

    .line 540
    .line 541
    .line 542
    const-string/jumbo v13, "no_config_cell_broadcasts"

    .line 543
    .line 544
    .line 545
    const-string/jumbo v14, "no_config_mobile_networks"

    .line 546
    .line 547
    .line 548
    const-string/jumbo v15, "no_config_tethering"

    .line 549
    .line 550
    .line 551
    const-string/jumbo v16, "no_data_roaming"

    .line 552
    .line 553
    .line 554
    const-string/jumbo v17, "no_safe_boot"

    .line 555
    .line 556
    .line 557
    const-string/jumbo v18, "no_sms"

    .line 558
    .line 559
    .line 560
    const-string/jumbo v19, "no_usb_file_transfer"

    .line 561
    .line 562
    .line 563
    const-string/jumbo v20, "no_physical_media"

    .line 564
    .line 565
    .line 566
    const-string/jumbo v21, "no_unmute_microphone"

    .line 567
    .line 568
    .line 569
    const-string v22, "disallow_config_default_apps"

    .line 570
    .line 571
    const-string/jumbo v23, "no_add_private_profile"

    .line 572
    .line 573
    .line 574
    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 583
    .line 584
    const-string/jumbo v1, "no_bluetooth_sharing"

    .line 585
    .line 586
    .line 587
    const-string/jumbo v2, "no_debugging_features"

    .line 588
    .line 589
    .line 590
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 599
    .line 600
    const-string/jumbo v1, "no_airplane_mode"

    .line 601
    .line 602
    .line 603
    const-string/jumbo v2, "no_install_unknown_sources_globally"

    .line 604
    .line 605
    .line 606
    const-string v3, "ensure_verify_apps"

    .line 607
    .line 608
    filled-new-array {v3, v1, v2, v0}, [Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 617
    .line 618
    const-string/jumbo v5, "no_config_date_time"

    .line 619
    .line 620
    .line 621
    const-string/jumbo v6, "no_outgoing_calls"

    .line 622
    .line 623
    .line 624
    const-string/jumbo v1, "no_add_user"

    .line 625
    .line 626
    .line 627
    const-string/jumbo v2, "no_debugging_features"

    .line 628
    .line 629
    .line 630
    const-string/jumbo v3, "no_install_unknown_sources"

    .line 631
    .line 632
    .line 633
    const-string/jumbo v4, "no_safe_boot"

    .line 634
    .line 635
    .line 636
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    .line 645
    .line 646
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v4, v3, :cond_3

    .line 53
    .line 54
    return v2

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eq v4, v3, :cond_5

    .line 84
    .line 85
    return v2

    .line 86
    :cond_6
    return v0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;ZZ)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/admin/flags/Flags;->esimManagementEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 10
    .line 11
    check-cast v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 21
    .line 22
    check-cast v0, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    if-nez p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 34
    .line 35
    check-cast p1, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    if-nez p2, :cond_3

    .line 45
    .line 46
    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

    .line 47
    .line 48
    check-cast p1, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    return v2

    .line 57
    :cond_3
    return v1

    .line 58
    :cond_4
    sget-object p2, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 59
    .line 60
    check-cast p2, Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_5

    .line 67
    .line 68
    sget-object p2, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 69
    .line 70
    check-cast p2, Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_5

    .line 77
    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 81
    .line 82
    check-cast p1, Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move v1, v2

    .line 92
    :cond_6
    :goto_0
    return v1
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-static {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz v1, :cond_3

    .line 37
    .line 38
    const-string/jumbo p2, "none"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string/jumbo p2, "null"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-void
.end method

.method public static isGlobal(ILjava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 14
    .line 15
    check-cast v0, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    if-ne p0, v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 27
    .line 28
    check-cast p0, Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_3

    .line 35
    .line 36
    :cond_1
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 37
    .line 38
    check-cast p0, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 47
    .line 48
    check-cast p0, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 60
    :goto_1
    return p0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "Unknown restriction queried by uid "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    array-length v5, v2

    .line 40
    if-lez v5, :cond_1

    .line 41
    .line 42
    const-string v5, " ("

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    aget-object v5, v2, v4

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    array-length v5, v2

    .line 53
    if-le v5, v1, :cond_0

    .line 54
    .line 55
    const-string v1, " et al"

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v1, ")"

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v1, ": "

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "UserRestrictionsUtils"

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    if-nez v2, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    move v5, v4

    .line 92
    :goto_1
    array-length v6, v2

    .line 93
    if-ge v5, v6, :cond_5

    .line 94
    .line 95
    :try_start_1
    aget-object v6, v2, v5

    .line 96
    .line 97
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    const-wide/32 v8, 0xc2000

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, v6, v8, v9, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 111
    .line 112
    .line 113
    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    if-eqz v6, :cond_4

    .line 115
    .line 116
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :catch_1
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :goto_4
    return v4

    .line 135
    :cond_6
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    return-void
.end method

.method public static readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;
    .locals 1

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 2
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-interface {p0, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    .line 14
    aget-object v3, p2, v2

    .line 15
    .line 16
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eq v4, v3, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1
.end method

.method public static writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 29
    .line 30
    check-cast v3, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 40
    .line 41
    check-cast v3, Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v3, "Unknown user restriction detected: "

    .line 61
    .line 62
    const-string v4, "UserRestrictionsUtils"

    .line 63
    .line 64
    invoke-static {v3, v2, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    .line 70
    .line 71
    return-void
.end method
