.class public abstract Lcom/android/server/accessibility/SamsungWindowDumpUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    aget-object v3, p1, v2

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static printNode(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityNodeInfo;IZZ)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 6
    return-void

    .line 7
    :cond_0
    if-eqz p4, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 18
    return-void

    .line 19
    :cond_1
    const-string v0, ""

    .line 21
    const/4 v1, -0x1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz p3, :cond_1b

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 33
    move-result-object v4

    .line 34
    const-string v5, ", "

    .line 36
    if-eqz v4, :cond_2

    .line 38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    .line 50
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 53
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_3

    .line 68
    const-string v4, "T:"

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_4

    .line 89
    const-string v4, "Err:"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    .line 107
    move-result v4

    .line 108
    if-eq v4, v1, :cond_5

    .line 110
    const-string v4, "MTL:"

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    .line 118
    move-result v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStateDescription()Ljava/lang/CharSequence;

    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 131
    const-string v4, "SD:"

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStateDescription()Ljava/lang/CharSequence;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 149
    move-result-object v4

    .line 150
    if-eqz v4, :cond_7

    .line 152
    const-string v4, "CD:"

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTooltipText()Ljava/lang/CharSequence;

    .line 170
    move-result-object v4

    .line 171
    if-eqz v4, :cond_8

    .line 173
    const-string v4, "TTT:"

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTooltipText()Ljava/lang/CharSequence;

    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    if-eqz v4, :cond_9

    .line 194
    const-string v4, "VID:"

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_a

    .line 215
    const-string v4, "V, "

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_b

    .line 226
    const-string v4, "AFd, "

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_c

    .line 237
    const-string v4, "E, "

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_d

    .line 248
    const-string v4, "Ck, "

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_e

    .line 259
    const-string v4, "Ckd, "

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_f

    .line 270
    const-string v4, "F, "

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 278
    move-result v4

    .line 279
    if-eqz v4, :cond_10

    .line 281
    const-string v4, "Fd, "

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_11

    .line 292
    const-string v4, "Sd, "

    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_12

    .line 303
    const-string v4, "C, "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_12
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_13

    .line 314
    const-string v4, "LC, "

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    .line 322
    move-result v4

    .line 323
    if-eqz v4, :cond_14

    .line 325
    const-string v4, "CC, "

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_15

    .line 336
    const-string v4, "PWD, "

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_15
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_16

    .line 347
    const-string v4, "S, "

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_16
    const-string v4, "Actions={"

    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    .line 360
    move-result-object v4

    .line 361
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 364
    move-result-object v4

    .line 365
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    move-result v6

    .line 369
    if-eqz v6, :cond_1a

    .line 371
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    move-result-object v6

    .line 375
    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 377
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 380
    move-result v7

    .line 381
    if-eq v7, v2, :cond_18

    .line 383
    const/4 v8, 0x2

    .line 384
    if-eq v7, v8, :cond_17

    .line 386
    sparse-switch v7, :sswitch_data_0

    .line 389
    move-object v7, v0

    .line 390
    goto :goto_1

    .line 391
    :sswitch_0
    const-string v7, "ST"

    .line 393
    goto :goto_1

    .line 394
    :sswitch_1
    const-string v7, "DIS"

    .line 396
    goto :goto_1

    .line 397
    :sswitch_2
    const-string v7, "CLP"

    .line 399
    goto :goto_1

    .line 400
    :sswitch_3
    const-string v7, "AEXP"

    .line 402
    goto :goto_1

    .line 403
    :sswitch_4
    const-string v7, "SS"

    .line 405
    goto :goto_1

    .line 406
    :sswitch_5
    const-string v7, "CT"

    .line 408
    goto :goto_1

    .line 409
    :sswitch_6
    const-string v7, "PA"

    .line 411
    goto :goto_1

    .line 412
    :sswitch_7
    const-string v7, "CP"

    .line 414
    goto :goto_1

    .line 415
    :sswitch_8
    const-string v7, "SB"

    .line 417
    goto :goto_1

    .line 418
    :sswitch_9
    const-string v7, "SF"

    .line 420
    goto :goto_1

    .line 421
    :sswitch_a
    const-string v7, "PHE"

    .line 423
    goto :goto_1

    .line 424
    :sswitch_b
    const-string v7, "NHE"

    .line 426
    goto :goto_1

    .line 427
    :sswitch_c
    const-string v7, "PMG"

    .line 429
    goto :goto_1

    .line 430
    :sswitch_d
    const-string v7, "NMG"

    .line 432
    goto :goto_1

    .line 433
    :sswitch_e
    const-string v7, "CAF"

    .line 435
    goto :goto_1

    .line 436
    :sswitch_f
    const-string v7, "AF"

    .line 438
    goto :goto_1

    .line 439
    :sswitch_10
    const-string v7, "LC"

    .line 441
    goto :goto_1

    .line 442
    :sswitch_11
    const-string v7, "C"

    .line 444
    goto :goto_1

    .line 445
    :sswitch_12
    const-string v7, "CS"

    .line 447
    goto :goto_1

    .line 448
    :sswitch_13
    const-string v7, "S"

    .line 450
    goto :goto_1

    .line 451
    :cond_17
    const-string v7, "CF"

    .line 453
    goto :goto_1

    .line 454
    :cond_18
    const-string v7, "F"

    .line 456
    :goto_1
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 459
    move-result-object v8

    .line 460
    if-eqz v8, :cond_19

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    .line 464
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const/16 v7, 0x28

    .line 472
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 478
    move-result-object v6

    .line 479
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    const/16 v6, 0x29

    .line 484
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    move-result-object v7

    .line 491
    :cond_19
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    goto/16 :goto_0

    .line 499
    :cond_1a
    const-string/jumbo v4, "}"

    .line 502
    invoke-static {v3, v4, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 505
    goto :goto_2

    .line 506
    :cond_1b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    .line 509
    move-result-object v3

    .line 510
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    :goto_2
    if-ge v1, p2, :cond_1c

    .line 515
    const-string v3, "  "

    .line 517
    invoke-static {v0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    move-result-object v0

    .line 521
    add-int/lit8 v1, v1, 0x1

    .line 523
    goto :goto_2

    .line 524
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 527
    move-result v1

    .line 528
    const/4 v3, 0x0

    .line 529
    :goto_3
    if-ge v3, v1, :cond_1d

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    .line 533
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v5, "["

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    const-string v5, "] "

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    move-result-object v4

    .line 556
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 559
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 562
    move-result-object v4

    .line 563
    add-int/lit8 v5, p2, 0x1

    .line 565
    invoke-static {p0, v4, v5, p3, p4}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNode(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityNodeInfo;IZZ)V

    .line 568
    add-int/lit8 v3, v3, 0x1

    .line 570
    goto :goto_3

    .line 571
    :cond_1d
    return-void

    .line 572
    nop

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x20 -> :sswitch_10
        0x40 -> :sswitch_f
        0x80 -> :sswitch_e
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
        0x400 -> :sswitch_b
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_8
        0x4000 -> :sswitch_7
        0x8000 -> :sswitch_6
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_3
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static printNodeTreeOfWindow(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityWindowInfo;ZZ)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "<window id:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eq v3, v4, :cond_6

    .line 65
    const/4 v4, 0x2

    .line 66
    if-eq v3, v4, :cond_5

    .line 68
    const/4 v4, 0x3

    .line 69
    if-eq v3, v4, :cond_4

    .line 71
    const/4 v4, 0x4

    .line 72
    if-eq v3, v4, :cond_3

    .line 74
    const/4 v4, 0x5

    .line 75
    if-eq v3, v4, :cond_2

    .line 77
    const-string v3, "TYPE_Unknown"

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string v3, "TYPE_SPLIT_SCREEN_DIVIDER"

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string v3, "TYPE_ACCESSIBILITY_OVERLAY"

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const-string v3, "TYPE_SYSTEM"

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const-string v3, "TYPE_INPUT_METHOD"

    .line 91
    goto :goto_0

    .line 92
    :cond_6
    const-string v3, "TYPE_APPLICATION"

    .line 94
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_7

    .line 106
    const-string v1, "Active, "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_8

    .line 117
    const-string p1, "Focused, "

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_8
    const/16 p1, 0x3e

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string p1, "[root] "

    .line 136
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 139
    const/4 p1, 0x0

    .line 140
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNode(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityNodeInfo;IZZ)V

    .line 143
    return-void
.end method
