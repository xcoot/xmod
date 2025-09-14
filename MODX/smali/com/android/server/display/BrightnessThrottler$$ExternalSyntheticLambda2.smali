.class public final synthetic Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/os/Temperature;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p0}, Landroid/os/Temperature;->getStatus()I

    .line 20
    move-result p0

    .line 21
    iget-object v0, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 23
    iget v1, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 25
    if-eq v1, p0, :cond_6

    .line 27
    iput p0, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 29
    iget-object v1, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 31
    if-eqz v1, :cond_6

    .line 33
    const/4 v2, -0x1

    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eq p0, v2, :cond_0

    .line 39
    if-eqz v1, :cond_0

    .line 41
    iget-object p0, v1, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    move v1, v3

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 62
    iget v5, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 64
    iget v6, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 66
    if-gt v5, v6, :cond_1

    .line 68
    iget v1, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->brightness:F

    .line 70
    const/4 v4, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v1, v3

    .line 73
    :cond_1
    iget p0, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 75
    cmpl-float p0, p0, v1

    .line 77
    if-nez p0, :cond_2

    .line 79
    iget p0, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 81
    if-eq p0, v4, :cond_6

    .line 83
    :cond_2
    const/4 p0, 0x0

    .line 84
    cmpg-float v2, v1, p0

    .line 86
    const-string v5, "BrightnessThrottler"

    .line 88
    const-string/jumbo v6, "brightness "

    .line 91
    if-gez v2, :cond_3

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " is lower than the minimum possible brightness 0.0"

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move v1, p0

    .line 114
    :cond_3
    cmpl-float p0, v1, v3

    .line 116
    if-lez p0, :cond_4

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " is higher than the maximum possible brightness 1.0"

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move v3, v1

    .line 140
    :goto_1
    iput v3, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 142
    iput v4, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 144
    sget-boolean p0, Lcom/android/server/display/BrightnessThrottler;->DEBUG:Z

    .line 146
    if-eqz p0, :cond_5

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "State changed: mBrightnessCap = "

    .line 152
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    iget v1, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", mBrightnessMaxReason = "

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 167
    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 178
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_5
    iget-object p0, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    .line 183
    if-eqz p0, :cond_6

    .line 185
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 188
    :cond_6
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 191
    check-cast v0, Lcom/android/server/display/BrightnessThrottler;

    .line 193
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 195
    check-cast p0, Ljava/io/PrintWriter;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    const-string v1, "BrightnessThrottler:"

    .line 202
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    const-string v2, "  mThermalBrightnessThrottlingDataId="

    .line 209
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 214
    const-string v3, "  mThermalThrottlingData="

    .line 216
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 219
    move-result-object v1

    .line 220
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    const-string v2, "  mUniqueDisplayId="

    .line 236
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 241
    const-string v3, "  mThrottlingStatus="

    .line 243
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v1

    .line 247
    iget v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 249
    const-string v3, "  mBrightnessCap="

    .line 251
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    move-result-object v1

    .line 255
    iget v2, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 257
    const-string v3, "  mBrightnessMaxReason="

    .line 259
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    move-result-object v1

    .line 263
    iget v2, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 265
    invoke-static {v2}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    const-string v2, "  mDdcThermalThrottlingDataMap="

    .line 283
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "  mThermalBrightnessThrottlingDataOverride="

    .line 302
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    const-string v2, "  mThermalBrightnessThrottlingDataString="

    .line 321
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataString:Ljava/lang/String;

    .line 326
    invoke-static {v1, v2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 329
    iget-object v0, v0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    const-string v1, "  SkinThermalStatusObserver:"

    .line 336
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "    mStarted: "

    .line 343
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    .line 348
    const-string v3, "    mObserverTempSensor: "

    .line 350
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    move-result-object v1

    .line 354
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    iget-object v0, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 368
    if-eqz v0, :cond_7

    .line 370
    const-string v0, "    ThermalService available"

    .line 372
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    goto :goto_2

    .line 376
    :cond_7
    const-string v0, "    ThermalService not available"

    .line 378
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    :goto_2
    return-void

    .line 382
    nop

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
