.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->f$1:I

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->f$1:I

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    const-string v3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    array-length v3, v2

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    if-ge v5, v3, :cond_3

    .line 34
    .line 35
    aget-object v6, v2, v5

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v8, 0x1

    .line 42
    if-eq v7, v8, :cond_0

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    :goto_1
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v9, Lcom/android/server/policy/PhoneWindowManagerExt$15;

    .line 64
    .line 65
    invoke-direct {v9, v6}, Landroid/app/BootProgressDialog;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v4}, Landroid/app/BootProgressDialog;->setProgressStyle(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v4}, Landroid/app/BootProgressDialog;->setIndeterminate(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const/16 v11, 0x7e5

    .line 79
    .line 80
    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    const/16 v11, 0x102

    .line 88
    .line 89
    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    const/high16 v11, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-virtual {v10, v11}, Landroid/view/Window;->setDimAmount(F)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v12, "BootProgressDialog_d"

    .line 112
    .line 113
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v10, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_2

    .line 135
    .line 136
    new-instance v11, Landroid/view/DisplayInfo;

    .line 137
    .line 138
    invoke-direct {v11}, Landroid/view/DisplayInfo;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v6, v11}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_2

    .line 150
    .line 151
    iget v6, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 152
    .line 153
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 154
    .line 155
    iget v6, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 156
    .line 157
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    .line 159
    :cond_2
    const/4 v6, 0x5

    .line 160
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 161
    .line 162
    iput v8, v10, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    const/16 v6, 0x64

    .line 172
    .line 173
    invoke-virtual {v9, v6}, Landroid/app/BootProgressDialog;->setMax(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v4}, Landroid/app/BootProgressDialog;->setCancelable(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Landroid/app/BootProgressDialog;->show()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_4

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Landroid/app/ProgressDialog;

    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v4, "%"

    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_4
    return-void

    .line 232
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 233
    .line 234
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;->f$1:I

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 237
    .line 238
    iget-object v8, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 239
    .line 240
    iget v2, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 241
    .line 242
    if-ne v0, v2, :cond_5

    .line 243
    .line 244
    goto/16 :goto_a

    .line 245
    .line 246
    :cond_5
    const-string v2, "KeyCustomizationInfoManager"

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string/jumbo v4, "onUserSwitch oldId="

    .line 251
    .line 252
    .line 253
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget v4, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 257
    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v4, " newId="

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    iput v0, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 277
    .line 278
    const/16 v2, 0x450

    .line 279
    .line 280
    const/4 v9, 0x0

    .line 281
    const/4 v3, 0x4

    .line 282
    const/16 v4, 0x1a

    .line 283
    .line 284
    invoke-virtual {v8, v2, v3, v4, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    if-eqz v5, :cond_6

    .line 289
    .line 290
    new-instance v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 291
    .line 292
    iget v11, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 293
    .line 294
    iget v12, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 295
    .line 296
    iget v13, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 297
    .line 298
    iget v14, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 299
    .line 300
    iget-object v15, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 301
    .line 302
    move-object v10, v6

    .line 303
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 304
    .line 305
    .line 306
    iput-object v6, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_6
    iput-object v9, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 310
    .line 311
    :goto_4
    const/16 v5, 0x8

    .line 312
    .line 313
    invoke-virtual {v8, v2, v5, v4, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    if-eqz v6, :cond_7

    .line 318
    .line 319
    new-instance v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 320
    .line 321
    iget v11, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 322
    .line 323
    iget v12, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 324
    .line 325
    iget v13, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 326
    .line 327
    iget v14, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 328
    .line 329
    iget-object v15, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 330
    .line 331
    move-object v10, v7

    .line 332
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    iput-object v7, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_7
    iput-object v9, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 339
    .line 340
    :goto_5
    iget-object v6, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 341
    .line 342
    monitor-enter v6

    .line 343
    :try_start_0
    sget-object v7, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 344
    .line 345
    array-length v10, v7

    .line 346
    const/4 v11, 0x0

    .line 347
    move v12, v11

    .line 348
    :goto_6
    if-ge v12, v10, :cond_8

    .line 349
    .line 350
    aget v13, v7, v12

    .line 351
    .line 352
    invoke-virtual {v8, v13}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 353
    .line 354
    .line 355
    move-result-object v14

    .line 356
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v13}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    .line 360
    .line 361
    .line 362
    move-result-object v13

    .line 363
    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 364
    .line 365
    .line 366
    add-int/lit8 v12, v12, 0x1

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    goto/16 :goto_b

    .line 371
    .line 372
    :cond_8
    iget-object v7, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 375
    .line 376
    .line 377
    iget-object v7, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 378
    .line 379
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 380
    .line 381
    .line 382
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    const/4 v6, 0x1

    .line 384
    invoke-virtual {v8, v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->init(IZ)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8, v2, v3, v4, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-virtual {v8, v3, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    iget-object v10, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 396
    .line 397
    if-eqz v10, :cond_b

    .line 398
    .line 399
    if-nez v7, :cond_9

    .line 400
    .line 401
    if-eqz v3, :cond_a

    .line 402
    .line 403
    :cond_9
    if-eqz v7, :cond_e

    .line 404
    .line 405
    iget v3, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 406
    .line 407
    if-ne v3, v2, :cond_e

    .line 408
    .line 409
    :cond_a
    new-instance v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 410
    .line 411
    iget-object v7, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 412
    .line 413
    iget v13, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 414
    .line 415
    iget v14, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 416
    .line 417
    iget v15, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 418
    .line 419
    iget v10, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 420
    .line 421
    iget-object v7, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 422
    .line 423
    move-object v12, v3

    .line 424
    move/from16 v16, v10

    .line 425
    .line 426
    move-object/from16 v17, v7

    .line 427
    .line 428
    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8, v3, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_b
    if-nez v7, :cond_c

    .line 436
    .line 437
    if-eqz v3, :cond_d

    .line 438
    .line 439
    :cond_c
    if-eqz v7, :cond_e

    .line 440
    .line 441
    iget v3, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 442
    .line 443
    if-ne v3, v2, :cond_e

    .line 444
    .line 445
    :cond_d
    invoke-virtual {v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v8, v3, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 450
    .line 451
    .line 452
    :cond_e
    :goto_7
    iput-object v9, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 453
    .line 454
    invoke-virtual {v8, v2, v5, v4, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v8, v5, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    iget-object v5, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 463
    .line 464
    if-eqz v5, :cond_11

    .line 465
    .line 466
    if-nez v3, :cond_f

    .line 467
    .line 468
    if-eqz v4, :cond_10

    .line 469
    .line 470
    :cond_f
    if-eqz v3, :cond_15

    .line 471
    .line 472
    iget v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 473
    .line 474
    if-ne v3, v2, :cond_15

    .line 475
    .line 476
    :cond_10
    new-instance v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 477
    .line 478
    iget-object v3, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 479
    .line 480
    iget v13, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 481
    .line 482
    iget v14, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 483
    .line 484
    iget v15, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 485
    .line 486
    iget v4, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 487
    .line 488
    iget-object v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 489
    .line 490
    move-object v12, v2

    .line 491
    move/from16 v16, v4

    .line 492
    .line 493
    move-object/from16 v17, v3

    .line 494
    .line 495
    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8, v2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 499
    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_11
    if-nez v3, :cond_12

    .line 503
    .line 504
    if-eqz v4, :cond_13

    .line 505
    .line 506
    :cond_12
    if-eqz v3, :cond_15

    .line 507
    .line 508
    iget v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 509
    .line 510
    if-ne v3, v2, :cond_15

    .line 511
    .line 512
    :cond_13
    invoke-virtual {v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    if-nez v2, :cond_14

    .line 517
    .line 518
    const/16 v6, 0x1a

    .line 519
    .line 520
    const/4 v7, 0x1

    .line 521
    const/16 v3, 0x450

    .line 522
    .line 523
    const/4 v5, 0x0

    .line 524
    const/16 v4, 0x8

    .line 525
    .line 526
    move-object v2, v8

    .line 527
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    .line 528
    .line 529
    .line 530
    goto :goto_8

    .line 531
    :cond_14
    invoke-virtual {v8, v2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 532
    .line 533
    .line 534
    :cond_15
    :goto_8
    iput-object v9, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 535
    .line 536
    iget-object v2, v8, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 537
    .line 538
    monitor-enter v2

    .line 539
    :try_start_1
    invoke-virtual {v8, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    .line 540
    .line 541
    .line 542
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 543
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    .line 544
    .line 545
    array-length v2, v0

    .line 546
    :goto_9
    if-ge v11, v2, :cond_16

    .line 547
    .line 548
    aget v3, v0, v11

    .line 549
    .line 550
    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    .line 551
    .line 552
    .line 553
    add-int/lit8 v11, v11, 0x1

    .line 554
    .line 555
    goto :goto_9

    .line 556
    :cond_16
    :goto_a
    return-void

    .line 557
    :catchall_1
    move-exception v0

    .line 558
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    throw v0

    .line 560
    :goto_b
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    throw v0

    .line 562
    nop

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
