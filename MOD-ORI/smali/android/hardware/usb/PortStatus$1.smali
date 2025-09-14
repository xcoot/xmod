.class public final Landroid/hardware/usb/PortStatus$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p0, Landroid/hardware/usb/PortStatus;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 8
    .line 9
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 10
    .line 11
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 20
    .line 21
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 22
    .line 23
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 24
    .line 25
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 26
    .line 27
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    .line 30
    .line 31
    new-array v1, v0, [I

    .line 32
    .line 33
    iput-object v1, p0, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 34
    .line 35
    iput v0, p0, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    .line 36
    .line 37
    new-array v0, v0, [Landroid/hardware/usb/AltModeData;

    .line 38
    .line 39
    iput-object v0, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    const-string v3, "Overflow in the size of parcelable"

    .line 51
    .line 52
    const v4, 0x7fffffff

    .line 53
    .line 54
    .line 55
    if-lt v1, v2, :cond_29

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 58
    .line 59
    .line 60
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sub-int/2addr v2, v0

    .line 62
    if-lt v2, v1, :cond_1

    .line 63
    .line 64
    sub-int/2addr v4, v1

    .line 65
    if-gt v0, v4, :cond_0

    .line 66
    .line 67
    :goto_0
    add-int/2addr v0, v1

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 74
    .line 75
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 86
    .line 87
    .line 88
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    sub-int/2addr v2, v0

    .line 90
    if-lt v2, v1, :cond_3

    .line 91
    .line 92
    sub-int/2addr v4, v1

    .line 93
    if-gt v0, v4, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 97
    .line 98
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 109
    .line 110
    .line 111
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    sub-int/2addr v2, v0

    .line 113
    if-lt v2, v1, :cond_5

    .line 114
    .line 115
    sub-int/2addr v4, v1

    .line 116
    if-gt v0, v4, :cond_4

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 120
    .line 121
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 132
    .line 133
    .line 134
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    sub-int/2addr v2, v0

    .line 136
    if-lt v2, v1, :cond_7

    .line 137
    .line 138
    sub-int/2addr v4, v1

    .line 139
    if-gt v0, v4, :cond_6

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 143
    .line 144
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 155
    .line 156
    .line 157
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    sub-int/2addr v2, v0

    .line 159
    if-lt v2, v1, :cond_9

    .line 160
    .line 161
    sub-int/2addr v4, v1

    .line 162
    if-gt v0, v4, :cond_8

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 166
    .line 167
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 178
    .line 179
    .line 180
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    sub-int/2addr v2, v0

    .line 182
    if-lt v2, v1, :cond_b

    .line 183
    .line 184
    sub-int/2addr v4, v1

    .line 185
    if-gt v0, v4, :cond_a

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 189
    .line 190
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 201
    .line 202
    .line 203
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 204
    sub-int/2addr v2, v0

    .line 205
    if-lt v2, v1, :cond_d

    .line 206
    .line 207
    sub-int/2addr v4, v1

    .line 208
    if-gt v0, v4, :cond_c

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 213
    .line 214
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 225
    .line 226
    .line 227
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 228
    sub-int/2addr v2, v0

    .line 229
    if-lt v2, v1, :cond_f

    .line 230
    .line 231
    sub-int/2addr v4, v1

    .line 232
    if-gt v0, v4, :cond_e

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 237
    .line 238
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p0

    .line 242
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 249
    .line 250
    .line 251
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 252
    sub-int/2addr v2, v0

    .line 253
    if-lt v2, v1, :cond_11

    .line 254
    .line 255
    sub-int/2addr v4, v1

    .line 256
    if-gt v0, v4, :cond_10

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 261
    .line 262
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p0

    .line 266
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 273
    .line 274
    .line 275
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 276
    sub-int/2addr v2, v0

    .line 277
    if-lt v2, v1, :cond_13

    .line 278
    .line 279
    sub-int/2addr v4, v1

    .line 280
    if-gt v0, v4, :cond_12

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 285
    .line 286
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p0

    .line 290
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 297
    .line 298
    .line 299
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 300
    sub-int/2addr v2, v0

    .line 301
    if-lt v2, v1, :cond_15

    .line 302
    .line 303
    sub-int/2addr v4, v1

    .line 304
    if-gt v0, v4, :cond_14

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 309
    .line 310
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw p0

    .line 314
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 321
    .line 322
    .line 323
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 324
    sub-int/2addr v2, v0

    .line 325
    if-lt v2, v1, :cond_17

    .line 326
    .line 327
    sub-int/2addr v4, v1

    .line 328
    if-gt v0, v4, :cond_16

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 333
    .line 334
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p0

    .line 338
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 343
    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 345
    .line 346
    .line 347
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 348
    sub-int/2addr v2, v0

    .line 349
    if-lt v2, v1, :cond_19

    .line 350
    .line 351
    sub-int/2addr v4, v1

    .line 352
    if-gt v0, v4, :cond_18

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 357
    .line 358
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p0

    .line 362
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 369
    .line 370
    .line 371
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 372
    sub-int/2addr v2, v0

    .line 373
    if-lt v2, v1, :cond_1b

    .line 374
    .line 375
    sub-int/2addr v4, v1

    .line 376
    if-gt v0, v4, :cond_1a

    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 381
    .line 382
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p0

    .line 386
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 391
    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 393
    .line 394
    .line 395
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 396
    sub-int/2addr v2, v0

    .line 397
    if-lt v2, v1, :cond_1d

    .line 398
    .line 399
    sub-int/2addr v4, v1

    .line 400
    if-gt v0, v4, :cond_1c

    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 405
    .line 406
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw p0

    .line 410
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 415
    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 417
    .line 418
    .line 419
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 420
    sub-int/2addr v2, v0

    .line 421
    if-lt v2, v1, :cond_1f

    .line 422
    .line 423
    sub-int/2addr v4, v1

    .line 424
    if-gt v0, v4, :cond_1e

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 429
    .line 430
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw p0

    .line 434
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    .line 439
    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 441
    .line 442
    .line 443
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 444
    sub-int/2addr v2, v0

    .line 445
    if-lt v2, v1, :cond_21

    .line 446
    .line 447
    sub-int/2addr v4, v1

    .line 448
    if-gt v0, v4, :cond_20

    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 453
    .line 454
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw p0

    .line 458
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    .line 463
    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 465
    .line 466
    .line 467
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 468
    sub-int/2addr v2, v0

    .line 469
    if-lt v2, v1, :cond_23

    .line 470
    .line 471
    sub-int/2addr v4, v1

    .line 472
    if-gt v0, v4, :cond_22

    .line 473
    .line 474
    goto/16 :goto_0

    .line 475
    .line 476
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 477
    .line 478
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw p0

    .line 482
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 487
    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 489
    .line 490
    .line 491
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 492
    sub-int/2addr v2, v0

    .line 493
    if-lt v2, v1, :cond_25

    .line 494
    .line 495
    sub-int/2addr v4, v1

    .line 496
    if-gt v0, v4, :cond_24

    .line 497
    .line 498
    goto/16 :goto_0

    .line 499
    .line 500
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 501
    .line 502
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw p0

    .line 506
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    iput v2, p0, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    .line 511
    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 513
    .line 514
    .line 515
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 516
    sub-int/2addr v2, v0

    .line 517
    if-lt v2, v1, :cond_27

    .line 518
    .line 519
    sub-int/2addr v4, v1

    .line 520
    if-gt v0, v4, :cond_26

    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 525
    .line 526
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw p0

    .line 530
    :cond_27
    :try_start_14
    sget-object v2, Landroid/hardware/usb/AltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 531
    .line 532
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    check-cast v2, [Landroid/hardware/usb/AltModeData;

    .line 537
    .line 538
    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 539
    .line 540
    sub-int/2addr v4, v1

    .line 541
    if-gt v0, v4, :cond_28

    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :goto_1
    return-object p0

    .line 546
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 547
    .line 548
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw p0

    .line 552
    :catchall_0
    move-exception p0

    .line 553
    goto :goto_2

    .line 554
    :cond_29
    :try_start_15
    new-instance p0, Landroid/os/BadParcelableException;

    .line 555
    .line 556
    const-string v2, "Parcelable too small"

    .line 557
    .line 558
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 562
    :goto_2
    sub-int/2addr v4, v1

    .line 563
    if-le v0, v4, :cond_2a

    .line 564
    .line 565
    new-instance p0, Landroid/os/BadParcelableException;

    .line 566
    .line 567
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw p0

    .line 571
    :cond_2a
    add-int/2addr v0, v1

    .line 572
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 573
    .line 574
    .line 575
    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/hardware/usb/PortStatus;

    .line 2
    .line 3
    return-object p0
.end method
