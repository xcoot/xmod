.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public captureDevice:I

.field public captureHandle:I

.field public captureRequested:Z

.field public data:Ljava/util/ArrayList;

.field public phrases:Ljava/util/ArrayList;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 20
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 22
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 29
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 36
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 38
    if-eq v2, v3, :cond_5

    .line 40
    return v1

    .line 41
    :cond_5
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 43
    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 45
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_6

    .line 51
    return v1

    .line 52
    :cond_6
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 54
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 56
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_7

    .line 62
    return v1

    .line 63
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 9
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 15
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 21
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 31
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p0

    .line 39
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.captureHandle = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .captureDevice = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 21
    if-nez v1, :cond_0

    .line 23
    const-string v1, "NONE"

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    const/high16 v2, -0x80000000

    .line 29
    if-ne v1, v2, :cond_1

    .line 31
    const-string v1, "BIT_IN"

    .line 33
    goto/16 :goto_0

    .line 35
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    .line 37
    if-ne v1, v2, :cond_2

    .line 39
    const-string v1, "BIT_DEFAULT"

    .line 41
    goto/16 :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x1

    .line 44
    if-ne v1, v3, :cond_3

    .line 46
    const-string v1, "OUT_EARPIECE"

    .line 48
    goto/16 :goto_0

    .line 50
    :cond_3
    const/4 v3, 0x2

    .line 51
    if-ne v1, v3, :cond_4

    .line 53
    const-string v1, "OUT_SPEAKER"

    .line 55
    goto/16 :goto_0

    .line 57
    :cond_4
    const/4 v3, 0x4

    .line 58
    if-ne v1, v3, :cond_5

    .line 60
    const-string v1, "OUT_WIRED_HEADSET"

    .line 62
    goto/16 :goto_0

    .line 64
    :cond_5
    const/16 v3, 0x8

    .line 66
    if-ne v1, v3, :cond_6

    .line 68
    const-string v1, "OUT_WIRED_HEADPHONE"

    .line 70
    goto/16 :goto_0

    .line 72
    :cond_6
    const/16 v3, 0x10

    .line 74
    if-ne v1, v3, :cond_7

    .line 76
    const-string v1, "OUT_BLUETOOTH_SCO"

    .line 78
    goto/16 :goto_0

    .line 80
    :cond_7
    const/16 v3, 0x20

    .line 82
    if-ne v1, v3, :cond_8

    .line 84
    const-string v1, "OUT_BLUETOOTH_SCO_HEADSET"

    .line 86
    goto/16 :goto_0

    .line 88
    :cond_8
    const/16 v3, 0x40

    .line 90
    if-ne v1, v3, :cond_9

    .line 92
    const-string v1, "OUT_BLUETOOTH_SCO_CARKIT"

    .line 94
    goto/16 :goto_0

    .line 96
    :cond_9
    const/16 v3, 0x80

    .line 98
    if-ne v1, v3, :cond_a

    .line 100
    const-string v1, "OUT_BLUETOOTH_A2DP"

    .line 102
    goto/16 :goto_0

    .line 104
    :cond_a
    const/16 v3, 0x100

    .line 106
    if-ne v1, v3, :cond_b

    .line 108
    const-string v1, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    .line 110
    goto/16 :goto_0

    .line 112
    :cond_b
    const/16 v3, 0x200

    .line 114
    if-ne v1, v3, :cond_c

    .line 116
    const-string v1, "OUT_BLUETOOTH_A2DP_SPEAKER"

    .line 118
    goto/16 :goto_0

    .line 120
    :cond_c
    const/16 v3, 0x400

    .line 122
    if-ne v1, v3, :cond_d

    .line 124
    const-string v1, "OUT_AUX_DIGITAL"

    .line 126
    goto/16 :goto_0

    .line 128
    :cond_d
    if-ne v1, v3, :cond_e

    .line 130
    const-string v1, "OUT_HDMI"

    .line 132
    goto/16 :goto_0

    .line 134
    :cond_e
    const/16 v3, 0x800

    .line 136
    if-ne v1, v3, :cond_f

    .line 138
    const-string v1, "OUT_ANLG_DOCK_HEADSET"

    .line 140
    goto/16 :goto_0

    .line 142
    :cond_f
    const/16 v3, 0x1000

    .line 144
    if-ne v1, v3, :cond_10

    .line 146
    const-string v1, "OUT_DGTL_DOCK_HEADSET"

    .line 148
    goto/16 :goto_0

    .line 150
    :cond_10
    const/16 v3, 0x2000

    .line 152
    if-ne v1, v3, :cond_11

    .line 154
    const-string v1, "OUT_USB_ACCESSORY"

    .line 156
    goto/16 :goto_0

    .line 158
    :cond_11
    const/16 v3, 0x4000

    .line 160
    if-ne v1, v3, :cond_12

    .line 162
    const-string v1, "OUT_USB_DEVICE"

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_12
    const v3, 0x8000

    .line 169
    if-ne v1, v3, :cond_13

    .line 171
    const-string v1, "OUT_REMOTE_SUBMIX"

    .line 173
    goto/16 :goto_0

    .line 175
    :cond_13
    const/high16 v3, 0x10000

    .line 177
    if-ne v1, v3, :cond_14

    .line 179
    const-string v1, "OUT_TELEPHONY_TX"

    .line 181
    goto/16 :goto_0

    .line 183
    :cond_14
    const/high16 v3, 0x20000

    .line 185
    if-ne v1, v3, :cond_15

    .line 187
    const-string v1, "OUT_LINE"

    .line 189
    goto/16 :goto_0

    .line 191
    :cond_15
    const/high16 v3, 0x40000

    .line 193
    if-ne v1, v3, :cond_16

    .line 195
    const-string v1, "OUT_HDMI_ARC"

    .line 197
    goto/16 :goto_0

    .line 199
    :cond_16
    const/high16 v3, 0x80000

    .line 201
    if-ne v1, v3, :cond_17

    .line 203
    const-string v1, "OUT_SPDIF"

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_17
    const/high16 v3, 0x100000

    .line 209
    if-ne v1, v3, :cond_18

    .line 211
    const-string v1, "OUT_FM"

    .line 213
    goto/16 :goto_0

    .line 215
    :cond_18
    const/high16 v3, 0x200000

    .line 217
    if-ne v1, v3, :cond_19

    .line 219
    const-string v1, "OUT_AUX_LINE"

    .line 221
    goto/16 :goto_0

    .line 223
    :cond_19
    const/high16 v3, 0x400000

    .line 225
    if-ne v1, v3, :cond_1a

    .line 227
    const-string v1, "OUT_SPEAKER_SAFE"

    .line 229
    goto/16 :goto_0

    .line 231
    :cond_1a
    const/high16 v3, 0x800000

    .line 233
    if-ne v1, v3, :cond_1b

    .line 235
    const-string v1, "OUT_IP"

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_1b
    const/high16 v3, 0x1000000

    .line 241
    if-ne v1, v3, :cond_1c

    .line 243
    const-string v1, "OUT_BUS"

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_1c
    const/high16 v3, 0x2000000

    .line 249
    if-ne v1, v3, :cond_1d

    .line 251
    const-string v1, "OUT_PROXY"

    .line 253
    goto/16 :goto_0

    .line 255
    :cond_1d
    const/high16 v3, 0x4000000

    .line 257
    if-ne v1, v3, :cond_1e

    .line 259
    const-string v1, "OUT_USB_HEADSET"

    .line 261
    goto/16 :goto_0

    .line 263
    :cond_1e
    if-ne v1, v2, :cond_1f

    .line 265
    const-string v1, "OUT_DEFAULT"

    .line 267
    goto/16 :goto_0

    .line 269
    :cond_1f
    const v2, 0x47ffffff

    .line 272
    if-ne v1, v2, :cond_20

    .line 274
    const-string v1, "OUT_ALL"

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_20
    const/16 v2, 0x380

    .line 280
    if-ne v1, v2, :cond_21

    .line 282
    const-string v1, "OUT_ALL_A2DP"

    .line 284
    goto/16 :goto_0

    .line 286
    :cond_21
    const/16 v2, 0x70

    .line 288
    if-ne v1, v2, :cond_22

    .line 290
    const-string v1, "OUT_ALL_SCO"

    .line 292
    goto/16 :goto_0

    .line 294
    :cond_22
    const v2, 0x4006000

    .line 297
    if-ne v1, v2, :cond_23

    .line 299
    const-string v1, "OUT_ALL_USB"

    .line 301
    goto/16 :goto_0

    .line 303
    :cond_23
    const v2, -0x7fffffff

    .line 306
    if-ne v1, v2, :cond_24

    .line 308
    const-string v1, "IN_COMMUNICATION"

    .line 310
    goto/16 :goto_0

    .line 312
    :cond_24
    const v2, -0x7ffffffe

    .line 315
    if-ne v1, v2, :cond_25

    .line 317
    const-string v1, "IN_AMBIENT"

    .line 319
    goto/16 :goto_0

    .line 321
    :cond_25
    const v2, -0x7ffffffc

    .line 324
    if-ne v1, v2, :cond_26

    .line 326
    const-string v1, "IN_BUILTIN_MIC"

    .line 328
    goto/16 :goto_0

    .line 330
    :cond_26
    const v2, -0x7ffffff8

    .line 333
    if-ne v1, v2, :cond_27

    .line 335
    const-string v1, "IN_BLUETOOTH_SCO_HEADSET"

    .line 337
    goto/16 :goto_0

    .line 339
    :cond_27
    const v3, -0x7ffffff0

    .line 342
    if-ne v1, v3, :cond_28

    .line 344
    const-string v1, "IN_WIRED_HEADSET"

    .line 346
    goto/16 :goto_0

    .line 348
    :cond_28
    const v3, -0x7fffffe0

    .line 351
    if-ne v1, v3, :cond_29

    .line 353
    const-string v1, "IN_AUX_DIGITAL"

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_29
    if-ne v1, v3, :cond_2a

    .line 359
    const-string v1, "IN_HDMI"

    .line 361
    goto/16 :goto_0

    .line 363
    :cond_2a
    const v3, -0x7fffffc0

    .line 366
    if-ne v1, v3, :cond_2b

    .line 368
    const-string v1, "IN_VOICE_CALL"

    .line 370
    goto/16 :goto_0

    .line 372
    :cond_2b
    if-ne v1, v3, :cond_2c

    .line 374
    const-string v1, "IN_TELEPHONY_RX"

    .line 376
    goto/16 :goto_0

    .line 378
    :cond_2c
    const v3, -0x7fffff80

    .line 381
    if-ne v1, v3, :cond_2d

    .line 383
    const-string v1, "IN_BACK_MIC"

    .line 385
    goto/16 :goto_0

    .line 387
    :cond_2d
    const v3, -0x7fffff00

    .line 390
    if-ne v1, v3, :cond_2e

    .line 392
    const-string v1, "IN_REMOTE_SUBMIX"

    .line 394
    goto/16 :goto_0

    .line 396
    :cond_2e
    const v3, -0x7ffffe00

    .line 399
    if-ne v1, v3, :cond_2f

    .line 401
    const-string v1, "IN_ANLG_DOCK_HEADSET"

    .line 403
    goto/16 :goto_0

    .line 405
    :cond_2f
    const v3, -0x7ffffc00

    .line 408
    if-ne v1, v3, :cond_30

    .line 410
    const-string v1, "IN_DGTL_DOCK_HEADSET"

    .line 412
    goto/16 :goto_0

    .line 414
    :cond_30
    const v3, -0x7ffff800

    .line 417
    if-ne v1, v3, :cond_31

    .line 419
    const-string v1, "IN_USB_ACCESSORY"

    .line 421
    goto/16 :goto_0

    .line 423
    :cond_31
    const v3, -0x7ffff000

    .line 426
    if-ne v1, v3, :cond_32

    .line 428
    const-string v1, "IN_USB_DEVICE"

    .line 430
    goto/16 :goto_0

    .line 432
    :cond_32
    const v3, -0x7fffe000

    .line 435
    if-ne v1, v3, :cond_33

    .line 437
    const-string v1, "IN_FM_TUNER"

    .line 439
    goto/16 :goto_0

    .line 441
    :cond_33
    const v3, -0x7fffc000

    .line 444
    if-ne v1, v3, :cond_34

    .line 446
    const-string v1, "IN_TV_TUNER"

    .line 448
    goto/16 :goto_0

    .line 450
    :cond_34
    const v3, -0x7fff8000

    .line 453
    if-ne v1, v3, :cond_35

    .line 455
    const-string v1, "IN_LINE"

    .line 457
    goto :goto_0

    .line 458
    :cond_35
    const/high16 v3, -0x7fff0000

    .line 460
    if-ne v1, v3, :cond_36

    .line 462
    const-string v1, "IN_SPDIF"

    .line 464
    goto :goto_0

    .line 465
    :cond_36
    const/high16 v3, -0x7ffe0000

    .line 467
    if-ne v1, v3, :cond_37

    .line 469
    const-string v1, "IN_BLUETOOTH_A2DP"

    .line 471
    goto :goto_0

    .line 472
    :cond_37
    const/high16 v3, -0x7ffc0000

    .line 474
    if-ne v1, v3, :cond_38

    .line 476
    const-string v1, "IN_LOOPBACK"

    .line 478
    goto :goto_0

    .line 479
    :cond_38
    const/high16 v3, -0x7ff80000

    .line 481
    if-ne v1, v3, :cond_39

    .line 483
    const-string v1, "IN_IP"

    .line 485
    goto :goto_0

    .line 486
    :cond_39
    const/high16 v3, -0x7ff00000

    .line 488
    if-ne v1, v3, :cond_3a

    .line 490
    const-string v1, "IN_BUS"

    .line 492
    goto :goto_0

    .line 493
    :cond_3a
    const/high16 v3, -0x7f000000

    .line 495
    if-ne v1, v3, :cond_3b

    .line 497
    const-string v1, "IN_PROXY"

    .line 499
    goto :goto_0

    .line 500
    :cond_3b
    const/high16 v3, -0x7e000000

    .line 502
    if-ne v1, v3, :cond_3c

    .line 504
    const-string v1, "IN_USB_HEADSET"

    .line 506
    goto :goto_0

    .line 507
    :cond_3c
    const/high16 v3, -0x40000000    # -2.0f

    .line 509
    if-ne v1, v3, :cond_3d

    .line 511
    const-string v1, "IN_DEFAULT"

    .line 513
    goto :goto_0

    .line 514
    :cond_3d
    const v3, -0x3ce00001    # -159.99998f

    .line 517
    if-ne v1, v3, :cond_3e

    .line 519
    const-string v1, "IN_ALL"

    .line 521
    goto :goto_0

    .line 522
    :cond_3e
    if-ne v1, v2, :cond_3f

    .line 524
    const-string v1, "IN_ALL_SCO"

    .line 526
    goto :goto_0

    .line 527
    :cond_3f
    const v2, -0x7dffe800

    .line 530
    if-ne v1, v2, :cond_40

    .line 532
    const-string v1, "IN_ALL_USB"

    .line 534
    goto :goto_0

    .line 535
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    const-string v3, "0x"

    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 545
    move-result-object v1

    .line 546
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, ", .captureRequested = "

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, ", .phrases = "

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, ", .data = "

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 576
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    const-string/jumbo p0, "}"

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    move-result-object p0

    .line 589
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    iget v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 12
    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 14
    const-wide/16 v3, 0x4

    .line 16
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 19
    iget-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 21
    const-wide/16 v5, 0x8

    .line 23
    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 26
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v2

    .line 32
    const-wide/16 v7, 0x18

    .line 34
    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 37
    const-wide/16 v9, 0x1c

    .line 39
    const/4 v11, 0x0

    .line 40
    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 43
    new-instance v12, Landroid/os/HwBlob;

    .line 45
    mul-int/lit8 v13, v2, 0x20

    .line 47
    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 50
    move v13, v11

    .line 51
    :goto_0
    const-wide/16 v14, 0x10

    .line 53
    if-ge v13, v2, :cond_1

    .line 55
    iget-object v11, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v11

    .line 61
    check-cast v11, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 63
    mul-int/lit8 v9, v13, 0x20

    .line 65
    int-to-long v9, v9

    .line 66
    iget v7, v11, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 68
    invoke-virtual {v12, v9, v10, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 71
    add-long v7, v9, v3

    .line 73
    iget v3, v11, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 75
    invoke-virtual {v12, v7, v8, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 78
    add-long v3, v9, v5

    .line 80
    iget v7, v11, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 82
    invoke-virtual {v12, v3, v4, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 85
    iget-object v3, v11, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v3

    .line 91
    add-long/2addr v14, v9

    .line 92
    const-wide/16 v7, 0x18

    .line 94
    add-long v5, v9, v7

    .line 96
    invoke-virtual {v12, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 99
    const-wide/16 v4, 0x1c

    .line 101
    add-long/2addr v9, v4

    .line 102
    const/4 v6, 0x0

    .line 103
    invoke-virtual {v12, v9, v10, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 106
    new-instance v6, Landroid/os/HwBlob;

    .line 108
    mul-int/lit8 v9, v3, 0x8

    .line 110
    invoke-direct {v6, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 113
    const/4 v9, 0x0

    .line 114
    :goto_1
    if-ge v9, v3, :cond_0

    .line 116
    iget-object v10, v11, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v10

    .line 122
    check-cast v10, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    .line 124
    mul-int/lit8 v4, v9, 0x8

    .line 126
    int-to-long v4, v4

    .line 127
    iget v7, v10, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 129
    invoke-virtual {v6, v4, v5, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 132
    const-wide/16 v7, 0x4

    .line 134
    add-long/2addr v4, v7

    .line 135
    iget v10, v10, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    .line 137
    invoke-virtual {v6, v4, v5, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    add-int/lit8 v9, v9, 0x1

    .line 142
    const-wide/16 v4, 0x1c

    .line 144
    const-wide/16 v7, 0x18

    .line 146
    goto :goto_1

    .line 147
    :cond_0
    const-wide/16 v7, 0x4

    .line 149
    invoke-virtual {v12, v14, v15, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 152
    add-int/lit8 v13, v13, 0x1

    .line 154
    move-wide v3, v7

    .line 155
    const-wide/16 v5, 0x8

    .line 157
    const-wide/16 v7, 0x18

    .line 159
    const-wide/16 v9, 0x1c

    .line 161
    const/4 v11, 0x0

    .line 162
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v1, v14, v15, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 166
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 171
    move-result v2

    .line 172
    const-wide/16 v3, 0x28

    .line 174
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 177
    const-wide/16 v3, 0x2c

    .line 179
    const/4 v5, 0x0

    .line 180
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 183
    new-instance v3, Landroid/os/HwBlob;

    .line 185
    invoke-direct {v3, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 188
    move v11, v5

    .line 189
    :goto_2
    if-ge v11, v2, :cond_2

    .line 191
    int-to-long v4, v11

    .line 192
    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Ljava/lang/Byte;

    .line 200
    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    .line 203
    move-result v6

    .line 204
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 207
    add-int/lit8 v11, v11, 0x1

    .line 209
    goto :goto_2

    .line 210
    :cond_2
    const-wide/16 v4, 0x20

    .line 212
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 215
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x30

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    return-void
.end method
