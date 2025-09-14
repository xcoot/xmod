.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 6
    packed-switch v3, :pswitch_data_0

    .line 9
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 11
    check-cast v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    .line 13
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 15
    check-cast v2, Ljava/util/Set;

    .line 17
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 19
    check-cast v0, Landroid/util/IntArray;

    .line 21
    move-object/from16 v3, p1

    .line 23
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 25
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 29
    iget v3, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 31
    invoke-virtual {v1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 55
    :cond_0
    return-void

    .line 56
    :pswitch_0
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 58
    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    .line 60
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 62
    check-cast v4, Landroid/util/SparseArray;

    .line 64
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 66
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 68
    move-object/from16 v5, p1

    .line 70
    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object v6, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 77
    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 79
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 85
    if-eqz v6, :cond_38

    .line 87
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 90
    move-result-object v4

    .line 91
    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 93
    and-int/lit16 v5, v5, 0x80

    .line 95
    const/4 v7, 0x0

    .line 96
    if-eqz v5, :cond_1

    .line 98
    move v5, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v5, v7

    .line 101
    :goto_0
    iget-object v8, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 103
    invoke-virtual {v8, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 106
    move-result-object v9

    .line 107
    iget-object v10, v3, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 109
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 114
    const/high16 v11, 0x10000000

    .line 116
    and-int/2addr v10, v11

    .line 117
    if-nez v10, :cond_2

    .line 119
    iget-object v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 121
    const-string/jumbo v13, "com.google.android.gms"

    .line 124
    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v10

    .line 128
    if-nez v10, :cond_2

    .line 130
    iget-object v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 132
    const-string/jumbo v13, "com.samsung.android.smartmirroring"

    .line 135
    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    move-result v10

    .line 139
    if-eqz v10, :cond_5

    .line 141
    iget-object v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 143
    const-string v13, "TestVirtualDisplay"

    .line 145
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v10

    .line 149
    if-eqz v10, :cond_5

    .line 151
    :cond_2
    if-nez v5, :cond_5

    .line 153
    if-eqz v9, :cond_5

    .line 155
    iget-boolean v5, v9, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 157
    if-nez v5, :cond_5

    .line 159
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 161
    if-eqz v5, :cond_3

    .line 163
    iget-boolean v8, v5, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 165
    if-eqz v8, :cond_3

    .line 167
    move-object v8, v5

    .line 168
    goto :goto_1

    .line 169
    :cond_3
    const/4 v8, 0x0

    .line 170
    :goto_1
    if-eqz v8, :cond_5

    .line 172
    if-eqz v5, :cond_4

    .line 174
    iget-boolean v8, v5, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 176
    if-eqz v8, :cond_4

    .line 178
    move-object v9, v5

    .line 179
    goto :goto_2

    .line 180
    :cond_4
    const/4 v9, 0x0

    .line 181
    :cond_5
    :goto_2
    const-string v5, "DisplayManagerService"

    .line 183
    if-eqz v9, :cond_6

    .line 185
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 188
    move-result-object v8

    .line 189
    iget-object v8, v8, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 191
    if-nez v8, :cond_7

    .line 193
    iget v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 195
    and-int/2addr v8, v11

    .line 196
    if-eqz v8, :cond_7

    .line 198
    :cond_6
    move-object v3, v0

    .line 199
    move-object v2, v5

    .line 200
    goto/16 :goto_22

    .line 202
    :cond_7
    iget v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 204
    if-ne v8, v2, :cond_8

    .line 206
    move v8, v2

    .line 207
    goto :goto_3

    .line 208
    :cond_8
    move v8, v7

    .line 209
    :goto_3
    iget v10, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 211
    const/4 v13, 0x4

    .line 212
    if-ne v10, v13, :cond_9

    .line 214
    move v8, v7

    .line 215
    :cond_9
    if-eqz v8, :cond_a

    .line 217
    const/4 v8, -0x1

    .line 218
    goto :goto_4

    .line 219
    :cond_a
    iget v8, v9, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 221
    :goto_4
    iget v14, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 223
    const-string v15, "DisplayDevice"

    .line 225
    const-string v2, " for "

    .line 227
    iget-object v13, v6, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 229
    if-eq v14, v8, :cond_b

    .line 231
    iput v8, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 233
    iget-object v14, v6, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 235
    invoke-virtual {v0, v14, v8}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 238
    new-instance v14, Ljava/lang/StringBuilder;

    .line 240
    const-string v12, "["

    .line 242
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v12, "] Layerstack set to "

    .line 250
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object v8

    .line 266
    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_b
    iget-boolean v8, v9, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 271
    if-eqz v8, :cond_c

    .line 273
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 276
    move-result-object v8

    .line 277
    iget v8, v8, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 279
    if-eqz v8, :cond_c

    .line 281
    const/4 v8, 0x1

    .line 282
    goto :goto_5

    .line 283
    :cond_c
    move v8, v7

    .line 284
    :goto_5
    iget v12, v6, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 286
    if-eq v12, v8, :cond_d

    .line 288
    iput v8, v6, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 290
    iget-object v12, v6, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 292
    invoke-virtual {v0, v12, v8}, Landroid/view/SurfaceControl$Transaction;->setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 295
    :cond_d
    iget-object v8, v9, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 297
    if-ne v6, v8, :cond_e

    .line 299
    iget-object v8, v9, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 301
    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 304
    iget v8, v9, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 306
    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 309
    goto :goto_6

    .line 310
    :cond_e
    new-instance v8, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 312
    invoke-direct {v8}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    .line 315
    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 318
    invoke-virtual {v6, v7}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 321
    :goto_6
    iget-boolean v8, v9, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 323
    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 326
    iget-boolean v8, v9, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 328
    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 331
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 334
    move-result-object v8

    .line 335
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 338
    move-result-object v12

    .line 339
    iget-object v14, v9, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 341
    iget v11, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 343
    iget v1, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 345
    invoke-virtual {v14, v7, v7, v11, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 348
    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 350
    const/4 v11, 0x2

    .line 351
    and-int/lit8 v14, v1, 0x2

    .line 353
    if-nez v14, :cond_10

    .line 355
    iget-boolean v11, v9, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    .line 357
    if-eqz v11, :cond_f

    .line 359
    goto :goto_7

    .line 360
    :cond_f
    move v11, v7

    .line 361
    goto :goto_8

    .line 362
    :cond_10
    :goto_7
    iget v11, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 364
    :goto_8
    iget v14, v8, Landroid/view/DisplayInfo;->flags:I

    .line 366
    const/high16 v17, 0x2000000

    .line 368
    and-int v14, v14, v17

    .line 370
    if-nez v14, :cond_11

    .line 372
    and-int v18, v1, v17

    .line 374
    if-eqz v18, :cond_12

    .line 376
    :cond_11
    move v11, v7

    .line 377
    :cond_12
    iget v7, v12, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 379
    const/high16 v16, 0x10000000

    .line 381
    and-int v16, v1, v16

    .line 383
    if-eqz v16, :cond_14

    .line 385
    if-nez v14, :cond_13

    .line 387
    const/high16 v14, 0x4000000

    .line 389
    and-int/2addr v1, v14

    .line 390
    if-nez v1, :cond_13

    .line 392
    goto :goto_9

    .line 393
    :cond_13
    invoke-static {v6}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 396
    const/4 v0, 0x0

    .line 397
    throw v0

    .line 398
    :cond_14
    :goto_9
    add-int/2addr v11, v7

    .line 399
    const/4 v1, 0x4

    .line 400
    rem-int/2addr v11, v1

    .line 401
    const/4 v1, 0x3

    .line 402
    const/4 v7, 0x1

    .line 403
    if-eq v11, v7, :cond_16

    .line 405
    if-ne v11, v1, :cond_15

    .line 407
    goto :goto_a

    .line 408
    :cond_15
    const/4 v7, 0x0

    .line 409
    goto :goto_b

    .line 410
    :cond_16
    :goto_a
    const/4 v7, 0x1

    .line 411
    :goto_b
    if-eqz v7, :cond_17

    .line 413
    iget v14, v12, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 415
    goto :goto_c

    .line 416
    :cond_17
    iget v14, v12, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 418
    :goto_c
    if-eqz v7, :cond_18

    .line 420
    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 422
    :goto_d
    move/from16 v16, v10

    .line 424
    goto :goto_e

    .line 425
    :cond_18
    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 427
    goto :goto_d

    .line 428
    :goto_e
    invoke-static {v12}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    .line 431
    move-result-object v10

    .line 432
    if-eqz v11, :cond_1c

    .line 434
    move-object/from16 v19, v3

    .line 436
    const/4 v3, 0x1

    .line 437
    if-eq v11, v3, :cond_1b

    .line 439
    const/4 v3, 0x2

    .line 440
    if-eq v11, v3, :cond_1a

    .line 442
    const/4 v3, 0x3

    .line 443
    if-ne v11, v3, :cond_19

    .line 445
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 447
    move-object/from16 v20, v5

    .line 449
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 451
    move-object/from16 v21, v4

    .line 453
    iget v4, v10, Landroid/graphics/Rect;->top:I

    .line 455
    move-object/from16 v22, v0

    .line 457
    iget v0, v10, Landroid/graphics/Rect;->right:I

    .line 459
    invoke-virtual {v10, v3, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    goto :goto_f

    .line 463
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 465
    const-string v1, "Unknown rotation: "

    .line 467
    invoke-static {v11, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 470
    move-result-object v1

    .line 471
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 474
    throw v0

    .line 475
    :cond_1a
    move-object/from16 v22, v0

    .line 477
    move-object/from16 v21, v4

    .line 479
    move-object/from16 v20, v5

    .line 481
    iget v0, v10, Landroid/graphics/Rect;->right:I

    .line 483
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 485
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 487
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 489
    invoke-virtual {v10, v0, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 492
    goto :goto_f

    .line 493
    :cond_1b
    move-object/from16 v22, v0

    .line 495
    move-object/from16 v21, v4

    .line 497
    move-object/from16 v20, v5

    .line 499
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 501
    iget v3, v10, Landroid/graphics/Rect;->right:I

    .line 503
    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 505
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 507
    invoke-virtual {v10, v0, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 510
    goto :goto_f

    .line 511
    :cond_1c
    move-object/from16 v22, v0

    .line 513
    move-object/from16 v19, v3

    .line 515
    move-object/from16 v21, v4

    .line 517
    move-object/from16 v20, v5

    .line 519
    :goto_f
    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 521
    iget v3, v10, Landroid/graphics/Rect;->right:I

    .line 523
    add-int/2addr v0, v3

    .line 524
    sub-int/2addr v14, v0

    .line 525
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 527
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 529
    add-int/2addr v0, v3

    .line 530
    sub-int/2addr v1, v0

    .line 531
    iget v0, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 533
    iget v3, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 535
    iget-boolean v4, v9, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 537
    if-eqz v4, :cond_20

    .line 539
    iget v4, v12, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 541
    const/4 v5, 0x2

    .line 542
    if-ne v4, v5, :cond_20

    .line 544
    iget v4, v12, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 546
    const/4 v5, 0x0

    .line 547
    cmpl-float v23, v4, v5

    .line 549
    if-lez v23, :cond_20

    .line 551
    move-object/from16 v23, v13

    .line 553
    iget v13, v12, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 555
    cmpl-float v5, v13, v5

    .line 557
    if-lez v5, :cond_21

    .line 559
    const v5, 0x3f833333    # 1.025f

    .line 562
    mul-float v24, v13, v5

    .line 564
    cmpl-float v24, v4, v24

    .line 566
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    .line 568
    if-lez v24, :cond_1e

    .line 570
    div-float/2addr v13, v4

    .line 571
    if-eqz v7, :cond_1d

    .line 573
    int-to-float v0, v0

    .line 574
    mul-float/2addr v0, v13

    .line 575
    goto :goto_11

    .line 576
    :cond_1d
    int-to-float v3, v3

    .line 577
    mul-float/2addr v3, v13

    .line 578
    goto :goto_10

    .line 579
    :cond_1e
    mul-float/2addr v5, v4

    .line 580
    cmpg-float v5, v5, v13

    .line 582
    if-gez v5, :cond_21

    .line 584
    div-float/2addr v4, v13

    .line 585
    if-eqz v7, :cond_1f

    .line 587
    int-to-float v3, v3

    .line 588
    mul-float/2addr v3, v4

    .line 589
    :goto_10
    float-to-double v3, v3

    .line 590
    add-double v3, v3, v25

    .line 592
    double-to-int v3, v3

    .line 593
    goto :goto_12

    .line 594
    :cond_1f
    int-to-float v0, v0

    .line 595
    mul-float/2addr v0, v4

    .line 596
    :goto_11
    float-to-double v4, v0

    .line 597
    add-double v4, v4, v25

    .line 599
    double-to-int v0, v4

    .line 600
    goto :goto_12

    .line 601
    :cond_20
    move-object/from16 v23, v13

    .line 603
    :cond_21
    :goto_12
    iget v4, v8, Landroid/view/DisplayInfo;->flags:I

    .line 605
    const/high16 v5, 0x40000000    # 2.0f

    .line 607
    and-int/2addr v4, v5

    .line 608
    if-nez v4, :cond_24

    .line 610
    iget-boolean v4, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 612
    if-eqz v4, :cond_22

    .line 614
    goto :goto_13

    .line 615
    :cond_22
    mul-int v4, v14, v3

    .line 617
    mul-int v5, v1, v0

    .line 619
    if-ge v4, v5, :cond_23

    .line 621
    div-int v3, v4, v0

    .line 623
    move v0, v14

    .line 624
    goto :goto_13

    .line 625
    :cond_23
    div-int v0, v5, v3

    .line 627
    move v3, v1

    .line 628
    :cond_24
    :goto_13
    sub-int/2addr v1, v3

    .line 629
    const/4 v4, 0x2

    .line 630
    div-int/2addr v1, v4

    .line 631
    sub-int/2addr v14, v0

    .line 632
    div-int/2addr v14, v4

    .line 633
    iget-object v4, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 635
    add-int/2addr v0, v14

    .line 636
    add-int/2addr v3, v1

    .line 637
    invoke-virtual {v4, v14, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 640
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 642
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 644
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 646
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 649
    if-nez v11, :cond_25

    .line 651
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 653
    iget v1, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 655
    iget v3, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 657
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 660
    goto :goto_14

    .line 661
    :cond_25
    const/4 v0, 0x1

    .line 662
    if-ne v11, v0, :cond_26

    .line 664
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 666
    iget v1, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 668
    iget v3, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 670
    neg-int v3, v3

    .line 671
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 674
    goto :goto_14

    .line 675
    :cond_26
    const/4 v0, 0x2

    .line 676
    if-ne v11, v0, :cond_27

    .line 678
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 680
    iget v1, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 682
    neg-int v1, v1

    .line 683
    iget v3, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 685
    neg-int v3, v3

    .line 686
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 689
    goto :goto_14

    .line 690
    :cond_27
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 692
    iget v1, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 694
    neg-int v1, v1

    .line 695
    iget v3, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 697
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 700
    :goto_14
    iget v0, v12, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 702
    and-int v0, v0, v17

    .line 704
    if-eqz v0, :cond_28

    .line 706
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 708
    iget v1, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 710
    iget v3, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 712
    const/4 v4, 0x0

    .line 713
    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 716
    goto :goto_15

    .line 717
    :cond_28
    const/4 v4, 0x0

    .line 718
    :goto_15
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 720
    iget-object v1, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 722
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 724
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 726
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 729
    iget-object v0, v9, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 731
    iget-object v1, v9, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 733
    iget v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 735
    if-ne v3, v11, :cond_2a

    .line 737
    iget-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 739
    if-eqz v3, :cond_2a

    .line 741
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 744
    move-result v3

    .line 745
    if-eqz v3, :cond_2a

    .line 747
    iget-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 749
    if-eqz v3, :cond_2a

    .line 751
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 754
    move-result v3

    .line 755
    if-nez v3, :cond_29

    .line 757
    goto :goto_16

    .line 758
    :cond_29
    move-object/from16 v3, v22

    .line 760
    goto :goto_17

    .line 761
    :cond_2a
    :goto_16
    iput v11, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 763
    iget-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 765
    if-nez v3, :cond_2b

    .line 767
    new-instance v3, Landroid/graphics/Rect;

    .line 769
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 772
    iput-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 774
    :cond_2b
    iget-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 776
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 779
    iget-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 781
    if-nez v3, :cond_2c

    .line 783
    new-instance v3, Landroid/graphics/Rect;

    .line 785
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 788
    iput-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 790
    :cond_2c
    iget-object v3, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 792
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    .line 797
    const-string/jumbo v5, "setProjectionLocked, orientation="

    .line 800
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    const-string v5, ", layerStackRect="

    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 814
    const-string v5, ", displayRect="

    .line 816
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    move-object/from16 v2, v23

    .line 827
    invoke-static {v3, v2, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v2, v6, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 832
    move-object/from16 v3, v22

    .line 834
    invoke-virtual {v3, v2, v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 837
    :goto_17
    invoke-static/range {v21 .. v21}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 844
    move-result v1

    .line 845
    if-eqz v1, :cond_37

    .line 847
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 850
    move-result-object v0

    .line 851
    check-cast v0, Ljava/lang/Integer;

    .line 853
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 856
    move-result v0

    .line 857
    move-object/from16 v1, v21

    .line 859
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 861
    const/4 v5, 0x1

    .line 862
    if-eq v0, v5, :cond_2d

    .line 864
    const/4 v5, 0x2

    .line 865
    if-eq v0, v5, :cond_2d

    .line 867
    const/4 v5, 0x3

    .line 868
    if-eq v0, v5, :cond_2d

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    .line 872
    const-string v5, "Cannot call getViewportByTypeLocked for type "

    .line 874
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-static {v0}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    .line 880
    move-result-object v0

    .line 881
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    move-result-object v0

    .line 888
    sget v2, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 890
    move-object/from16 v2, v20

    .line 892
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v0, 0x0

    .line 896
    goto :goto_19

    .line 897
    :cond_2d
    move-object/from16 v5, v19

    .line 899
    iget-object v7, v5, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 901
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 904
    move-result v7

    .line 905
    move v8, v4

    .line 906
    :goto_18
    if-ge v8, v7, :cond_2f

    .line 908
    iget-object v9, v5, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 910
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 913
    move-result-object v9

    .line 914
    check-cast v9, Landroid/hardware/display/DisplayViewport;

    .line 916
    iget v10, v9, Landroid/hardware/display/DisplayViewport;->type:I

    .line 918
    if-ne v10, v0, :cond_2e

    .line 920
    iget-object v10, v9, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 922
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 925
    move-result v10

    .line 926
    if-eqz v10, :cond_2e

    .line 928
    move-object v0, v9

    .line 929
    goto :goto_19

    .line 930
    :cond_2e
    const/4 v9, 0x1

    .line 931
    add-int/2addr v8, v9

    .line 932
    goto :goto_18

    .line 933
    :cond_2f
    new-instance v7, Landroid/hardware/display/DisplayViewport;

    .line 935
    invoke-direct {v7}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 938
    iput v0, v7, Landroid/hardware/display/DisplayViewport;->type:I

    .line 940
    iput-object v2, v7, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 942
    iget-object v0, v5, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 944
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    move-object v0, v7

    .line 948
    :goto_19
    iget v2, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 950
    iput v2, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 952
    iget-object v2, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 954
    if-eqz v2, :cond_30

    .line 956
    iget-object v5, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 958
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 961
    goto :goto_1a

    .line 962
    :cond_30
    iget-object v2, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 964
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 967
    :goto_1a
    iget-object v2, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 969
    if-eqz v2, :cond_31

    .line 971
    iget-object v5, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 973
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 976
    goto :goto_1b

    .line 977
    :cond_31
    iget-object v2, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 979
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 982
    :goto_1b
    iget v2, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 984
    const/4 v5, 0x1

    .line 985
    if-eq v2, v5, :cond_33

    .line 987
    const/4 v5, 0x3

    .line 988
    if-ne v2, v5, :cond_32

    .line 990
    goto :goto_1c

    .line 991
    :cond_32
    move v7, v4

    .line 992
    goto :goto_1d

    .line 993
    :cond_33
    :goto_1c
    const/4 v7, 0x1

    .line 994
    :goto_1d
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 997
    move-result-object v2

    .line 998
    if-eqz v7, :cond_34

    .line 1000
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 1002
    goto :goto_1e

    .line 1003
    :cond_34
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 1005
    :goto_1e
    iput v4, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 1007
    if-eqz v7, :cond_35

    .line 1009
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 1011
    goto :goto_1f

    .line 1012
    :cond_35
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 1014
    :goto_1f
    iput v4, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 1016
    iget-object v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1018
    iput-object v4, v0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 1020
    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 1022
    instance-of v4, v2, Landroid/view/DisplayAddress$Physical;

    .line 1024
    if-eqz v4, :cond_36

    .line 1026
    check-cast v2, Landroid/view/DisplayAddress$Physical;

    .line 1028
    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    .line 1031
    move-result v2

    .line 1032
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1035
    move-result-object v2

    .line 1036
    iput-object v2, v0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    .line 1038
    :goto_20
    const/4 v2, 0x1

    .line 1039
    goto :goto_21

    .line 1040
    :cond_36
    const/4 v2, 0x0

    .line 1041
    iput-object v2, v0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    .line 1043
    goto :goto_20

    .line 1044
    :goto_21
    iput-boolean v2, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1046
    move/from16 v2, v16

    .line 1048
    iput v2, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 1050
    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 1052
    invoke-static {v1}, Landroid/view/Display;->isActiveState(I)Z

    .line 1055
    move-result v1

    .line 1056
    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 1058
    goto :goto_23

    .line 1059
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1061
    const-string v1, "Missing logical display to use for physical display device: "

    .line 1063
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 1069
    move-result-object v1

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1076
    move-result-object v0

    .line 1077
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_37
    :goto_23
    invoke-virtual {v6, v3}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 1083
    :cond_38
    return-void

    .line 1084
    nop

    .line 1085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
