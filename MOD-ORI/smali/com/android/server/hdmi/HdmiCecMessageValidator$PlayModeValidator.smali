.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 10

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    array-length p0, p1

    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ge p0, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    array-length p0, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p0, v1, :cond_1

    .line 16
    .line 17
    :goto_0
    move v0, v2

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    aget-byte p0, p1, v2

    .line 21
    .line 22
    const/16 v3, 0x56

    .line 23
    .line 24
    const/16 v4, 0xa0

    .line 25
    .line 26
    const/16 v5, 0x90

    .line 27
    .line 28
    const/16 v6, 0x80

    .line 29
    .line 30
    const/16 v7, 0x30

    .line 31
    .line 32
    const/16 v8, 0x20

    .line 33
    .line 34
    const/16 v9, 0x60

    .line 35
    .line 36
    if-eq p0, v3, :cond_7

    .line 37
    .line 38
    const/16 v3, 0x57

    .line 39
    .line 40
    if-eq p0, v3, :cond_4

    .line 41
    .line 42
    if-eq p0, v9, :cond_3

    .line 43
    .line 44
    const/16 v3, 0x67

    .line 45
    .line 46
    if-eq p0, v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    array-length p0, p1

    .line 50
    if-lt p0, v0, :cond_a

    .line 51
    .line 52
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier(I[B)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    aget-byte p0, p1, v1

    .line 63
    .line 64
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    aget-byte p0, p1, v1

    .line 74
    .line 75
    and-int/lit16 p0, p0, 0xff

    .line 76
    .line 77
    if-eq p0, v8, :cond_6

    .line 78
    .line 79
    if-eq p0, v7, :cond_6

    .line 80
    .line 81
    if-eq p0, v6, :cond_6

    .line 82
    .line 83
    if-eq p0, v5, :cond_6

    .line 84
    .line 85
    if-eq p0, v4, :cond_6

    .line 86
    .line 87
    const/16 p1, 0xb1

    .line 88
    .line 89
    const/16 v0, 0xb3

    .line 90
    .line 91
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    const/16 p1, 0xc1

    .line 98
    .line 99
    const/16 v0, 0xc3

    .line 100
    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    move v1, v2

    .line 109
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    goto :goto_3

    .line 114
    :cond_7
    aget-byte p0, p1, v1

    .line 115
    .line 116
    if-eqz p0, :cond_9

    .line 117
    .line 118
    if-eq p0, v1, :cond_9

    .line 119
    .line 120
    const/16 p1, 0x10

    .line 121
    .line 122
    if-eq p0, p1, :cond_9

    .line 123
    .line 124
    if-eq p0, v8, :cond_9

    .line 125
    .line 126
    if-eq p0, v7, :cond_9

    .line 127
    .line 128
    const/16 p1, 0x40

    .line 129
    .line 130
    if-eq p0, p1, :cond_9

    .line 131
    .line 132
    const/16 p1, 0x50

    .line 133
    .line 134
    if-eq p0, p1, :cond_9

    .line 135
    .line 136
    if-eq p0, v9, :cond_9

    .line 137
    .line 138
    const/16 p1, 0x70

    .line 139
    .line 140
    if-eq p0, p1, :cond_9

    .line 141
    .line 142
    if-eq p0, v6, :cond_9

    .line 143
    .line 144
    if-eq p0, v5, :cond_9

    .line 145
    .line 146
    const/16 p1, 0x91

    .line 147
    .line 148
    if-eq p0, p1, :cond_9

    .line 149
    .line 150
    if-ne p0, v4, :cond_8

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    move v1, v2

    .line 154
    :cond_9
    :goto_2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    :cond_a
    :goto_3
    return v0

    .line 159
    :pswitch_0
    array-length p0, p1

    .line 160
    const/4 v0, 0x4

    .line 161
    const/4 v1, 0x1

    .line 162
    if-ge p0, v1, :cond_b

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_b
    const/4 p0, 0x0

    .line 166
    aget-byte v2, p1, p0

    .line 167
    .line 168
    and-int/lit8 v2, v2, 0x7f

    .line 169
    .line 170
    const/4 v3, 0x5

    .line 171
    if-nez v2, :cond_c

    .line 172
    .line 173
    array-length v0, p1

    .line 174
    if-lt v0, v3, :cond_e

    .line 175
    .line 176
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    goto :goto_4

    .line 181
    :cond_c
    if-ne v2, v1, :cond_d

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_d
    const/4 v4, 0x2

    .line 185
    if-ne v2, v4, :cond_e

    .line 186
    .line 187
    array-length v2, p1

    .line 188
    if-lt v2, v3, :cond_e

    .line 189
    .line 190
    aget-byte v2, p1, v1

    .line 191
    .line 192
    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_e

    .line 197
    .line 198
    invoke-static {v4, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_e

    .line 207
    .line 208
    aget-byte p1, p1, v0

    .line 209
    .line 210
    const/16 v0, 0x1f

    .line 211
    .line 212
    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_e

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_e
    move v1, p0

    .line 220
    :goto_4
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    :goto_5
    return v0

    .line 225
    :pswitch_1
    array-length p0, p1

    .line 226
    const/4 v0, 0x1

    .line 227
    if-ge p0, v0, :cond_f

    .line 228
    .line 229
    const/4 p0, 0x4

    .line 230
    goto :goto_a

    .line 231
    :cond_f
    const/4 p0, 0x0

    .line 232
    aget-byte v1, p1, p0

    .line 233
    .line 234
    and-int/lit8 v2, v1, 0x10

    .line 235
    .line 236
    const/16 v3, 0x10

    .line 237
    .line 238
    const/4 v4, 0x2

    .line 239
    if-ne v2, v3, :cond_11

    .line 240
    .line 241
    and-int/lit8 v1, v1, 0xf

    .line 242
    .line 243
    const/16 v2, 0xb

    .line 244
    .line 245
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_12

    .line 250
    .line 251
    const/16 v3, 0x9

    .line 252
    .line 253
    if-eq v1, v3, :cond_10

    .line 254
    .line 255
    if-ne v1, v2, :cond_14

    .line 256
    .line 257
    :cond_10
    array-length v1, p1

    .line 258
    sub-int/2addr v1, v0

    .line 259
    if-lt v1, v4, :cond_14

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_11
    and-int/lit8 v1, v1, 0xf

    .line 263
    .line 264
    const/16 v2, 0xe

    .line 265
    .line 266
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_12

    .line 271
    .line 272
    if-ne v1, v2, :cond_14

    .line 273
    .line 274
    array-length v1, p1

    .line 275
    sub-int/2addr v1, v0

    .line 276
    if-lt v1, v4, :cond_14

    .line 277
    .line 278
    :goto_6
    move v1, v0

    .line 279
    :goto_7
    move v2, v1

    .line 280
    goto :goto_8

    .line 281
    :cond_12
    move v1, p0

    .line 282
    goto :goto_7

    .line 283
    :goto_8
    if-eqz v2, :cond_13

    .line 284
    .line 285
    aget-byte v2, p1, v1

    .line 286
    .line 287
    const/16 v3, 0x63

    .line 288
    .line 289
    invoke-static {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_13

    .line 294
    .line 295
    add-int/2addr v1, v0

    .line 296
    aget-byte p1, p1, v1

    .line 297
    .line 298
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_13

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_13
    move v0, p0

    .line 306
    :cond_14
    :goto_9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    :goto_a
    return p0

    .line 311
    :pswitch_2
    array-length p0, p1

    .line 312
    const/4 v0, 0x1

    .line 313
    if-ge p0, v0, :cond_15

    .line 314
    .line 315
    const/4 p0, 0x4

    .line 316
    goto :goto_c

    .line 317
    :cond_15
    const/4 p0, 0x0

    .line 318
    aget-byte v1, p1, p0

    .line 319
    .line 320
    const/4 v2, 0x2

    .line 321
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_17

    .line 326
    .line 327
    aget-byte p1, p1, p0

    .line 328
    .line 329
    and-int/lit16 p1, p1, 0xff

    .line 330
    .line 331
    const/16 v1, 0x80

    .line 332
    .line 333
    if-ne p1, v1, :cond_16

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_16
    move v0, p0

    .line 337
    :cond_17
    :goto_b
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    :goto_c
    return p0

    .line 342
    :pswitch_3
    array-length p0, p1

    .line 343
    const/4 v0, 0x1

    .line 344
    if-ge p0, v0, :cond_18

    .line 345
    .line 346
    const/4 p0, 0x4

    .line 347
    goto :goto_d

    .line 348
    :cond_18
    array-length p0, p1

    .line 349
    if-le p0, v0, :cond_19

    .line 350
    .line 351
    const/4 p0, 0x5

    .line 352
    goto :goto_d

    .line 353
    :cond_19
    const/4 p0, 0x0

    .line 354
    aget-byte p1, p1, p0

    .line 355
    .line 356
    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 361
    .line 362
    .line 363
    move-result p0

    .line 364
    :goto_d
    return p0

    .line 365
    :pswitch_4
    array-length p0, p1

    .line 366
    const/4 v0, 0x4

    .line 367
    if-ge p0, v0, :cond_1a

    .line 368
    .line 369
    goto :goto_e

    .line 370
    :cond_1a
    const/4 p0, 0x0

    .line 371
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    .line 372
    .line 373
    .line 374
    move-result p0

    .line 375
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    :goto_e
    return v0

    .line 380
    :pswitch_5
    array-length p0, p1

    .line 381
    const/4 v0, 0x4

    .line 382
    if-ge p0, v0, :cond_1b

    .line 383
    .line 384
    goto :goto_f

    .line 385
    :cond_1b
    const/4 p0, 0x0

    .line 386
    aget-byte v0, p1, p0

    .line 387
    .line 388
    const/4 v1, 0x2

    .line 389
    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_1c

    .line 394
    .line 395
    const/4 v0, 0x1

    .line 396
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_1c

    .line 405
    .line 406
    const/4 v1, 0x3

    .line 407
    aget-byte p1, p1, v1

    .line 408
    .line 409
    const/16 v1, 0x1f

    .line 410
    .line 411
    invoke-static {p1, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    if-eqz p1, :cond_1c

    .line 416
    .line 417
    move p0, v0

    .line 418
    :cond_1c
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    :goto_f
    return v0

    .line 423
    :pswitch_6
    array-length p0, p1

    .line 424
    const/4 v0, 0x4

    .line 425
    if-ge p0, v0, :cond_1d

    .line 426
    .line 427
    goto :goto_10

    .line 428
    :cond_1d
    const/4 p0, 0x0

    .line 429
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_1e

    .line 434
    .line 435
    const/4 v0, 0x2

    .line 436
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-eqz p1, :cond_1e

    .line 441
    .line 442
    const/4 p0, 0x1

    .line 443
    :cond_1e
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    :goto_10
    return v0

    .line 448
    :pswitch_7
    array-length p0, p1

    .line 449
    const/4 v0, 0x3

    .line 450
    if-ge p0, v0, :cond_1f

    .line 451
    .line 452
    const/4 p0, 0x4

    .line 453
    goto :goto_11

    .line 454
    :cond_1f
    const/4 p0, 0x0

    .line 455
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_20

    .line 460
    .line 461
    const/4 v0, 0x2

    .line 462
    aget-byte p1, p1, v0

    .line 463
    .line 464
    if-ltz p1, :cond_20

    .line 465
    .line 466
    const/4 v1, 0x7

    .line 467
    if-gt p1, v1, :cond_20

    .line 468
    .line 469
    if-eq p1, v0, :cond_20

    .line 470
    .line 471
    const/4 p0, 0x1

    .line 472
    :cond_20
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    :goto_11
    return p0

    .line 477
    :pswitch_8
    array-length p0, p1

    .line 478
    const/4 v0, 0x1

    .line 479
    if-ge p0, v0, :cond_21

    .line 480
    .line 481
    const/4 p0, 0x4

    .line 482
    goto :goto_13

    .line 483
    :cond_21
    const/4 p0, 0x0

    .line 484
    aget-byte v1, p1, p0

    .line 485
    .line 486
    const/4 v2, 0x7

    .line 487
    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_23

    .line 492
    .line 493
    aget-byte v1, p1, p0

    .line 494
    .line 495
    const/16 v2, 0x9

    .line 496
    .line 497
    const/16 v3, 0xe

    .line 498
    .line 499
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-nez v1, :cond_23

    .line 504
    .line 505
    aget-byte v1, p1, p0

    .line 506
    .line 507
    const/16 v2, 0x10

    .line 508
    .line 509
    const/16 v3, 0x17

    .line 510
    .line 511
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_23

    .line 516
    .line 517
    aget-byte v1, p1, p0

    .line 518
    .line 519
    const/16 v2, 0x1a

    .line 520
    .line 521
    const/16 v3, 0x1b

    .line 522
    .line 523
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_23

    .line 528
    .line 529
    aget-byte p1, p1, p0

    .line 530
    .line 531
    const/16 v1, 0x1f

    .line 532
    .line 533
    if-ne p1, v1, :cond_22

    .line 534
    .line 535
    goto :goto_12

    .line 536
    :cond_22
    move v0, p0

    .line 537
    :cond_23
    :goto_12
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    :goto_13
    return p0

    .line 542
    :pswitch_9
    array-length p0, p1

    .line 543
    const/4 v0, 0x2

    .line 544
    if-ge p0, v0, :cond_24

    .line 545
    .line 546
    const/4 p0, 0x4

    .line 547
    goto :goto_14

    .line 548
    :cond_24
    const/4 p0, 0x0

    .line 549
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 550
    .line 551
    .line 552
    move-result p0

    .line 553
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 554
    .line 555
    .line 556
    move-result p0

    .line 557
    :goto_14
    return p0

    .line 558
    :pswitch_a
    array-length p0, p1

    .line 559
    const/4 v0, 0x2

    .line 560
    if-ge p0, v0, :cond_25

    .line 561
    .line 562
    const/4 p0, 0x4

    .line 563
    goto :goto_17

    .line 564
    :cond_25
    const/4 p0, 0x0

    .line 565
    aget-byte v0, p1, p0

    .line 566
    .line 567
    and-int/lit16 v0, v0, 0xff

    .line 568
    .line 569
    if-eqz v0, :cond_26

    .line 570
    .line 571
    const/16 v1, 0x40

    .line 572
    .line 573
    if-eq v0, v1, :cond_26

    .line 574
    .line 575
    const/16 v1, 0x80

    .line 576
    .line 577
    if-eq v0, v1, :cond_26

    .line 578
    .line 579
    const/16 v1, 0xc0

    .line 580
    .line 581
    if-ne v0, v1, :cond_29

    .line 582
    .line 583
    :cond_26
    const/4 v0, 0x1

    .line 584
    move v1, v0

    .line 585
    :goto_15
    array-length v2, p1

    .line 586
    if-ge v1, v2, :cond_28

    .line 587
    .line 588
    const/16 v2, 0xe

    .line 589
    .line 590
    if-ge v1, v2, :cond_28

    .line 591
    .line 592
    aget-byte v2, p1, v1

    .line 593
    .line 594
    const/16 v3, 0x20

    .line 595
    .line 596
    const/16 v4, 0x7e

    .line 597
    .line 598
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    if-nez v2, :cond_27

    .line 603
    .line 604
    goto :goto_16

    .line 605
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 606
    .line 607
    goto :goto_15

    .line 608
    :cond_28
    move p0, v0

    .line 609
    :cond_29
    :goto_16
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 610
    .line 611
    .line 612
    move-result p0

    .line 613
    :goto_17
    return p0

    .line 614
    :pswitch_b
    array-length p0, p1

    .line 615
    const/16 v0, 0x9

    .line 616
    .line 617
    const/4 v1, 0x4

    .line 618
    if-ge p0, v0, :cond_2a

    .line 619
    .line 620
    goto :goto_19

    .line 621
    :cond_2a
    const/4 p0, 0x0

    .line 622
    aget-byte v0, p1, p0

    .line 623
    .line 624
    const/16 v2, 0x1f

    .line 625
    .line 626
    const/4 v3, 0x1

    .line 627
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_2d

    .line 632
    .line 633
    aget-byte v0, p1, v3

    .line 634
    .line 635
    const/16 v2, 0xc

    .line 636
    .line 637
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_2d

    .line 642
    .line 643
    const/4 v0, 0x2

    .line 644
    aget-byte v2, p1, v0

    .line 645
    .line 646
    const/16 v4, 0x17

    .line 647
    .line 648
    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_2d

    .line 653
    .line 654
    const/4 v2, 0x3

    .line 655
    aget-byte v2, p1, v2

    .line 656
    .line 657
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    if-eqz v2, :cond_2d

    .line 662
    .line 663
    aget-byte v2, p1, v1

    .line 664
    .line 665
    const/16 v4, 0x63

    .line 666
    .line 667
    invoke-static {v2, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_2d

    .line 672
    .line 673
    const/4 v2, 0x5

    .line 674
    aget-byte v4, p1, v2

    .line 675
    .line 676
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_2d

    .line 681
    .line 682
    const/4 v4, 0x6

    .line 683
    aget-byte v4, p1, v4

    .line 684
    .line 685
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-eqz v4, :cond_2d

    .line 690
    .line 691
    const/4 v4, 0x7

    .line 692
    aget-byte v4, p1, v4

    .line 693
    .line 694
    const/16 v5, 0x8

    .line 695
    .line 696
    if-ne v4, v1, :cond_2b

    .line 697
    .line 698
    aget-byte p1, p1, v5

    .line 699
    .line 700
    const/16 v0, 0xff

    .line 701
    .line 702
    invoke-static {p1, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 703
    .line 704
    .line 705
    move-result p1

    .line 706
    goto :goto_18

    .line 707
    :cond_2b
    if-ne v4, v2, :cond_2c

    .line 708
    .line 709
    array-length v1, p1

    .line 710
    sub-int/2addr v1, v5

    .line 711
    if-lt v1, v0, :cond_2c

    .line 712
    .line 713
    invoke-static {v5, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress(I[B)Z

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    goto :goto_18

    .line 718
    :cond_2c
    move p1, p0

    .line 719
    :goto_18
    if-eqz p1, :cond_2d

    .line 720
    .line 721
    move p0, v3

    .line 722
    :cond_2d
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    :goto_19
    return v1

    .line 727
    :pswitch_c
    array-length p0, p1

    .line 728
    const/16 v0, 0xb

    .line 729
    .line 730
    const/4 v1, 0x4

    .line 731
    if-ge p0, v0, :cond_2e

    .line 732
    .line 733
    goto :goto_1a

    .line 734
    :cond_2e
    const/4 p0, 0x0

    .line 735
    aget-byte v0, p1, p0

    .line 736
    .line 737
    const/16 v2, 0x1f

    .line 738
    .line 739
    const/4 v3, 0x1

    .line 740
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-eqz v0, :cond_2f

    .line 745
    .line 746
    aget-byte v0, p1, v3

    .line 747
    .line 748
    const/16 v2, 0xc

    .line 749
    .line 750
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    if-eqz v0, :cond_2f

    .line 755
    .line 756
    const/4 v0, 0x2

    .line 757
    aget-byte v0, p1, v0

    .line 758
    .line 759
    const/16 v2, 0x17

    .line 760
    .line 761
    invoke-static {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    if-eqz v0, :cond_2f

    .line 766
    .line 767
    const/4 v0, 0x3

    .line 768
    aget-byte v0, p1, v0

    .line 769
    .line 770
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    if-eqz v0, :cond_2f

    .line 775
    .line 776
    aget-byte v0, p1, v1

    .line 777
    .line 778
    const/16 v1, 0x63

    .line 779
    .line 780
    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-eqz v0, :cond_2f

    .line 785
    .line 786
    const/4 v0, 0x5

    .line 787
    aget-byte v0, p1, v0

    .line 788
    .line 789
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-eqz v0, :cond_2f

    .line 794
    .line 795
    const/4 v0, 0x6

    .line 796
    aget-byte v0, p1, v0

    .line 797
    .line 798
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    if-eqz v0, :cond_2f

    .line 803
    .line 804
    const/4 v0, 0x7

    .line 805
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification(I[B)Z

    .line 806
    .line 807
    .line 808
    move-result p1

    .line 809
    if-eqz p1, :cond_2f

    .line 810
    .line 811
    move p0, v3

    .line 812
    :cond_2f
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 813
    .line 814
    .line 815
    move-result v1

    .line 816
    :goto_1a
    return v1

    .line 817
    :pswitch_d
    array-length p0, p1

    .line 818
    const/16 v0, 0xb

    .line 819
    .line 820
    const/4 v1, 0x4

    .line 821
    if-ge p0, v0, :cond_30

    .line 822
    .line 823
    goto :goto_1b

    .line 824
    :cond_30
    const/4 p0, 0x0

    .line 825
    aget-byte v0, p1, p0

    .line 826
    .line 827
    const/4 v2, 0x1

    .line 828
    const/16 v3, 0x1f

    .line 829
    .line 830
    invoke-static {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_31

    .line 835
    .line 836
    aget-byte v0, p1, v2

    .line 837
    .line 838
    const/16 v4, 0xc

    .line 839
    .line 840
    invoke-static {v0, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    if-eqz v0, :cond_31

    .line 845
    .line 846
    const/4 v0, 0x2

    .line 847
    aget-byte v4, p1, v0

    .line 848
    .line 849
    const/16 v5, 0x17

    .line 850
    .line 851
    invoke-static {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 852
    .line 853
    .line 854
    move-result v4

    .line 855
    if-eqz v4, :cond_31

    .line 856
    .line 857
    const/4 v4, 0x3

    .line 858
    aget-byte v4, p1, v4

    .line 859
    .line 860
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    if-eqz v4, :cond_31

    .line 865
    .line 866
    aget-byte v1, p1, v1

    .line 867
    .line 868
    const/16 v4, 0x63

    .line 869
    .line 870
    invoke-static {v1, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    if-eqz v1, :cond_31

    .line 875
    .line 876
    const/4 v1, 0x5

    .line 877
    aget-byte v1, p1, v1

    .line 878
    .line 879
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_31

    .line 884
    .line 885
    const/4 v1, 0x6

    .line 886
    aget-byte v1, p1, v1

    .line 887
    .line 888
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    if-eqz v1, :cond_31

    .line 893
    .line 894
    const/4 v1, 0x7

    .line 895
    aget-byte v1, p1, v1

    .line 896
    .line 897
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_31

    .line 902
    .line 903
    const/16 v0, 0x8

    .line 904
    .line 905
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    if-eqz v0, :cond_31

    .line 914
    .line 915
    const/16 v0, 0xa

    .line 916
    .line 917
    aget-byte p1, p1, v0

    .line 918
    .line 919
    invoke-static {p1, p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    .line 920
    .line 921
    .line 922
    move-result p1

    .line 923
    if-eqz p1, :cond_31

    .line 924
    .line 925
    move p0, v2

    .line 926
    :cond_31
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    :goto_1b
    return v1

    .line 931
    :pswitch_e
    array-length p0, p1

    .line 932
    const/4 v0, 0x1

    .line 933
    if-ge p0, v0, :cond_32

    .line 934
    .line 935
    const/4 p0, 0x4

    .line 936
    goto :goto_1c

    .line 937
    :cond_32
    const/4 p0, 0x0

    .line 938
    aget-byte p0, p1, p0

    .line 939
    .line 940
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    .line 941
    .line 942
    .line 943
    move-result p0

    .line 944
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    .line 945
    .line 946
    .line 947
    move-result p0

    .line 948
    :goto_1c
    return p0

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
