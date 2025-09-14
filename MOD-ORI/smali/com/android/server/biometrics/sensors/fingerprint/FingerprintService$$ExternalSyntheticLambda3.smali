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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string/jumbo v5, "fingerprint_screen_lock"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v6, "fingerprint_always_on"

    .line 9
    .line 10
    .line 11
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$1:I

    .line 14
    .line 15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-boolean v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    .line 19
    .line 20
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 21
    .line 22
    if-eqz v8, :cond_0

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v9, "onBootPhase: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v9, "FingerprintService.Ext"

    .line 43
    .line 44
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object v8, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 48
    .line 49
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 50
    .line 51
    const/4 v10, -0x1

    .line 52
    const/4 v11, -0x2

    .line 53
    const/16 v12, 0x226

    .line 54
    .line 55
    const-string v13, ","

    .line 56
    .line 57
    const-string v14, "FingerprintService"

    .line 58
    .line 59
    iget-object v15, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 60
    .line 61
    if-ne v0, v12, :cond_c

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 64
    .line 65
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 78
    .line 79
    .line 80
    iget-object v12, v15, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 81
    .line 82
    check-cast v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    invoke-virtual {v12, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v12, v15, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 92
    .line 93
    check-cast v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    invoke-virtual {v12, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 99
    .line 100
    if-eqz v0, :cond_25

    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    iget-object v12, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 115
    .line 116
    const/16 v1, 0x8

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;

    .line 121
    .line 122
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-direct {v0, v9, v8, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_3

    .line 134
    .line 135
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v8, v4, v2, v0, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    .line 145
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

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v4, v8, v2, v0, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v8, "TspCommand: "

    .line 164
    .line 165
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v4, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    invoke-static {v12, v2, v11, v5, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eq v0, v3, :cond_4

    .line 176
    .line 177
    :goto_4
    move v0, v2

    .line 178
    goto :goto_5

    .line 179
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    invoke-static {v12, v2, v11, v6, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eq v0, v3, :cond_5

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_5
    move v0, v3

    .line 193
    :goto_5
    iget-boolean v4, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 194
    .line 195
    if-ne v4, v0, :cond_6

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_6
    iput-boolean v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 199
    .line 200
    invoke-virtual {v9, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_6
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 204
    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 208
    .line 209
    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 210
    .line 211
    .line 212
    const-string v4, ""

    .line 213
    .line 214
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string/jumbo v4, "factory"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    invoke-virtual {v9, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;

    .line 231
    .line 232
    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 236
    .line 237
    .line 238
    :cond_8
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 239
    .line 240
    sget-object v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 241
    .line 242
    iget-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    const-string v0, ", "

    .line 245
    .line 246
    const-string/jumbo v6, "readSensorConfig: "

    .line 247
    .line 248
    .line 249
    iget-object v7, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSysFsProviderImpl:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    new-instance v7, Ljava/io/File;

    .line 255
    .line 256
    const-string v8, "/sys/class/fingerprint/fingerprint/position"

    .line 257
    .line 258
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    if-eqz v7, :cond_a

    .line 266
    .line 267
    :try_start_1
    new-instance v8, Ljava/lang/String;

    .line 268
    .line 269
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 270
    .line 271
    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 279
    .line 280
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

    .line 286
    .line 287
    aget-object v8, v7, v2

    .line 288
    .line 289
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 290
    .line 291
    aget-object v8, v7, v3

    .line 292
    .line 293
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 294
    .line 295
    const/4 v8, 0x2

    .line 296
    aget-object v12, v7, v8

    .line 297
    .line 298
    iput-object v12, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 299
    .line 300
    const/4 v8, 0x3

    .line 301
    aget-object v12, v7, v8

    .line 302
    .line 303
    iput-object v12, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 304
    .line 305
    aget-object v8, v7, v10

    .line 306
    .line 307
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 308
    .line 309
    aget-object v8, v7, v9

    .line 310
    .line 311
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 312
    .line 313
    aget-object v8, v7, v1

    .line 314
    .line 315
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 316
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

    .line 321
    .line 322
    if-eqz v8, :cond_a

    .line 323
    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const/4 v12, 0x2

    .line 330
    aget-object v13, v7, v12

    .line 331
    .line 332
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v12, " x "

    .line 336
    .line 337
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const/4 v12, 0x3

    .line 341
    aget-object v12, v7, v12

    .line 342
    .line 343
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    aget-object v12, v7, v2

    .line 350
    .line 351
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    aget-object v12, v7, v3

    .line 358
    .line 359
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    aget-object v10, v7, v10

    .line 366
    .line 367
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    aget-object v9, v7, v9

    .line 374
    .line 375
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    aget-object v0, v7, v1

    .line 382
    .line 383
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    .line 392
    .line 393
    goto :goto_9

    .line 394
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v0, v1, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_a
    :goto_9
    new-instance v0, Landroid/graphics/Point;

    .line 403
    .line 404
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 405
    .line 406
    .line 407
    :try_start_2
    new-instance v1, Landroid/view/DisplayInfo;

    .line 408
    .line 409
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 410
    .line 411
    .line 412
    const-class v6, Landroid/hardware/display/DisplayManagerInternal;

    .line 413
    .line 414
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    check-cast v6, Landroid/hardware/display/DisplayManagerInternal;

    .line 419
    .line 420
    invoke-virtual {v6, v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 421
    .line 422
    .line 423
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-interface {v6, v2, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 428
    .line 429
    .line 430
    sget-boolean v6, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 431
    .line 432
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    const-string/jumbo v7, "display_cutout_hide_notch"

    .line 437
    .line 438
    .line 439
    invoke-static {v6, v7, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    if-eqz v6, :cond_b

    .line 444
    .line 445
    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 446
    .line 447
    const-string/jumbo v7, "persist.sys.displayinset.top"

    .line 448
    .line 449
    .line 450
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    add-int/2addr v6, v7

    .line 455
    iput v6, v0, Landroid/graphics/Point;->y:I

    .line 456
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

    .line 461
    .line 462
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 463
    .line 464
    .line 465
    move-result-wide v6

    .line 466
    iget v8, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 467
    .line 468
    float-to-double v8, v8

    .line 469
    mul-double/2addr v6, v8

    .line 470
    const-wide v8, 0x3fa42850a0000000L    # 0.03937007859349251

    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    mul-double/2addr v6, v8

    .line 476
    iget-object v10, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 477
    .line 478
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 479
    .line 480
    .line 481
    move-result-wide v12

    .line 482
    iget v10, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 483
    .line 484
    float-to-double v2, v10

    .line 485
    mul-double/2addr v12, v2

    .line 486
    mul-double/2addr v12, v8

    .line 487
    iget-object v2, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 490
    .line 491
    .line 492
    move-result-wide v2

    .line 493
    iget v10, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 494
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

    .line 500
    .line 501
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 502
    .line 503
    .line 504
    move-result-wide v10

    .line 505
    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 506
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

    .line 513
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

    .line 522
    .line 523
    add-int/2addr v2, v3

    .line 524
    iget-object v3, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 525
    .line 526
    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 527
    .line 528
    div-int/2addr v8, v6

    .line 529
    sub-int/2addr v8, v7

    .line 530
    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 531
    .line 532
    add-int/2addr v8, v1

    .line 533
    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 534
    .line 535
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 536
    .line 537
    sub-int/2addr v0, v2

    .line 538
    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 539
    .line 540
    add-int/2addr v0, v1

    .line 541
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 542
    .line 543
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mGetTspManager:Ljava/util/function/Supplier;

    .line 544
    .line 545
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 550
    .line 551
    iget-object v1, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodRect(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 554
    .line 555
    .line 556
    goto :goto_c

    .line 557
    :goto_b
    const-string v1, " setFodRect: "

    .line 558
    .line 559
    invoke-static {v14, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .line 561
    .line 562
    :goto_c
    const-string/jumbo v0, "key_fingerprint_lockstar_custom_effect"

    .line 563
    .line 564
    .line 565
    const/4 v1, -0x2

    .line 566
    const/4 v2, 0x1

    .line 567
    const/4 v3, 0x0

    .line 568
    invoke-static {v5, v3, v1, v0, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-nez v1, :cond_25

    .line 573
    .line 574
    invoke-static {v5, v0, v2, v2}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_1a

    .line 578
    .line 579
    :cond_c
    const/16 v1, 0x258

    .line 580
    .line 581
    const/4 v2, 0x0

    .line 582
    iget-object v3, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 583
    .line 584
    if-ne v0, v1, :cond_21

    .line 585
    .line 586
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 587
    .line 588
    if-eqz v0, :cond_d

    .line 589
    .line 590
    goto :goto_d

    .line 591
    :cond_d
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;

    .line 592
    .line 593
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 594
    .line 595
    .line 596
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    .line 598
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 599
    .line 600
    new-instance v4, Landroid/content/IntentFilter;

    .line 601
    .line 602
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 603
    .line 604
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 608
    .line 609
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getBiometricHandler()Landroid/os/Handler;

    .line 610
    .line 611
    .line 612
    move-result-object v22

    .line 613
    const/16 v21, 0x0

    .line 614
    .line 615
    const/16 v23, 0x0

    .line 616
    .line 617
    move-object/from16 v17, v1

    .line 618
    .line 619
    move-object/from16 v18, v0

    .line 620
    .line 621
    move-object/from16 v19, v4

    .line 622
    .line 623
    invoke-static/range {v17 .. v23}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 624
    .line 625
    .line 626
    :goto_d
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    if-eqz v1, :cond_25

    .line 631
    .line 632
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 635
    .line 636
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 637
    .line 638
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 639
    .line 640
    if-eqz v0, :cond_f

    .line 641
    .line 642
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    .line 643
    .line 644
    if-eqz v0, :cond_f

    .line 645
    .line 646
    iget-object v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 647
    .line 648
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 652
    .line 653
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    invoke-direct {v5, v4, v1, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;-><init>(Landroid/content/Context;Landroid/util/Pair;Landroid/os/Handler;)V

    .line 658
    .line 659
    .line 660
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 663
    .line 664
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 665
    .line 666
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 667
    .line 668
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 672
    .line 673
    const/4 v15, 0x0

    .line 674
    invoke-direct {v12, v11, v5, v15}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 675
    .line 676
    .line 677
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 678
    .line 679
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    .line 681
    .line 682
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 685
    .line 686
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 687
    .line 688
    invoke-virtual {v11, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 689
    .line 690
    .line 691
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 694
    .line 695
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 696
    .line 697
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 698
    .line 699
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 703
    .line 704
    const/4 v15, 0x1

    .line 705
    invoke-direct {v12, v11, v5, v15}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 706
    .line 707
    .line 708
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 709
    .line 710
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    .line 712
    .line 713
    if-eqz v0, :cond_f

    .line 714
    .line 715
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 716
    .line 717
    if-eqz v0, :cond_e

    .line 718
    .line 719
    goto :goto_e

    .line 720
    :cond_e
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;

    .line 721
    .line 722
    invoke-direct {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    .line 723
    .line 724
    .line 725
    iput-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 726
    .line 727
    new-instance v0, Landroid/content/IntentFilter;

    .line 728
    .line 729
    const-string/jumbo v11, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 730
    .line 731
    .line 732
    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 736
    .line 737
    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 738
    .line 739
    const/16 v21, 0x0

    .line 740
    .line 741
    const/16 v23, 0x0

    .line 742
    .line 743
    move-object/from16 v17, v4

    .line 744
    .line 745
    move-object/from16 v18, v5

    .line 746
    .line 747
    move-object/from16 v19, v0

    .line 748
    .line 749
    move-object/from16 v22, v6

    .line 750
    .line 751
    invoke-static/range {v17 .. v23}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 752
    .line 753
    .line 754
    :cond_f
    :goto_e
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 757
    .line 758
    iget-boolean v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 759
    .line 760
    if-eqz v4, :cond_10

    .line 761
    .line 762
    iget-object v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 763
    .line 764
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    .line 768
    .line 769
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 770
    .line 771
    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;-><init>()V

    .line 772
    .line 773
    .line 774
    invoke-direct {v5, v4, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V

    .line 775
    .line 776
    .line 777
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 778
    .line 779
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 780
    .line 781
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 787
    .line 788
    const/4 v6, 0x0

    .line 789
    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 790
    .line 791
    .line 792
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 793
    .line 794
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    .line 796
    .line 797
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;

    .line 798
    .line 799
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    invoke-direct {v0, v5, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V

    .line 804
    .line 805
    .line 806
    iput-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 807
    .line 808
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    .line 809
    .line 810
    const-string v4, "any_screen_running"

    .line 811
    .line 812
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    iget-object v6, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 817
    .line 818
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 819
    .line 820
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    const/4 v5, -0x2

    .line 828
    const/4 v8, 0x0

    .line 829
    invoke-virtual {v0, v4, v8, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 830
    .line 831
    .line 832
    :cond_10
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 835
    .line 836
    iget-boolean v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 837
    .line 838
    if-eqz v4, :cond_11

    .line 839
    .line 840
    iget-object v4, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 841
    .line 842
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 846
    .line 847
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 848
    .line 849
    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;-><init>()V

    .line 850
    .line 851
    .line 852
    invoke-direct {v5, v4, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V

    .line 853
    .line 854
    .line 855
    iput-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 856
    .line 857
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 858
    .line 859
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 860
    .line 861
    invoke-virtual {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 862
    .line 863
    .line 864
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 870
    .line 871
    const/4 v6, 0x1

    .line 872
    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 873
    .line 874
    .line 875
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 876
    .line 877
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 878
    .line 879
    .line 880
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 881
    .line 882
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 883
    .line 884
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 885
    .line 886
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    const-string/jumbo v5, "fingerprint_protective_film_guideline_displayed"

    .line 894
    .line 895
    .line 896
    const/4 v6, 0x0

    .line 897
    invoke-static {v4, v5, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 898
    .line 899
    .line 900
    move-result v4

    .line 901
    if-ltz v4, :cond_11

    .line 902
    .line 903
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 904
    .line 905
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    .line 907
    .line 908
    :cond_11
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 911
    .line 912
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    .line 913
    .line 914
    iget-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 915
    .line 916
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    .line 917
    .line 918
    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-direct {v4, v5, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;)V

    .line 922
    .line 923
    .line 924
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 925
    .line 926
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 927
    .line 928
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    check-cast v5, Ljava/util/ArrayList;

    .line 933
    .line 934
    const/4 v6, 0x0

    .line 935
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 940
    .line 941
    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 942
    .line 943
    const/16 v20, 0x0

    .line 944
    .line 945
    const/16 v21, 0x0

    .line 946
    .line 947
    const/16 v19, 0x25

    .line 948
    .line 949
    const/16 v22, 0x0

    .line 950
    .line 951
    move-object/from16 v17, v0

    .line 952
    .line 953
    move/from16 v18, v5

    .line 954
    .line 955
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 956
    .line 957
    .line 958
    move-result v5

    .line 959
    const-string v6, "TZ BUILD TYPE = "

    .line 960
    .line 961
    const-string v8, "SemFpScreenStatusNotifier"

    .line 962
    .line 963
    invoke-static {v5, v6, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    const/4 v6, 0x1

    .line 967
    if-eq v5, v6, :cond_12

    .line 968
    .line 969
    goto :goto_f

    .line 970
    :cond_12
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 971
    .line 972
    .line 973
    :goto_f
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    :cond_13
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    if-eqz v0, :cond_20

    .line 986
    .line 987
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 992
    .line 993
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 994
    .line 995
    const/4 v4, 0x3

    .line 996
    if-ne v0, v4, :cond_1f

    .line 997
    .line 998
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 1002
    .line 1003
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 1004
    .line 1005
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 1006
    .line 1007
    if-eqz v4, :cond_1e

    .line 1008
    .line 1009
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1012
    .line 1013
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1014
    .line 1015
    check-cast v5, Ljava/lang/Integer;

    .line 1016
    .line 1017
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1018
    .line 1019
    .line 1020
    move-result v18

    .line 1021
    move-object v5, v0

    .line 1022
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1023
    .line 1024
    const/16 v0, 0x100

    .line 1025
    .line 1026
    new-array v0, v0, [B

    .line 1027
    .line 1028
    const/16 v21, 0x0

    .line 1029
    .line 1030
    const/16 v19, 0x20

    .line 1031
    .line 1032
    const/16 v20, 0x0

    .line 1033
    .line 1034
    move-object/from16 v17, v5

    .line 1035
    .line 1036
    move-object/from16 v22, v0

    .line 1037
    .line 1038
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 1039
    .line 1040
    .line 1041
    move-result v6

    .line 1042
    if-lez v6, :cond_14

    .line 1043
    .line 1044
    :try_start_3
    new-instance v8, Ljava/lang/String;

    .line 1045
    .line 1046
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1047
    .line 1048
    const/4 v12, 0x0

    .line 1049
    invoke-direct {v8, v0, v12, v6, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1057
    .line 1058
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

    .line 1063
    .line 1064
    .line 1065
    move-result-object v5

    .line 1066
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    const-string/jumbo v8, "semGetOpticalBrightnessConfigs: "

    .line 1069
    .line 1070
    .line 1071
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-static {v0, v6, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    :cond_14
    const/4 v5, 0x0

    .line 1078
    new-array v0, v5, [Ljava/lang/String;

    .line 1079
    .line 1080
    :goto_11
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1081
    .line 1082
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1083
    .line 1084
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast v6, Ljava/lang/Integer;

    .line 1087
    .line 1088
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1089
    .line 1090
    .line 1091
    move-result v6

    .line 1092
    const/16 v8, 0x2d

    .line 1093
    .line 1094
    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1095
    .line 1096
    invoke-virtual {v5, v6, v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(II)I

    .line 1097
    .line 1098
    .line 1099
    move-result v5

    .line 1100
    iget-object v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 1101
    .line 1102
    iput v5, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationStatus:I

    .line 1103
    .line 1104
    const/16 v8, 0x20d

    .line 1105
    .line 1106
    iput v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1107
    .line 1108
    if-eqz v0, :cond_18

    .line 1109
    .line 1110
    :try_start_4
    array-length v6, v0

    .line 1111
    if-lez v6, :cond_15

    .line 1112
    .line 1113
    const/4 v11, 0x0

    .line 1114
    aget-object v6, v0, v11

    .line 1115
    .line 1116
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1117
    .line 1118
    .line 1119
    move-result v6

    .line 1120
    iput v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1121
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

    .line 1129
    .line 1130
    aget-object v6, v0, v8

    .line 1131
    .line 1132
    iput-object v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    .line 1133
    .line 1134
    :cond_16
    array-length v6, v0

    .line 1135
    const/4 v8, 0x4

    .line 1136
    if-le v6, v8, :cond_17

    .line 1137
    .line 1138
    aget-object v6, v0, v8

    .line 1139
    .line 1140
    iput-object v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    .line 1141
    .line 1142
    :cond_17
    array-length v6, v0

    .line 1143
    move v8, v11

    .line 1144
    :goto_13
    if-ge v8, v6, :cond_1a

    .line 1145
    .line 1146
    aget-object v12, v0, v8

    .line 1147
    .line 1148
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1151
    .line 1152
    .line 1153
    const-string/jumbo v11, "setBrightnessConfigs: node = "

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v11

    .line 1166
    invoke-static {v14, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .line 1168
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

    .line 1174
    .line 1175
    .line 1176
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    const v6, 0x1070080

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1187
    .line 1188
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

    .line 1194
    .line 1195
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-ge v0, v8, :cond_19

    .line 1200
    .line 1201
    iput v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1202
    .line 1203
    :cond_19
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    .line 1204
    .line 1205
    .line 1206
    move-result v0

    .line 1207
    iput v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1208
    .line 1209
    goto :goto_15

    .line 1210
    :goto_14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    const-string/jumbo v8, "getBrightnessNitsValue: failure to read nits info: "

    .line 1213
    .line 1214
    .line 1215
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-static {v0, v6, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    :cond_1a
    :goto_15
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 1222
    .line 1223
    if-eqz v0, :cond_1b

    .line 1224
    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    const-string/jumbo v6, "setBrightnessConfigs: nits = ["

    .line 1228
    .line 1229
    .line 1230
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    iget v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1234
    .line 1235
    const-string v8, "]"

    .line 1236
    .line 1237
    invoke-static {v0, v6, v8, v14}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    :cond_1b
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 1241
    .line 1242
    const/4 v6, 0x3

    .line 1243
    invoke-direct {v0, v4, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v8

    .line 1250
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1251
    .line 1252
    .line 1253
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 1254
    .line 1255
    const/4 v8, 0x2

    .line 1256
    invoke-direct {v0, v4, v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v8

    .line 1263
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1264
    .line 1265
    .line 1266
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mGetDisplayStateMonitor:Ljava/util/function/Supplier;

    .line 1267
    .line 1268
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    check-cast v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 1273
    .line 1274
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;

    .line 1275
    .line 1276
    invoke-direct {v8, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 1280
    .line 1281
    .line 1282
    if-ltz v5, :cond_13

    .line 1283
    .line 1284
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v4

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v5

    .line 1299
    if-nez v5, :cond_13

    .line 1300
    .line 1301
    new-instance v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 1302
    .line 1303
    const-string v8, "FPDA"

    .line 1304
    .line 1305
    const/4 v11, 0x2

    .line 1306
    invoke-direct {v5, v10, v11, v8, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    const-string v8, "FPCA"

    .line 1310
    .line 1311
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result v11

    .line 1315
    if-eqz v11, :cond_1c

    .line 1316
    .line 1317
    goto :goto_16

    .line 1318
    :cond_1c
    iget-object v11, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 1319
    .line 1320
    if-nez v11, :cond_1d

    .line 1321
    .line 1322
    new-instance v11, Landroid/util/ArrayMap;

    .line 1323
    .line 1324
    const/4 v12, 0x1

    .line 1325
    invoke-direct {v11, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1326
    .line 1327
    .line 1328
    iput-object v11, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 1329
    .line 1330
    :cond_1d
    iget-object v11, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 1331
    .line 1332
    check-cast v11, Landroid/util/ArrayMap;

    .line 1333
    .line 1334
    invoke-virtual {v11, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    :goto_16
    invoke-virtual {v0, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 1338
    .line 1339
    .line 1340
    goto/16 :goto_10

    .line 1341
    .line 1342
    :cond_1e
    const/4 v6, 0x3

    .line 1343
    goto/16 :goto_10

    .line 1344
    .line 1345
    :cond_1f
    move v6, v4

    .line 1346
    goto/16 :goto_10

    .line 1347
    .line 1348
    :cond_20
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;

    .line 1349
    .line 1350
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;-><init>(Landroid/util/Pair;)V

    .line 1351
    .line 1352
    .line 1353
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1354
    .line 1355
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1356
    .line 1357
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1358
    .line 1359
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 1360
    .line 1361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1362
    .line 1363
    .line 1364
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 1365
    .line 1366
    const/4 v3, 0x2

    .line 1367
    invoke-direct {v2, v1, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 1371
    .line 1372
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    .line 1374
    .line 1375
    goto :goto_1a

    .line 1376
    :cond_21
    const/16 v1, 0x3e8

    .line 1377
    .line 1378
    if-ne v0, v1, :cond_25

    .line 1379
    .line 1380
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1389
    .line 1390
    .line 1391
    move-result v1

    .line 1392
    if-eqz v1, :cond_24

    .line 1393
    .line 1394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v1

    .line 1398
    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1399
    .line 1400
    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1401
    .line 1402
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v1

    .line 1406
    const/4 v3, 0x1

    .line 1407
    iput-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    .line 1408
    .line 1409
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1410
    .line 1411
    if-nez v4, :cond_22

    .line 1412
    .line 1413
    goto :goto_17

    .line 1414
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v4

    .line 1418
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1419
    .line 1420
    .line 1421
    move-result v5

    .line 1422
    if-eqz v5, :cond_23

    .line 1423
    .line 1424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v5

    .line 1428
    check-cast v5, Ljava/lang/Runnable;

    .line 1429
    .line 1430
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_18

    .line 1434
    :cond_23
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1435
    .line 1436
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1437
    .line 1438
    .line 1439
    iput-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1440
    .line 1441
    goto :goto_17

    .line 1442
    :cond_24
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 1443
    .line 1444
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1449
    .line 1450
    .line 1451
    const-string v0, "BiometricContextProvider"

    .line 1452
    .line 1453
    const-string/jumbo v2, "ensureBiometricContextListener"

    .line 1454
    .line 1455
    .line 1456
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    .line 1458
    .line 1459
    :try_start_5
    const-string/jumbo v0, "statusbar"

    .line 1460
    .line 1461
    .line 1462
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    iget-object v2, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    .line 1471
    .line 1472
    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_5
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1473
    .line 1474
    .line 1475
    goto :goto_19

    .line 1476
    :catch_5
    move-exception v0

    .line 1477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1478
    .line 1479
    .line 1480
    :goto_19
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;

    .line 1481
    .line 1482
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/log/BiometricContextProvider$4;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 1486
    .line 1487
    .line 1488
    :cond_25
    :goto_1a
    return-void
.end method
