.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string/jumbo v5, "fingerprint_screen_lock"

    .line 8
    const-string/jumbo v6, "fingerprint_always_on"

    .line 11
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 13
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$1:I

    .line 15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    sget-boolean v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    .line 20
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 22
    if-eqz v8, :cond_0

    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v9, "onBootPhase: "

    .line 32
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 42
    const-string v9, "FingerprintService.Ext"

    .line 44
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    sget-object v8, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 49
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 51
    const/4 v10, -0x1

    .line 52
    const/4 v11, -0x2

    .line 53
    const/16 v12, 0x226

    .line 55
    const-string v13, ","

    .line 57
    const-string v14, "FingerprintService"

    .line 59
    iget-object v15, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 61
    if-ne v0, v12, :cond_c

    .line 63
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 65
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 68
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 71
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 73
    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;

    .line 77
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 80
    iget-object v12, v15, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 82
    check-cast v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    invoke-virtual {v12, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v12, v15, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 93
    check-cast v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    invoke-virtual {v12, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    :goto_0
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 100
    if-eqz v0, :cond_25

    .line 102
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 108
    move-result-object v9

    .line 109
    iget-object v12, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 116
    const/16 v1, 0x8

    .line 118
    if-eqz v0, :cond_7

    .line 120
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;

    .line 122
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 125
    move-result-object v8

    .line 126
    invoke-direct {v0, v9, v8, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 129
    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_3

    .line 135
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 138
    move-result-object v8

    .line 139
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v8, v4, v2, v0, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    :goto_1
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    move-result-object v4

    .line 153
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v4, v8, v2, v0, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_3

    .line 161
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    const-string v8, "TspCommand: "

    .line 165
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {v0, v4, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    :goto_3
    invoke-static {v12, v2, v11, v5, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 174
    move-result v0

    .line 175
    if-eq v0, v3, :cond_4

    .line 177
    :goto_4
    move v0, v2

    .line 178
    goto :goto_5

    .line 179
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_5

    .line 185
    invoke-static {v12, v2, v11, v6, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 188
    move-result v0

    .line 189
    if-eq v0, v3, :cond_5

    .line 191
    goto :goto_4

    .line 192
    :cond_5
    move v0, v3

    .line 193
    :goto_5
    iget-boolean v4, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 195
    if-ne v4, v0, :cond_6

    .line 197
    goto :goto_6

    .line 198
    :cond_6
    iput-boolean v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 200
    invoke-virtual {v9, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    .line 203
    :cond_7
    :goto_6
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 205
    if-eqz v0, :cond_8

    .line 207
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 209
    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 212
    const-string v4, ""

    .line 214
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    const-string/jumbo v4, "factory"

    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_8

    .line 227
    invoke-virtual {v9, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 230
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;

    .line 232
    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;)V

    .line 235
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 238
    :cond_8
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 240
    sget-object v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 242
    iget-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 244
    const-string v0, ", "

    .line 246
    const-string/jumbo v6, "readSensorConfig: "

    .line 249
    iget-object v7, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSysFsProviderImpl:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 251
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    new-instance v7, Ljava/io/File;

    .line 256
    const-string v8, "/sys/class/fingerprint/fingerprint/position"

    .line 258
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    .line 264
    move-result-object v7

    .line 265
    if-eqz v7, :cond_a

    .line 267
    :try_start_1
    new-instance v8, Ljava/lang/String;

    .line 269
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 271
    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 274
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 281
    move-result-object v7

    .line 282
    array-length v8, v7

    .line 283
    const/4 v9, 0x5

    .line 284
    const/4 v10, 0x7

    .line 285
    if-lt v8, v1, :cond_9

    .line 287
    aget-object v8, v7, v2

    .line 289
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 291
    aget-object v8, v7, v3

    .line 293
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 295
    const/4 v8, 0x2

    .line 296
    aget-object v12, v7, v8

    .line 298
    iput-object v12, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 300
    const/4 v8, 0x3

    .line 301
    aget-object v12, v7, v8

    .line 303
    iput-object v12, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 305
    aget-object v8, v7, v10

    .line 307
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 309
    aget-object v8, v7, v9

    .line 311
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 313
    aget-object v8, v7, v1

    .line 315
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 317
    goto :goto_7

    .line 318
    :catch_1
    move-exception v0

    .line 319
    goto :goto_8

    .line 320
    :cond_9
    :goto_7
    sget-boolean v8, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 322
    if-eqz v8, :cond_a

    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    .line 326
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    const/4 v12, 0x2

    .line 330
    aget-object v13, v7, v12

    .line 332
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v12, " x "

    .line 337
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/4 v12, 0x3

    .line 341
    aget-object v12, v7, v12

    .line 343
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    aget-object v12, v7, v2

    .line 351
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    aget-object v12, v7, v3

    .line 359
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    aget-object v10, v7, v10

    .line 367
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    aget-object v9, v7, v9

    .line 375
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    aget-object v0, v7, v1

    .line 383
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object v0

    .line 390
    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    goto :goto_9

    .line 394
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-static {v0, v1, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 402
    :cond_a
    :goto_9
    new-instance v0, Landroid/graphics/Point;

    .line 404
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 407
    :try_start_2
    new-instance v1, Landroid/view/DisplayInfo;

    .line 409
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 412
    const-class v6, Landroid/hardware/display/DisplayManagerInternal;

    .line 414
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 417
    move-result-object v6

    .line 418
    check-cast v6, Landroid/hardware/display/DisplayManagerInternal;

    .line 420
    invoke-virtual {v6, v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 423
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 426
    move-result-object v6

    .line 427
    invoke-interface {v6, v2, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 430
    sget-boolean v6, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 432
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 435
    move-result-object v6

    .line 436
    const-string/jumbo v7, "display_cutout_hide_notch"

    .line 439
    invoke-static {v6, v7, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 442
    move-result v6

    .line 443
    if-eqz v6, :cond_b

    .line 445
    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 447
    const-string/jumbo v7, "persist.sys.displayinset.top"

    .line 450
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 453
    move-result v7

    .line 454
    add-int/2addr v6, v7

    .line 455
    iput v6, v0, Landroid/graphics/Point;->y:I

    .line 457
    goto :goto_a

    .line 458
    :catch_2
    move-exception v0

    .line 459
    goto :goto_b

    .line 460
    :cond_b
    :goto_a
    iget-object v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 462
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 465
    move-result-wide v6

    .line 466
    iget v8, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 468
    float-to-double v8, v8

    .line 469
    mul-double/2addr v6, v8

    .line 470
    const-wide v8, 0x3fa42850a0000000L    # 0.03937007859349251

    .line 475
    mul-double/2addr v6, v8

    .line 476
    iget-object v10, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 478
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 481
    move-result-wide v12

    .line 482
    iget v10, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 484
    float-to-double v2, v10

    .line 485
    mul-double/2addr v12, v2

    .line 486
    mul-double/2addr v12, v8

    .line 487
    iget-object v2, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 489
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 492
    move-result-wide v2

    .line 493
    iget v10, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 495
    move-wide v15, v12

    .line 496
    float-to-double v11, v10

    .line 497
    mul-double/2addr v2, v11

    .line 498
    mul-double/2addr v2, v8

    .line 499
    iget-object v10, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 501
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 504
    move-result-wide v10

    .line 505
    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 507
    float-to-double v12, v1

    .line 508
    mul-double/2addr v10, v12

    .line 509
    mul-double/2addr v10, v8

    .line 510
    double-to-int v1, v6

    .line 511
    const/4 v6, 0x2

    .line 512
    div-int/lit8 v7, v1, 0x2

    .line 514
    double-to-int v2, v2

    .line 515
    sub-int/2addr v7, v2

    .line 516
    move-wide v12, v15

    .line 517
    double-to-int v2, v12

    .line 518
    double-to-int v3, v10

    .line 519
    div-int/2addr v3, v6

    .line 520
    add-int/2addr v2, v3

    .line 521
    div-int/lit8 v3, v1, 0x2

    .line 523
    add-int/2addr v2, v3

    .line 524
    iget-object v3, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 526
    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 528
    div-int/2addr v8, v6

    .line 529
    sub-int/2addr v8, v7

    .line 530
    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 532
    add-int/2addr v8, v1

    .line 533
    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 535
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 537
    sub-int/2addr v0, v2

    .line 538
    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 540
    add-int/2addr v0, v1

    .line 541
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 543
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mGetTspManager:Ljava/util/function/Supplier;

    .line 545
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 551
    iget-object v1, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 553
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodRect(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    goto :goto_c

    .line 557
    :goto_b
    const-string v1, " setFodRect: "

    .line 559
    invoke-static {v14, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    :goto_c
    const-string/jumbo v0, "key_fingerprint_lockstar_custom_effect"

    .line 565
    const/4 v1, -0x2

    .line 566
    const/4 v2, 0x1

    .line 567
    const/4 v3, 0x0

    .line 568
    invoke-static {v5, v3, v1, v0, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 571
    move-result v1

    .line 572
    if-nez v1, :cond_25

    .line 574
    invoke-static {v5, v0, v2, v2}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 577
    goto/16 :goto_1a

    .line 579
    :cond_c
    const/16 v1, 0x258

    .line 581
    const/4 v2, 0x0

    .line 582
    iget-object v3, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 584
    if-ne v0, v1, :cond_21

    .line 586
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 588
    if-eqz v0, :cond_d

    .line 590
    goto :goto_d

    .line 591
    :cond_d
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;

    .line 593
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 596
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 598
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 600
    new-instance v4, Landroid/content/IntentFilter;

    .line 602
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 604
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 607
    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 609
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getBiometricHandler()Landroid/os/Handler;

    .line 612
    move-result-object v22

    .line 613
    const/16 v21, 0x0

    .line 615
    const/16 v23, 0x0

    .line 617
    move-object/from16 v17, v1

    .line 619
    move-object/from16 v18, v0

    .line 621
    move-object/from16 v19, v4

    .line 623
    invoke-static/range {v17 .. v23}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 626
    :goto_d
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 629
    move-result-object v1

    .line 630
    if-eqz v1, :cond_25

    .line 632
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 634
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 636
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 638
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 640
    if-eqz v0, :cond_f

    .line 642
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    .line 644
    if-eqz v0, :cond_f

    .line 646
    iget-object v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 648
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 653
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 656
    move-result-object v6

    .line 657
    invoke-direct {v5, v4, v1, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;-><init>(Landroid/content/Context;Landroid/util/Pair;Landroid/os/Handler;)V

    .line 660
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 662
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 664
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 666
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 668
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 673
    const/4 v15, 0x0

    .line 674
    invoke-direct {v12, v11, v5, v15}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 677
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 679
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 684
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 686
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 688
    invoke-virtual {v11, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 691
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 693
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 695
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 697
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 699
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 704
    const/4 v15, 0x1

    .line 705
    invoke-direct {v12, v11, v5, v15}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 708
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 710
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    if-eqz v0, :cond_f

    .line 715
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 717
    if-eqz v0, :cond_e

    .line 719
    goto :goto_e

    .line 720
    :cond_e
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;

    .line 722
    invoke-direct {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    .line 725
    iput-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 727
    new-instance v0, Landroid/content/IntentFilter;

    .line 729
    const-string/jumbo v11, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 732
    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 735
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 737
    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 739
    const/16 v21, 0x0

    .line 741
    const/16 v23, 0x0

    .line 743
    move-object/from16 v17, v4

    .line 745
    move-object/from16 v18, v5

    .line 747
    move-object/from16 v19, v0

    .line 749
    move-object/from16 v22, v6

    .line 751
    invoke-static/range {v17 .. v23}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 754
    :cond_f
    :goto_e
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 756
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 758
    iget-boolean v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 760
    if-eqz v4, :cond_10

    .line 762
    iget-object v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    .line 769
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 771
    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;-><init>()V

    .line 774
    invoke-direct {v5, v4, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V

    .line 777
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 779
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 781
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 783
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 788
    const/4 v6, 0x0

    .line 789
    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 792
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 794
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 797
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;

    .line 799
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 802
    move-result-object v4

    .line 803
    invoke-direct {v0, v5, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V

    .line 806
    iput-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 808
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    .line 810
    const-string v4, "any_screen_running"

    .line 812
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 815
    move-result-object v4

    .line 816
    iget-object v6, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 818
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 820
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 826
    move-result-object v0

    .line 827
    const/4 v5, -0x2

    .line 828
    const/4 v8, 0x0

    .line 829
    invoke-virtual {v0, v4, v8, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 832
    :cond_10
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 834
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 836
    iget-boolean v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 838
    if-eqz v4, :cond_11

    .line 840
    iget-object v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 842
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 847
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 849
    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;-><init>()V

    .line 852
    invoke-direct {v5, v4, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V

    .line 855
    iput-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 857
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 859
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 861
    invoke-virtual {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 864
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 869
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 871
    const/4 v6, 0x1

    .line 872
    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 875
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 877
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 882
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 884
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 886
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 892
    move-result-object v4

    .line 893
    const-string/jumbo v5, "fingerprint_protective_film_guideline_displayed"

    .line 896
    const/4 v6, 0x0

    .line 897
    invoke-static {v4, v5, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 900
    move-result v4

    .line 901
    if-ltz v4, :cond_11

    .line 903
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 905
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    :cond_11
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 910
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 912
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    .line 914
    iget-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 916
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    .line 918
    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;-><init>()V

    .line 921
    invoke-direct {v4, v5, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;)V

    .line 924
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 926
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 928
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 931
    move-result-object v5

    .line 932
    check-cast v5, Ljava/util/ArrayList;

    .line 934
    const/4 v6, 0x0

    .line 935
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 938
    move-result-object v5

    .line 939
    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 941
    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 943
    const/16 v20, 0x0

    .line 945
    const/16 v21, 0x0

    .line 947
    const/16 v19, 0x25

    .line 949
    const/16 v22, 0x0

    .line 951
    move-object/from16 v17, v0

    .line 953
    move/from16 v18, v5

    .line 955
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 958
    move-result v5

    .line 959
    const-string v6, "TZ BUILD TYPE = "

    .line 961
    const-string v8, "SemFpScreenStatusNotifier"

    .line 963
    invoke-static {v5, v6, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 966
    const/4 v6, 0x1

    .line 967
    if-eq v5, v6, :cond_12

    .line 969
    goto :goto_f

    .line 970
    :cond_12
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 973
    :goto_f
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 976
    move-result-object v0

    .line 977
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 980
    move-result-object v3

    .line 981
    :cond_13
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 984
    move-result v0

    .line 985
    if-eqz v0, :cond_20

    .line 987
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 990
    move-result-object v0

    .line 991
    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 993
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 995
    const/4 v4, 0x3

    .line 996
    if-ne v0, v4, :cond_1f

    .line 998
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1001
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 1003
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 1005
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 1007
    if-eqz v4, :cond_1e

    .line 1009
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1011
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1013
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1015
    check-cast v5, Ljava/lang/Integer;

    .line 1017
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1020
    move-result v18

    .line 1021
    move-object v5, v0

    .line 1022
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1024
    const/16 v0, 0x100

    .line 1026
    new-array v0, v0, [B

    .line 1028
    const/16 v21, 0x0

    .line 1030
    const/16 v19, 0x20

    .line 1032
    const/16 v20, 0x0

    .line 1034
    move-object/from16 v17, v5

    .line 1036
    move-object/from16 v22, v0

    .line 1038
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 1041
    move-result v6

    .line 1042
    if-lez v6, :cond_14

    .line 1044
    :try_start_3
    new-instance v8, Ljava/lang/String;

    .line 1046
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1048
    const/4 v12, 0x0

    .line 1049
    invoke-direct {v8, v0, v12, v6, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1052
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1055
    move-result-object v0

    .line 1056
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1059
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1060
    goto :goto_11

    .line 1061
    :catch_3
    move-exception v0

    .line 1062
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 1065
    move-result-object v5

    .line 1066
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1068
    const-string/jumbo v8, "semGetOpticalBrightnessConfigs: "

    .line 1071
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-static {v0, v6, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1077
    :cond_14
    const/4 v5, 0x0

    .line 1078
    new-array v0, v5, [Ljava/lang/String;

    .line 1080
    :goto_11
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1082
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1084
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1086
    check-cast v6, Ljava/lang/Integer;

    .line 1088
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1091
    move-result v6

    .line 1092
    const/16 v8, 0x2d

    .line 1094
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1096
    invoke-virtual {v5, v6, v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(II)I

    .line 1099
    move-result v5

    .line 1100
    iget-object v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 1102
    iput v5, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationStatus:I

    .line 1104
    const/16 v8, 0x20d

    .line 1106
    iput v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1108
    if-eqz v0, :cond_18

    .line 1110
    :try_start_4
    array-length v6, v0

    .line 1111
    if-lez v6, :cond_15

    .line 1113
    const/4 v11, 0x0

    .line 1114
    aget-object v6, v0, v11

    .line 1116
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1119
    move-result v6

    .line 1120
    iput v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1122
    goto :goto_12

    .line 1123
    :catch_4
    move-exception v0

    .line 1124
    goto :goto_14

    .line 1125
    :cond_15
    const/4 v11, 0x0

    .line 1126
    :goto_12
    array-length v6, v0

    .line 1127
    const/4 v8, 0x3

    .line 1128
    if-le v6, v8, :cond_16

    .line 1130
    aget-object v6, v0, v8

    .line 1132
    iput-object v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    .line 1134
    :cond_16
    array-length v6, v0

    .line 1135
    const/4 v8, 0x4

    .line 1136
    if-le v6, v8, :cond_17

    .line 1138
    aget-object v6, v0, v8

    .line 1140
    iput-object v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    .line 1142
    :cond_17
    array-length v6, v0

    .line 1143
    move v8, v11

    .line 1144
    :goto_13
    if-ge v8, v6, :cond_1a

    .line 1146
    aget-object v12, v0, v8

    .line 1148
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1150
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    const-string/jumbo v11, "setBrightnessConfigs: node = "

    .line 1156
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    move-result-object v11

    .line 1166
    invoke-static {v14, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v11, 0x1

    .line 1170
    add-int/2addr v8, v11

    .line 1171
    const/4 v11, 0x0

    .line 1172
    goto :goto_13

    .line 1173
    :cond_18
    const-string/jumbo v0, "setBrightnessConfigs: failed to read from HAL"

    .line 1176
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1182
    move-result-object v0

    .line 1183
    const v6, 0x1070080

    .line 1186
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1189
    move-result-object v0

    .line 1190
    array-length v6, v0

    .line 1191
    const/4 v11, 0x1

    .line 1192
    sub-int/2addr v6, v11

    .line 1193
    aget-object v0, v0, v6

    .line 1195
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1198
    move-result v0

    .line 1199
    if-ge v0, v8, :cond_19

    .line 1201
    iput v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1203
    :cond_19
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    .line 1206
    move-result v0

    .line 1207
    iput v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1209
    goto :goto_15

    .line 1210
    :goto_14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1212
    const-string/jumbo v8, "getBrightnessNitsValue: failure to read nits info: "

    .line 1215
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    invoke-static {v0, v6, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1221
    :cond_1a
    :goto_15
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 1223
    if-eqz v0, :cond_1b

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1227
    const-string/jumbo v6, "setBrightnessConfigs: nits = ["

    .line 1230
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1233
    iget v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1235
    const-string v8, "]"

    .line 1237
    invoke-static {v0, v6, v8, v14}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_1b
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 1242
    const/4 v6, 0x3

    .line 1243
    invoke-direct {v0, v4, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 1246
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 1249
    move-result-object v8

    .line 1250
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1253
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 1255
    const/4 v8, 0x2

    .line 1256
    invoke-direct {v0, v4, v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 1259
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 1262
    move-result-object v8

    .line 1263
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1266
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mGetDisplayStateMonitor:Ljava/util/function/Supplier;

    .line 1268
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 1271
    move-result-object v0

    .line 1272
    check-cast v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 1274
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;

    .line 1276
    invoke-direct {v8, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V

    .line 1279
    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 1282
    if-ltz v5, :cond_13

    .line 1284
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 1287
    move-result-object v0

    .line 1288
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1291
    move-result-object v4

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1295
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1298
    move-result v5

    .line 1299
    if-nez v5, :cond_13

    .line 1301
    new-instance v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 1303
    const-string v8, "FPDA"

    .line 1305
    const/4 v11, 0x2

    .line 1306
    invoke-direct {v5, v10, v11, v8, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v8, "FPCA"

    .line 1311
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1314
    move-result v11

    .line 1315
    if-eqz v11, :cond_1c

    .line 1317
    goto :goto_16

    .line 1318
    :cond_1c
    iget-object v11, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 1320
    if-nez v11, :cond_1d

    .line 1322
    new-instance v11, Landroid/util/ArrayMap;

    .line 1324
    const/4 v12, 0x1

    .line 1325
    invoke-direct {v11, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1328
    iput-object v11, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 1330
    :cond_1d
    iget-object v11, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 1332
    check-cast v11, Landroid/util/ArrayMap;

    .line 1334
    invoke-virtual {v11, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    :goto_16
    invoke-virtual {v0, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 1340
    goto/16 :goto_10

    .line 1342
    :cond_1e
    const/4 v6, 0x3

    .line 1343
    goto/16 :goto_10

    .line 1345
    :cond_1f
    move v6, v4

    .line 1346
    goto/16 :goto_10

    .line 1348
    :cond_20
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;

    .line 1350
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;-><init>(Landroid/util/Pair;)V

    .line 1353
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1355
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1357
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1359
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 1361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1364
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 1366
    const/4 v3, 0x2

    .line 1367
    invoke-direct {v2, v1, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 1370
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 1372
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1375
    goto :goto_1a

    .line 1376
    :cond_21
    const/16 v1, 0x3e8

    .line 1378
    if-ne v0, v1, :cond_25

    .line 1380
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 1383
    move-result-object v0

    .line 1384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1387
    move-result-object v0

    .line 1388
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1391
    move-result v1

    .line 1392
    if-eqz v1, :cond_24

    .line 1394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1397
    move-result-object v1

    .line 1398
    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1400
    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1402
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 1405
    move-result-object v1

    .line 1406
    const/4 v3, 0x1

    .line 1407
    iput-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    .line 1409
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1411
    if-nez v4, :cond_22

    .line 1413
    goto :goto_17

    .line 1414
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1417
    move-result-object v4

    .line 1418
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1421
    move-result v5

    .line 1422
    if-eqz v5, :cond_23

    .line 1424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1427
    move-result-object v5

    .line 1428
    check-cast v5, Ljava/lang/Runnable;

    .line 1430
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1433
    goto :goto_18

    .line 1434
    :cond_23
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1436
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1439
    iput-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1441
    goto :goto_17

    .line 1442
    :cond_24
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 1444
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 1447
    move-result-object v1

    .line 1448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    const-string v0, "BiometricContextProvider"

    .line 1453
    const-string/jumbo v2, "ensureBiometricContextListener"

    .line 1456
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :try_start_5
    const-string/jumbo v0, "statusbar"

    .line 1462
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1465
    move-result-object v0

    .line 1466
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 1469
    move-result-object v0

    .line 1470
    iget-object v2, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    .line 1472
    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_5
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1475
    goto :goto_19

    .line 1476
    :catch_5
    move-exception v0

    .line 1477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1480
    :goto_19
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;

    .line 1482
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/log/BiometricContextProvider$4;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 1485
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 1488
    :cond_25
    :goto_1a
    return-void
.end method
