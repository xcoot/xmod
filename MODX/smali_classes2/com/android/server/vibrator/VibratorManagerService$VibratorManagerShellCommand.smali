.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mShellCallbacksToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final nextEffect()Landroid/os/VibrationEffect;
    .locals 15

    .line 1
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1d

    .line 10
    .line 11
    const-string/jumbo v2, "oneshot"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    const-string v4, "-a"

    .line 20
    .line 21
    const-string v5, "-w"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v2, :cond_5

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move v1, v7

    .line 31
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_2

    .line 42
    .line 43
    move v7, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    if-eqz v7, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    :cond_4
    int-to-long v1, v1

    .line 79
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    const-string/jumbo v2, "waveform"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/high16 v8, 0x3f800000    # 1.0f

    .line 102
    .line 103
    if-eqz v2, :cond_17

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move v1, v7

    .line 109
    move v2, v1

    .line 110
    move v9, v2

    .line 111
    move v10, v9

    .line 112
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    if-eqz v11, :cond_b

    .line 117
    .line 118
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_7

    .line 123
    .line 124
    move v1, v6

    .line 125
    goto :goto_2

    .line 126
    :cond_7
    const-string v12, "-r"

    .line 127
    .line 128
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    goto :goto_2

    .line 143
    :cond_8
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-eqz v12, :cond_9

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    goto :goto_2

    .line 158
    :cond_9
    const-string v12, "-f"

    .line 159
    .line 160
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-eqz v12, :cond_a

    .line 165
    .line 166
    move v2, v6

    .line 167
    goto :goto_2

    .line 168
    :cond_a
    const-string v12, "-c"

    .line 169
    .line 170
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_6

    .line 175
    .line 176
    move v10, v6

    .line 177
    goto :goto_2

    .line 178
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v5, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v6, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    const/4 v11, 0x0

    .line 194
    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    if-eqz v12, :cond_e

    .line 199
    .line 200
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    .line 213
    .line 214
    if-eqz v1, :cond_d

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    const/high16 v13, 0x437f0000    # 255.0f

    .line 225
    .line 226
    div-float/2addr v12, v13

    .line 227
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_d
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    sub-float v11, v8, v11

    .line 243
    .line 244
    :goto_4
    if-eqz v2, :cond_c

    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :catch_1
    :cond_e
    int-to-long v8, v9

    .line 263
    invoke-static {v8, v9}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 268
    .line 269
    .line 270
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-ge v7, v8, :cond_15

    .line 279
    .line 280
    if-eqz v10, :cond_f

    .line 281
    .line 282
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    int-to-long v8, v8

    .line 293
    invoke-static {v8, v9}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    goto :goto_6

    .line 298
    :cond_f
    sget-object v8, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 299
    .line 300
    :goto_6
    if-eqz v10, :cond_10

    .line 301
    .line 302
    sget-object v9, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_10
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    check-cast v9, Ljava/lang/Integer;

    .line 310
    .line 311
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    int-to-long v11, v9

    .line 316
    invoke-static {v11, v12}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    :goto_7
    if-eqz v2, :cond_11

    .line 321
    .line 322
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    check-cast v11, Ljava/lang/Float;

    .line 327
    .line 328
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    invoke-static {v11}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    check-cast v12, Ljava/lang/Float;

    .line 341
    .line 342
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    invoke-static {v12}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 347
    .line 348
    .line 349
    move-result-object v12

    .line 350
    invoke-virtual {v1, v8, v11, v12}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_11
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    check-cast v11, Ljava/lang/Float;

    .line 359
    .line 360
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 361
    .line 362
    .line 363
    move-result v11

    .line 364
    invoke-static {v11}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    invoke-virtual {v1, v8, v11}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 369
    .line 370
    .line 371
    :goto_8
    invoke-virtual {v9}, Ljava/time/Duration;->isZero()Z

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    if-nez v8, :cond_12

    .line 376
    .line 377
    invoke-virtual {v1, v9}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 378
    .line 379
    .line 380
    :cond_12
    if-lez v7, :cond_14

    .line 381
    .line 382
    if-ne v7, v3, :cond_14

    .line 383
    .line 384
    invoke-virtual {v1}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 389
    .line 390
    .line 391
    if-eqz v2, :cond_13

    .line 392
    .line 393
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Ljava/lang/Float;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-static {v1}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    check-cast v8, Ljava/lang/Float;

    .line 412
    .line 413
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    invoke-static {v8}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    invoke-static {v1, v8}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    goto :goto_9

    .line 426
    :cond_13
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    check-cast v1, Ljava/lang/Float;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-static {v1}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-static {v1}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    :cond_14
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 445
    .line 446
    goto/16 :goto_5

    .line 447
    .line 448
    :cond_15
    if-gez v3, :cond_16

    .line 449
    .line 450
    invoke-virtual {v1}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 455
    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_16
    invoke-virtual {v1}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 464
    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :cond_17
    const-string/jumbo v2, "prebaked"

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-eqz v2, :cond_1b

    .line 476
    .line 477
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move v1, v7

    .line 481
    :cond_18
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    if-eqz v2, :cond_1a

    .line 486
    .line 487
    const-string v3, "-b"

    .line 488
    .line 489
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-eqz v3, :cond_19

    .line 494
    .line 495
    move v1, v6

    .line 496
    goto :goto_a

    .line 497
    :cond_19
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_18

    .line 502
    .line 503
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    goto :goto_a

    .line 512
    :cond_1a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    int-to-long v3, v7

    .line 521
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v0, v3}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 526
    .line 527
    .line 528
    invoke-static {v2, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 533
    .line 534
    .line 535
    goto/16 :goto_0

    .line 536
    .line 537
    :cond_1b
    const-string/jumbo v2, "primitives"

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    if-eqz v1, :cond_1d

    .line 545
    .line 546
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    if-eqz v1, :cond_0

    .line 554
    .line 555
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_1c

    .line 560
    .line 561
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    move-object v14, v2

    .line 577
    move v2, v1

    .line 578
    move-object v1, v14

    .line 579
    goto :goto_c

    .line 580
    :cond_1c
    move v2, v7

    .line 581
    :goto_c
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    invoke-virtual {v0, v1, v8, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 586
    .line 587
    .line 588
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 589
    .line 590
    .line 591
    goto :goto_b

    .line 592
    :cond_1d
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    return-object p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onCommand "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-wide/32 v1, 0x800000

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    const-string v0, "list"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    :try_start_1
    const-string/jumbo v0, "synced"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :cond_1
    :try_start_2
    const-string v0, "combined"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    const-string v4, "-v"

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    :try_start_3
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v0, v5, v6}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    .line 121
    .line 122
    return v3

    .line 123
    :cond_3
    :try_start_4
    const-string/jumbo v0, "sequential"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_4

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v0, v5, v6}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 175
    .line 176
    .line 177
    return v3

    .line 178
    :cond_5
    :try_start_5
    const-string/jumbo v0, "xml"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runXml()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 191
    .line 192
    .line 193
    return v3

    .line 194
    :cond_6
    :try_start_6
    const-string v0, "cancel"

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 203
    .line 204
    const/4 p1, -0x1

    .line 205
    invoke-virtual {p0, p1, p0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 209
    .line 210
    .line 211
    return v3

    .line 212
    :cond_7
    :try_start_7
    const-string v0, "feedback"

    .line 213
    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runHapticFeedback()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    .line 225
    .line 226
    return v3

    .line 227
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    .line 233
    .line 234
    return p0

    .line 235
    :catchall_0
    move-exception p0

    .line 236
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 237
    .line 238
    .line 239
    throw p0
.end method

.method public final onHelp()V
    .locals 6

    .line 1
    const-string v0, "    (Do Not Disturb) mode; touch feedback strength user setting "

    .line 2
    .line 3
    const-string v1, "    will be used to scale amplitude."

    .line 4
    .line 5
    const-string v2, "    wait time in milliseconds."

    .line 6
    .line 7
    const-string v3, "    If -w is provided, the effect will be played after the specified"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    const-string v5, "Vibrator Manager commands:"

    .line 16
    .line 17
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v5, "  help"

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v5, "    Prints this help text."

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v5, "  list"

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v5, "    Prints the id of device vibrators. This does not include any "

    .line 39
    .line 40
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v5, "    connected input device."

    .line 44
    .line 45
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v5, "  synced [options] <effect>..."

    .line 49
    .line 50
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v5, "    Vibrates effect on all vibrators in sync."

    .line 54
    .line 55
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v5, "  combined [options] (-v <vibrator-id> <effect>...)..."

    .line 59
    .line 60
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v5, "    Vibrates different effects on each vibrator in sync."

    .line 64
    .line 65
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    .line 69
    .line 70
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v5, "    Vibrates different effects on each vibrator in sequence."

    .line 74
    .line 75
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v5, "  xml [options] <xml>"

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v5, "    Vibrates using combined vibration described in given XML string"

    .line 84
    .line 85
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v5, "    on all vibrators in sync. The XML could be:"

    .line 89
    .line 90
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v5, "        XML containing a single effect, or"

    .line 94
    .line 95
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v5, "        A vibration select XML containing multiple effects."

    .line 99
    .line 100
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "    Vibrates using combined vibration described in given XML string."

    .line 104
    .line 105
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v5, "    XML containing a single effect it runs on all vibrators in sync."

    .line 109
    .line 110
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v5, "  cancel"

    .line 114
    .line 115
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v5, "    Cancels any active vibration"

    .line 119
    .line 120
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v5, "  feedback [-f] [-d <description>] <constant>"

    .line 124
    .line 125
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v5, "    Performs a haptic feedback with the given constant."

    .line 129
    .line 130
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v5, "    The force (-f) option enables the `always` configuration, which"

    .line 134
    .line 135
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v5, "    plays the haptic irrespective of the vibration intensity settings"

    .line 139
    .line 140
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v5, "Effect commands:"

    .line 147
    .line 148
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v5, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    .line 152
    .line 153
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v5, "    Vibrates for duration milliseconds; ignored when device is on "

    .line 157
    .line 158
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v5, "    DND (Do Not Disturb) mode; touch feedback strength user setting "

    .line 162
    .line 163
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v5, "    If -a is provided, the command accepts a second argument for "

    .line 176
    .line 177
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v5, "    amplitude, in a scale of 1-255."

    .line 181
    .line 182
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v5, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    .line 186
    .line 187
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v5, "(<duration> [<amplitude>] [<frequency>])..."

    .line 191
    .line 192
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v5, "    Vibrates for durations and amplitudes in list; ignored when "

    .line 196
    .line 197
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v5, "    device is on DND (Do Not Disturb) mode; touch feedback strength "

    .line 201
    .line 202
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v5, "    user setting will be used to scale amplitude."

    .line 206
    .line 207
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v5, "    If -r is provided, the waveform loops back to the specified"

    .line 217
    .line 218
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v5, "    index (e.g. 0 loops from the beginning)"

    .line 222
    .line 223
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v5, "    If -a is provided, the command expects amplitude to follow each"

    .line 227
    .line 228
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v5, "    duration; otherwise, it accepts durations only and alternates"

    .line 232
    .line 233
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v5, "    off/on"

    .line 237
    .line 238
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v5, "    If -f is provided, the command expects frequency to follow each"

    .line 242
    .line 243
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v5, "    amplitude or duration; otherwise, it uses resonant frequency"

    .line 247
    .line 248
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v5, "    If -c is provided, the waveform is continuous and will ramp"

    .line 252
    .line 253
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v5, "    between values; otherwise each entry is a fixed step."

    .line 257
    .line 258
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const-string v5, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    .line 262
    .line 263
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v5, "    frequency is an absolute value in hertz;"

    .line 267
    .line 268
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v5, "  prebaked [-w delay] [-b] <effect-id>"

    .line 272
    .line 273
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v5, "    Vibrates with prebaked effect; ignored when device is on DND "

    .line 277
    .line 278
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v1, "    If -b is provided, the prebaked fallback effect will be played if"

    .line 294
    .line 295
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string v1, "    the device doesn\'t support the given effect-id."

    .line 299
    .line 300
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v1, "  primitives ([-w delay] <primitive-id>)..."

    .line 304
    .line 305
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v1, "    Vibrates with a composed effect; ignored when device is on DND "

    .line 309
    .line 310
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v0, "    will be used to scale primitive intensities."

    .line 317
    .line 318
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v0, "    If -w is provided, the next primitive will be played after the "

    .line 322
    .line 323
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v0, "    specified wait time in milliseconds."

    .line 327
    .line 328
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v0, "Common Options:"

    .line 335
    .line 336
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const-string v0, "  -f"

    .line 340
    .line 341
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v0, "    Force. Ignore Do Not Disturb setting."

    .line 345
    .line 346
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string v0, "  -B"

    .line 350
    .line 351
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const-string v0, "    Run in the background; without this option the shell cmd will"

    .line 355
    .line 356
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v0, "    block until the vibration has completed."

    .line 360
    .line 361
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const-string v0, "  -d <description>"

    .line 365
    .line 366
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v0, "    Add description to the vibration."

    .line 370
    .line 371
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string v0, "  -P <package>"

    .line 375
    .line 376
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    const-string v0, "    Add calling package to the vibration."

    .line 380
    .line 381
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :catchall_0
    move-exception v0

    .line 392
    if-eqz p0, :cond_0

    .line 393
    .line 394
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    .line 396
    .line 397
    goto :goto_0

    .line 398
    :catchall_1
    move-exception p0

    .line 399
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    :cond_0
    :goto_0
    throw v0
.end method

.method public final runHapticFeedback()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Shell command"

    .line 4
    .line 5
    move v8, v1

    .line 6
    move-object v9, v2

    .line 7
    move v2, v8

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sparse-switch v5, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :sswitch_0
    const-string v5, "-p"

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v4, 0x3

    .line 33
    goto :goto_1

    .line 34
    :sswitch_1
    const-string v5, "-f"

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v4, 0x2

    .line 44
    goto :goto_1

    .line 45
    :sswitch_2
    const-string v5, "-d"

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v4, v0

    .line 55
    goto :goto_1

    .line 56
    :sswitch_3
    const-string v5, "-B"

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v4, v1

    .line 66
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move v8, v0

    .line 81
    goto :goto_0

    .line 82
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    move-object v9, v3

    .line 90
    goto :goto_0

    .line 91
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move v2, v0

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 107
    .line 108
    :goto_3
    move-object v10, v0

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_4
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 114
    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v5, 0x0

    .line 121
    const-string v6, "com.android.shell"

    .line 122
    .line 123
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;IZLjava/lang/String;Landroid/os/IBinder;Z)Lcom/android/server/vibrator/HalVibration;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    if-nez v2, :cond_6

    .line 130
    .line 131
    :try_start_0
    iget-object v0, v0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    int-to-long v1, p0

    .line 149
    const-wide/16 v3, 0x1f4

    .line 150
    .line 151
    add-long/2addr v1, v3

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    :catch_0
    :cond_6
    return-void

    .line 156
    nop

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x5b5 -> :sswitch_3
        0x5d7 -> :sswitch_2
        0x5d9 -> :sswitch_1
        0x5e3 -> :sswitch_0
    .end sparse-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runListVibrators()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 8
    .line 9
    array-length v1, p0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "No vibrator found"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    aget v3, p0, v2

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    const-string p0, ""

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_2
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_3
    throw p0
.end method

.method public final runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .locals 9

    .line 1
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x13

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x41

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 33
    .line 34
    :goto_1
    move-object v8, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    iget-object v7, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 53
    .line 54
    move-object v5, p2

    .line 55
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget-boolean p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    :try_start_0
    iget-object p1, p2, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    int-to-long v0, p0

    .line 83
    const-wide/16 v2, 0x1f4

    .line 84
    .line 85
    add-long/2addr v0, v2

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :catch_0
    :cond_2
    return-void
.end method

.method public final runXml()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Parsed vibration cannot be resolved for vibration XML "

    .line 11
    .line 12
    const-string v3, "No combined vibrator info to parse vibration XML "

    .line 13
    .line 14
    const-string v4, "Error parsing vibration XML "

    .line 15
    .line 16
    :try_start_0
    new-instance v5, Ljava/io/StringReader;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v5}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 28
    .line 29
    sget-object v7, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-static {v3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    .line 44
    .line 45
    .line 46
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 108
    .line 109
    invoke-static {v4, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method
