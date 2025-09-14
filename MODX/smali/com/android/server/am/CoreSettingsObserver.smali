.class public final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static volatile sDeviceConfigContextEntriesLoaded:Z

.field public static final sDeviceConfigEntries:Ljava/util/List;

.field static final sGlobalSettingToTypeMap:Ljava/util/Map;

.field static final sSecureSettingToTypeMap:Ljava/util/Map;

.field static final sSystemSettingToTypeMap:Ljava/util/Map;


# instance fields
.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    sput-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    sput-object v2, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    sput-object v3, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 31
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 33
    const-string/jumbo v4, "long_press_timeout"

    .line 36
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v4, "multi_press_timeout"

    .line 42
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v4, "key_repeat_timeout"

    .line 48
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v4, "key_repeat_delay"

    .line 54
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v4, "stylus_pointer_icon_enabled"

    .line 60
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "time_12_24"

    .line 66
    const-class v4, Ljava/lang/String;

    .line 68
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v0, "debug_view_attributes"

    .line 74
    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "debug_view_attributes_application_package"

    .line 80
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "angle_debug_package"

    .line 85
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "angle_gl_driver_all_angle"

    .line 90
    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "angle_gl_driver_selection_pkgs"

    .line 95
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "angle_gl_driver_selection_values"

    .line 100
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "angle_egl_features"

    .line 105
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v0, "show_angle_in_use_dialog_box"

    .line 111
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v0, "enable_gpu_debug_layers"

    .line 117
    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "gpu_debug_app"

    .line 123
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "gpu_debug_layers"

    .line 129
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v0, "gpu_debug_layers_gles"

    .line 135
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v0, "gpu_debug_layer_app"

    .line 141
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "gpu_control_layer_apps"

    .line 147
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v0, "updatable_driver_all_apps"

    .line 153
    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "updatable_driver_production_opt_in_apps"

    .line 159
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "updatable_driver_prerelease_opt_in_apps"

    .line 165
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v0, "updatable_driver_production_opt_out_apps"

    .line 171
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v0, "updatable_driver_production_denylist"

    .line 177
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v0, "updatable_driver_production_allowlist"

    .line 183
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v0, "updatable_driver_production_denylists"

    .line 189
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v0, "updatable_driver_sphal_libraries"

    .line 195
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v0, "navigationbar_current_color"

    .line 201
    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 206
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 208
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 210
    const-string/jumbo v5, "widget"

    .line 213
    const-string v6, "CursorControlFeature__enable_cursor_drag_from_anywhere"

    .line 215
    const-string/jumbo v7, "widget__enable_cursor_drag_from_anywhere"

    .line 218
    move-object v4, v0

    .line 219
    move-object v8, v1

    .line 220
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 223
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 228
    const/16 v2, 0x2d

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object v9

    .line 234
    const-string/jumbo v5, "widget"

    .line 237
    const-string v6, "CursorControlFeature__min_angle_from_vertical_to_start_cursor_drag"

    .line 239
    const-string/jumbo v7, "widget__min_angle_from_vertical_to_start_cursor_drag"

    .line 242
    move-object v4, v0

    .line 243
    move-object v8, v10

    .line 244
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 247
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 252
    const/4 v2, -0x1

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v9

    .line 257
    const-string/jumbo v5, "widget"

    .line 260
    const-string v6, "CursorControlFeature__finger_to_cursor_distance"

    .line 262
    const-string/jumbo v7, "widget__finger_to_cursor_distance"

    .line 265
    move-object v4, v0

    .line 266
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 269
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 274
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 276
    const-string/jumbo v5, "widget"

    .line 279
    const-string v6, "CursorControlFeature__enable_insertion_handle_gestures"

    .line 281
    const-string/jumbo v7, "widget__enable_insertion_handle_gestures"

    .line 284
    move-object v4, v0

    .line 285
    move-object v8, v1

    .line 286
    move-object v9, v2

    .line 287
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 290
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 295
    const/16 v4, 0x19

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object v9

    .line 301
    const-string/jumbo v5, "widget"

    .line 304
    const-string v6, "CursorControlFeature__insertion_handle_delta_height"

    .line 306
    const-string/jumbo v7, "widget__insertion_handle_delta_height"

    .line 309
    move-object v4, v0

    .line 310
    move-object v8, v10

    .line 311
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 314
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 319
    const/16 v4, 0x32

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    move-result-object v9

    .line 325
    const-string/jumbo v5, "widget"

    .line 328
    const-string v6, "CursorControlFeature__insertion_handle_opacity"

    .line 330
    const-string/jumbo v7, "widget__insertion_handle_opacity"

    .line 333
    move-object v4, v0

    .line 334
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 337
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 342
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 344
    const/high16 v4, 0x3f000000    # 0.5f

    .line 346
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 349
    move-result-object v16

    .line 350
    const-string/jumbo v12, "widget"

    .line 353
    const-string v13, "CursorControlFeature__line_slop_ratio"

    .line 355
    const-string/jumbo v14, "widget__line_slop_ratio"

    .line 358
    move-object v11, v0

    .line 359
    move-object v15, v10

    .line 360
    invoke-direct/range {v11 .. v16}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 363
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 368
    const-string/jumbo v7, "widget__enable_new_magnifier"

    .line 371
    const-string/jumbo v5, "widget"

    .line 374
    const-string v6, "CursorControlFeature__enable_new_magnifier"

    .line 376
    move-object v4, v0

    .line 377
    move-object v8, v1

    .line 378
    move-object v9, v2

    .line 379
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 382
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 387
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 389
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 392
    move-result-object v9

    .line 393
    const-string/jumbo v5, "widget"

    .line 396
    const-string v6, "CursorControlFeature__magnifier_zoom_factor"

    .line 398
    const-string/jumbo v7, "widget__magnifier_zoom_factor"

    .line 401
    move-object v4, v0

    .line 402
    move-object v8, v10

    .line 403
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 406
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 411
    const/high16 v4, 0x40b00000    # 5.5f

    .line 413
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 416
    move-result-object v9

    .line 417
    const-string/jumbo v5, "widget"

    .line 420
    const-string v6, "CursorControlFeature__magnifier_aspect_ratio"

    .line 422
    const-string/jumbo v7, "widget__magnifier_aspect_ratio"

    .line 425
    move-object v4, v0

    .line 426
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 429
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 434
    const-string/jumbo v7, "text__enable_new_context_menu"

    .line 437
    const-string/jumbo v5, "text"

    .line 440
    const-string v6, "TextEditing__enable_new_context_menu"

    .line 442
    move-object v4, v0

    .line 443
    move-object v8, v1

    .line 444
    move-object v9, v2

    .line 445
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 448
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    const/4 v0, 0x0

    .line 452
    move v1, v0

    .line 453
    :goto_0
    sget-object v2, Landroid/text/TextFlags;->TEXT_ACONFIGS_FLAGS:[Ljava/lang/String;

    .line 455
    array-length v3, v2

    .line 456
    if-ge v1, v3, :cond_0

    .line 458
    aget-object v6, v2, v1

    .line 460
    sget-object v2, Landroid/text/TextFlags;->TEXT_ACONFIG_DEFAULT_VALUE:[Z

    .line 462
    aget-boolean v2, v2, v1

    .line 464
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 466
    new-instance v10, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 468
    invoke-static {v6}, Landroid/text/TextFlags;->getKeyForFlag(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    move-result-object v7

    .line 472
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 474
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 477
    move-result-object v9

    .line 478
    const-string/jumbo v5, "text"

    .line 481
    move-object v4, v10

    .line 482
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 485
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v1, v1, 0x1

    .line 490
    goto :goto_0

    .line 491
    :cond_0
    sput-boolean v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    .line 493
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 13
    sget-boolean v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    .line 15
    if-nez v0, :cond_1

    .line 17
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    .line 22
    if-nez v1, :cond_0

    .line 24
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 26
    new-instance v8, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 28
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v1

    .line 34
    const v2, 0x10e006b

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v7

    .line 45
    const-string/jumbo v3, "widget"

    .line 48
    const-string v4, "AnalogClockFeature__analog_clock_seconds_hand_fps"

    .line 50
    const-string/jumbo v5, "widget__analog_clock_seconds_hand_fps"

    .line 53
    move-object v2, v8

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 57
    move-object v1, v0

    .line 58
    check-cast v1, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v1, 0x1

    .line 64
    sput-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    monitor-exit v0

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_1
    :goto_2
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 75
    sget-object p1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p1

    .line 85
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x0

    .line 90
    if-eqz v0, :cond_2

    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 104
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    sget-object p1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 116
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 119
    move-result-object p1

    .line 120
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object p1

    .line 124
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    move-result-object v0

    .line 140
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 142
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    goto :goto_4

    .line 152
    :cond_3
    sget-object p1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object p1

    .line 162
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 177
    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 180
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    goto :goto_5

    .line 190
    :cond_4
    new-instance p1, Ljava/util/HashSet;

    .line 192
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 195
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 197
    check-cast v0, Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    move-result-object v0

    .line 203
    :cond_5
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_6

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 215
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_5

    .line 223
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 230
    move-result-object v2

    .line 231
    new-instance v3, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;

    .line 233
    invoke-direct {v3, p0}, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CoreSettingsObserver;)V

    .line 236
    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 238
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 241
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    goto :goto_6

    .line 245
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 248
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    throw p0
.end method

.method public populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_7

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 35
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 37
    if-ne p2, v3, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    .line 42
    move-result v3

    .line 43
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 50
    if-ne p2, v3, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    .line 55
    move-result v3

    .line 56
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    :goto_1
    if-nez v3, :cond_3

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/Class;

    .line 77
    const-class v4, Ljava/lang/String;

    .line 79
    if-ne v1, v4, :cond_4

    .line 81
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 87
    if-ne v1, v4, :cond_5

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    move-result v1

    .line 93
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 99
    if-ne v1, v4, :cond_6

    .line 101
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 111
    if-ne v1, v4, :cond_0

    .line 113
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 116
    move-result-wide v3

    .line 117
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    goto :goto_0

    .line 121
    :cond_7
    return-void
.end method

.method public final sendCoreSettings()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 3
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 10
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 17
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 22
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 24
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_5

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 42
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    .line 44
    const-class v3, Ljava/lang/String;

    .line 46
    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 48
    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 50
    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 52
    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    .line 54
    if-ne v2, v3, :cond_1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 60
    invoke-static {v5, v4, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 70
    if-ne v2, v3, :cond_2

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v1

    .line 78
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 80
    invoke-static {v5, v4, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 83
    move-result v1

    .line 84
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 90
    if-ne v2, v3, :cond_3

    .line 92
    check-cast v1, Ljava/lang/Float;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 97
    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 100
    invoke-static {v5, v4, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 103
    move-result v1

    .line 104
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 110
    if-ne v2, v3, :cond_4

    .line 112
    check-cast v1, Ljava/lang/Long;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 117
    move-result-wide v1

    .line 118
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 120
    invoke-static {v5, v4, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {v3, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 130
    if-ne v2, v3, :cond_0

    .line 132
    check-cast v1, Ljava/lang/Boolean;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 140
    invoke-static {v5, v4, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 143
    move-result v1

    .line 144
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    goto :goto_0

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 150
    iget-object p0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 152
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 154
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 157
    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 160
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 165
    move-result v2

    .line 166
    add-int/lit8 v2, v2, -0x1

    .line 168
    :goto_1
    if-ltz v2, :cond_7

    .line 170
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 178
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v3, :cond_6

    .line 182
    :try_start_1
    invoke-interface {v3, p0}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :catch_0
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 192
    return-void

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 198
    throw p0
.end method
