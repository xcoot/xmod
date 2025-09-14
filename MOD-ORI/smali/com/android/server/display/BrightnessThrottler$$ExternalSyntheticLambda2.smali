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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/os/Temperature;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/Temperature;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget-object v0, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 22
    .line 23
    iget v1, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 24
    .line 25
    if-eq v1, p0, :cond_6

    .line 26
    .line 27
    iput p0, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    if-eq p0, v2, :cond_0

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object p0, v1, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 42
    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    move v1, v3

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 61
    .line 62
    iget v5, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 63
    .line 64
    iget v6, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 65
    .line 66
    if-gt v5, v6, :cond_1

    .line 67
    .line 68
    iget v1, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->brightness:F

    .line 69
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

    .line 74
    .line 75
    cmpl-float p0, p0, v1

    .line 76
    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    iget p0, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 80
    .line 81
    if-eq p0, v4, :cond_6

    .line 82
    .line 83
    :cond_2
    const/4 p0, 0x0

    .line 84
    cmpg-float v2, v1, p0

    .line 85
    .line 86
    const-string v5, "BrightnessThrottler"

    .line 87
    .line 88
    const-string/jumbo v6, "brightness "

    .line 89
    .line 90
    .line 91
    if-gez v2, :cond_3

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " is lower than the minimum possible brightness 0.0"

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move v1, p0

    .line 114
    :cond_3
    cmpl-float p0, v1, v3

    .line 115
    .line 116
    if-lez p0, :cond_4

    .line 117
    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, " is higher than the maximum possible brightness 1.0"

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move v3, v1

    .line 140
    :goto_1
    iput v3, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 141
    .line 142
    iput v4, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 143
    .line 144
    sget-boolean p0, Lcom/android/server/display/BrightnessThrottler;->DEBUG:Z

    .line 145
    .line 146
    if-eqz p0, :cond_5

    .line 147
    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v1, "State changed: mBrightnessCap = "

    .line 151
    .line 152
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v1, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", mBrightnessMaxReason = "

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v1, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 166
    .line 167
    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_5
    iget-object p0, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    .line 182
    .line 183
    if-eqz p0, :cond_6

    .line 184
    .line 185
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 186
    .line 187
    .line 188
    :cond_6
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lcom/android/server/display/BrightnessThrottler;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p0, Ljava/io/PrintWriter;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const-string v1, "BrightnessThrottler:"

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, "  mThermalBrightnessThrottlingDataId="

    .line 208
    .line 209
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 213
    .line 214
    const-string v3, "  mThermalThrottlingData="

    .line 215
    .line 216
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v2, "  mUniqueDisplayId="

    .line 235
    .line 236
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 240
    .line 241
    const-string v3, "  mThrottlingStatus="

    .line 242
    .line 243
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iget v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 248
    .line 249
    const-string v3, "  mBrightnessCap="

    .line 250
    .line 251
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget v2, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 256
    .line 257
    const-string v3, "  mBrightnessMaxReason="

    .line 258
    .line 259
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget v2, v0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 264
    .line 265
    invoke-static {v2}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v2, "  mDdcThermalThrottlingDataMap="

    .line 282
    .line 283
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v2, "  mThermalBrightnessThrottlingDataOverride="

    .line 301
    .line 302
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v2, "  mThermalBrightnessThrottlingDataString="

    .line 320
    .line 321
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataString:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v1, v2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    const-string v1, "  SkinThermalStatusObserver:"

    .line 335
    .line 336
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v2, "    mStarted: "

    .line 342
    .line 343
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    .line 347
    .line 348
    const-string v3, "    mObserverTempSensor: "

    .line 349
    .line 350
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    iget-object v2, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 367
    .line 368
    if-eqz v0, :cond_7

    .line 369
    .line 370
    const-string v0, "    ThermalService available"

    .line 371
    .line 372
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_7
    const-string v0, "    ThermalService not available"

    .line 377
    .line 378
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    .line 380
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
