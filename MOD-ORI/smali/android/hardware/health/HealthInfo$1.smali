.class public final Landroid/hardware/health/HealthInfo$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Landroid/hardware/health/HealthInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x4

    .line 15
    const-string v3, "Overflow in the size of parcelable"

    .line 16
    .line 17
    const v4, 0x7fffffff

    .line 18
    .line 19
    .line 20
    if-lt v1, v2, :cond_35

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sub-int/2addr v2, v0

    .line 27
    if-lt v2, v1, :cond_1

    .line 28
    .line 29
    sub-int/2addr v4, v1

    .line 30
    if-gt v0, v4, :cond_0

    .line 31
    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 39
    .line 40
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    .line 52
    .line 53
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sub-int/2addr v2, v0

    .line 55
    if-lt v2, v1, :cond_3

    .line 56
    .line 57
    sub-int/2addr v4, v1

    .line 58
    if-gt v0, v4, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 62
    .line 63
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 74
    .line 75
    .line 76
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    sub-int/2addr v2, v0

    .line 78
    if-lt v2, v1, :cond_5

    .line 79
    .line 80
    sub-int/2addr v4, v1

    .line 81
    if-gt v0, v4, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 85
    .line 86
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 97
    .line 98
    .line 99
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    sub-int/2addr v2, v0

    .line 101
    if-lt v2, v1, :cond_7

    .line 102
    .line 103
    sub-int/2addr v4, v1

    .line 104
    if-gt v0, v4, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 108
    .line 109
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 120
    .line 121
    .line 122
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    sub-int/2addr v2, v0

    .line 124
    if-lt v2, v1, :cond_9

    .line 125
    .line 126
    sub-int/2addr v4, v1

    .line 127
    if-gt v0, v4, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 131
    .line 132
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput v2, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 143
    .line 144
    .line 145
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    sub-int/2addr v2, v0

    .line 147
    if-lt v2, v1, :cond_b

    .line 148
    .line 149
    sub-int/2addr v4, v1

    .line 150
    if-gt v0, v4, :cond_a

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 154
    .line 155
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iput v2, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 166
    .line 167
    .line 168
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    sub-int/2addr v2, v0

    .line 170
    if-lt v2, v1, :cond_d

    .line 171
    .line 172
    sub-int/2addr v4, v1

    .line 173
    if-gt v0, v4, :cond_c

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 178
    .line 179
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 190
    .line 191
    .line 192
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 193
    sub-int/2addr v2, v0

    .line 194
    if-lt v2, v1, :cond_f

    .line 195
    .line 196
    sub-int/2addr v4, v1

    .line 197
    if-gt v0, v4, :cond_e

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 202
    .line 203
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 214
    .line 215
    .line 216
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 217
    sub-int/2addr v2, v0

    .line 218
    if-lt v2, v1, :cond_11

    .line 219
    .line 220
    sub-int/2addr v4, v1

    .line 221
    if-gt v0, v4, :cond_10

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 226
    .line 227
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 238
    .line 239
    .line 240
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 241
    sub-int/2addr v2, v0

    .line 242
    if-lt v2, v1, :cond_13

    .line 243
    .line 244
    sub-int/2addr v4, v1

    .line 245
    if-gt v0, v4, :cond_12

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 250
    .line 251
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 262
    .line 263
    .line 264
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 265
    sub-int/2addr v2, v0

    .line 266
    if-lt v2, v1, :cond_15

    .line 267
    .line 268
    sub-int/2addr v4, v1

    .line 269
    if-gt v0, v4, :cond_14

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 274
    .line 275
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 284
    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 286
    .line 287
    .line 288
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 289
    sub-int/2addr v2, v0

    .line 290
    if-lt v2, v1, :cond_17

    .line 291
    .line 292
    sub-int/2addr v4, v1

    .line 293
    if-gt v0, v4, :cond_16

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 298
    .line 299
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p0

    .line 303
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 310
    .line 311
    .line 312
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 313
    sub-int/2addr v2, v0

    .line 314
    if-lt v2, v1, :cond_19

    .line 315
    .line 316
    sub-int/2addr v4, v1

    .line 317
    if-gt v0, v4, :cond_18

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 322
    .line 323
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p0

    .line 327
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 334
    .line 335
    .line 336
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 337
    sub-int/2addr v2, v0

    .line 338
    if-lt v2, v1, :cond_1b

    .line 339
    .line 340
    sub-int/2addr v4, v1

    .line 341
    if-gt v0, v4, :cond_1a

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 346
    .line 347
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p0

    .line 351
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 358
    .line 359
    .line 360
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 361
    sub-int/2addr v2, v0

    .line 362
    if-lt v2, v1, :cond_1d

    .line 363
    .line 364
    sub-int/2addr v4, v1

    .line 365
    if-gt v0, v4, :cond_1c

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 370
    .line 371
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw p0

    .line 375
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 382
    .line 383
    .line 384
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 385
    sub-int/2addr v2, v0

    .line 386
    if-lt v2, v1, :cond_1f

    .line 387
    .line 388
    sub-int/2addr v4, v1

    .line 389
    if-gt v0, v4, :cond_1e

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 394
    .line 395
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw p0

    .line 399
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 406
    .line 407
    .line 408
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 409
    sub-int/2addr v2, v0

    .line 410
    if-lt v2, v1, :cond_21

    .line 411
    .line 412
    sub-int/2addr v4, v1

    .line 413
    if-gt v0, v4, :cond_20

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 418
    .line 419
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw p0

    .line 423
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 430
    .line 431
    .line 432
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 433
    sub-int/2addr v2, v0

    .line 434
    if-lt v2, v1, :cond_23

    .line 435
    .line 436
    sub-int/2addr v4, v1

    .line 437
    if-gt v0, v4, :cond_22

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 442
    .line 443
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw p0

    .line 447
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 452
    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 454
    .line 455
    .line 456
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 457
    sub-int/2addr v2, v0

    .line 458
    if-lt v2, v1, :cond_25

    .line 459
    .line 460
    sub-int/2addr v4, v1

    .line 461
    if-gt v0, v4, :cond_24

    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 466
    .line 467
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p0

    .line 471
    :cond_25
    :try_start_13
    sget-object v2, Landroid/hardware/health/DiskStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 472
    .line 473
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    check-cast v2, [Landroid/hardware/health/DiskStats;

    .line 478
    .line 479
    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    .line 480
    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 482
    .line 483
    .line 484
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 485
    sub-int/2addr v2, v0

    .line 486
    if-lt v2, v1, :cond_27

    .line 487
    .line 488
    sub-int/2addr v4, v1

    .line 489
    if-gt v0, v4, :cond_26

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 494
    .line 495
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw p0

    .line 499
    :cond_27
    :try_start_14
    sget-object v2, Landroid/hardware/health/StorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 500
    .line 501
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    check-cast v2, [Landroid/hardware/health/StorageInfo;

    .line 506
    .line 507
    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    .line 508
    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 510
    .line 511
    .line 512
    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 513
    sub-int/2addr v2, v0

    .line 514
    if-lt v2, v1, :cond_29

    .line 515
    .line 516
    sub-int/2addr v4, v1

    .line 517
    if-gt v0, v4, :cond_28

    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 522
    .line 523
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw p0

    .line 527
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 532
    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 534
    .line 535
    .line 536
    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 537
    sub-int/2addr v2, v0

    .line 538
    if-lt v2, v1, :cond_2b

    .line 539
    .line 540
    sub-int/2addr v4, v1

    .line 541
    if-gt v0, v4, :cond_2a

    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 546
    .line 547
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw p0

    .line 551
    :cond_2b
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 552
    .line 553
    .line 554
    move-result-wide v5

    .line 555
    iput-wide v5, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 556
    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 558
    .line 559
    .line 560
    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 561
    sub-int/2addr v2, v0

    .line 562
    if-lt v2, v1, :cond_2d

    .line 563
    .line 564
    sub-int/2addr v4, v1

    .line 565
    if-gt v0, v4, :cond_2c

    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :cond_2c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 570
    .line 571
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw p0

    .line 575
    :cond_2d
    :try_start_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 580
    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 582
    .line 583
    .line 584
    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 585
    sub-int/2addr v2, v0

    .line 586
    if-lt v2, v1, :cond_2f

    .line 587
    .line 588
    sub-int/2addr v4, v1

    .line 589
    if-gt v0, v4, :cond_2e

    .line 590
    .line 591
    goto/16 :goto_0

    .line 592
    .line 593
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 594
    .line 595
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw p0

    .line 599
    :cond_2f
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    iput v2, p0, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 604
    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 606
    .line 607
    .line 608
    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 609
    sub-int/2addr v2, v0

    .line 610
    if-lt v2, v1, :cond_31

    .line 611
    .line 612
    sub-int/2addr v4, v1

    .line 613
    if-gt v0, v4, :cond_30

    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :cond_30
    new-instance p0, Landroid/os/BadParcelableException;

    .line 618
    .line 619
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw p0

    .line 623
    :cond_31
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    iput v2, p0, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 628
    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 630
    .line 631
    .line 632
    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 633
    sub-int/2addr v2, v0

    .line 634
    if-lt v2, v1, :cond_33

    .line 635
    .line 636
    sub-int/2addr v4, v1

    .line 637
    if-gt v0, v4, :cond_32

    .line 638
    .line 639
    goto/16 :goto_0

    .line 640
    .line 641
    :cond_32
    new-instance p0, Landroid/os/BadParcelableException;

    .line 642
    .line 643
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    throw p0

    .line 647
    :cond_33
    :try_start_1a
    sget-object v2, Landroid/hardware/health/BatteryHealthData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 648
    .line 649
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    check-cast v2, Landroid/hardware/health/BatteryHealthData;

    .line 654
    .line 655
    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->batteryHealthData:Landroid/hardware/health/BatteryHealthData;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 656
    .line 657
    sub-int/2addr v4, v1

    .line 658
    if-gt v0, v4, :cond_34

    .line 659
    .line 660
    goto/16 :goto_0

    .line 661
    .line 662
    :goto_1
    return-object p0

    .line 663
    :cond_34
    new-instance p0, Landroid/os/BadParcelableException;

    .line 664
    .line 665
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    throw p0

    .line 669
    :catchall_0
    move-exception p0

    .line 670
    goto :goto_2

    .line 671
    :cond_35
    :try_start_1b
    new-instance p0, Landroid/os/BadParcelableException;

    .line 672
    .line 673
    const-string v2, "Parcelable too small"

    .line 674
    .line 675
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 679
    :goto_2
    sub-int/2addr v4, v1

    .line 680
    if-le v0, v4, :cond_36

    .line 681
    .line 682
    new-instance p0, Landroid/os/BadParcelableException;

    .line 683
    .line 684
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    throw p0

    .line 688
    :cond_36
    add-int/2addr v0, v1

    .line 689
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 690
    .line 691
    .line 692
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/health/HealthInfo;

    .line 2
    .line 3
    return-object p0
.end method
