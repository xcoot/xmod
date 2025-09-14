.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getDisplaySolutionManager()Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "FingerprintService"

    .line 14
    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 18
    invoke-interface {v0, v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v3, "writeMaxBrightnessInfo: "

    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 50
    const/4 v2, 0x0

    .line 51
    cmpg-float v0, v0, v2

    .line 53
    if-gtz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v2, "writeMaxBrightnessInfo: use default value, "

    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const v0, 0x439f8000    # 319.0f

    .line 78
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 80
    :cond_1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 82
    float-to-int v0, v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 92
    move-result-object v0

    .line 93
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    new-instance p0, Ljava/io/File;

    .line 100
    const-string v1, "/sys/class/lcd/panel/mask_brightness"

    .line 102
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    .line 108
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 114
    const-string/jumbo v1, "sys/class/lcd/panel/window_type"

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v0, Ljava/io/File;

    .line 122
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 131
    array-length v1, v0

    .line 132
    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Ljava/lang/String;

    .line 136
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 138
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    goto :goto_1

    .line 146
    :catch_1
    move-exception p0

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    const-string v0, "No file"

    .line 150
    :goto_1
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayPanelType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    goto :goto_3

    .line 153
    :goto_2
    const-string v0, "FingerprintService"

    .line 155
    const-string/jumbo v1, "getDisplayPanelType : "

    .line 158
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_3
    return-void

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 164
    if-eqz v0, :cond_7

    .line 166
    const-string v1, "DisplayAdjustmentManager.restore: "

    .line 168
    const-string v2, "DisplayAdjustmentManager.restore: start = "

    .line 170
    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 172
    monitor-enter v3

    .line 173
    :try_start_2
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 175
    if-eqz v4, :cond_3

    .line 177
    const-string v4, "FingerprintService"

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 186
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v2

    .line 193
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    goto :goto_4

    .line 197
    :catchall_0
    move-exception p0

    .line 198
    goto :goto_9

    .line 199
    :cond_3
    :goto_4
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 201
    if-nez v2, :cond_4

    .line 203
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    goto :goto_8

    .line 205
    :cond_4
    :try_start_3
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 207
    if-nez v2, :cond_5

    .line 209
    const-class v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 211
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 217
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 219
    goto :goto_5

    .line 220
    :catch_2
    move-exception v2

    .line 221
    goto :goto_6

    .line 222
    :cond_5
    :goto_5
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 224
    if-eqz v2, :cond_6

    .line 226
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->onOpticalUdfpsStopped()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    goto :goto_7

    .line 230
    :goto_6
    :try_start_4
    const-string v4, "FingerprintService"

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_6
    :goto_7
    const/4 v1, 0x0

    .line 252
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 254
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :goto_8
    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 258
    goto :goto_a

    .line 259
    :goto_9
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    throw p0

    .line 261
    :cond_7
    :goto_a
    return-void

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 264
    if-nez v0, :cond_8

    .line 266
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 268
    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;-><init>()V

    .line 271
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 273
    :cond_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    const-string v0, "DisplayAdjustmentManager.disable: "

    .line 280
    const-string v1, "DisplayAdjustmentManager.disable: start = "

    .line 282
    const-class v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

    .line 284
    monitor-enter v2

    .line 285
    :try_start_6
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 287
    if-eqz v3, :cond_9

    .line 289
    const-string v3, "FingerprintService"

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 298
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v1

    .line 305
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    goto :goto_b

    .line 309
    :catchall_1
    move-exception p0

    .line 310
    goto :goto_10

    .line 311
    :cond_9
    :goto_b
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 313
    if-eqz v1, :cond_a

    .line 315
    monitor-exit v2

    .line 316
    goto :goto_f

    .line 317
    :cond_a
    const/4 v1, 0x1

    .line 318
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mIsDisabled:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 320
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 322
    if-nez v1, :cond_b

    .line 324
    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 326
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 329
    move-result-object v1

    .line 330
    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 332
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 334
    goto :goto_c

    .line 335
    :catch_3
    move-exception p0

    .line 336
    goto :goto_d

    .line 337
    :cond_b
    :goto_c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 339
    if-eqz p0, :cond_c

    .line 341
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->onOpticalUdfpsStarted()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 344
    goto :goto_e

    .line 345
    :goto_d
    :try_start_8
    const-string v1, "FingerprintService"

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 349
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 355
    move-result-object p0

    .line 356
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object p0

    .line 363
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_c
    :goto_e
    monitor-exit v2

    .line 367
    :goto_f
    return-void

    .line 368
    :goto_10
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 369
    throw p0

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
