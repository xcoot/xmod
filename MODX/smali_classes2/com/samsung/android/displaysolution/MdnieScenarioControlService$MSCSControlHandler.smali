.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    .line 6
    .line 7
    const/16 v7, 0xa

    .line 8
    .line 9
    const/16 v8, 0x9

    .line 10
    .line 11
    const-string v9, " mHighDynamicRangeEnabled : "

    .line 12
    .line 13
    const-string v10, "VIDEO"

    .line 14
    .line 15
    const-string v11, "1"

    .line 16
    .line 17
    const/16 v12, 0xf

    .line 18
    .line 19
    const/4 v14, 0x3

    .line 20
    const/4 v15, 0x6

    .line 21
    const-string v13, "mAclOffEnabled : "

    .line 22
    .line 23
    const-string v2, "MdnieScenarioControlService"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    move-object/from16 v5, p0

    .line 27
    .line 28
    iget-object v5, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    :pswitch_0
    goto/16 :goto_32

    .line 35
    .line 36
    :pswitch_1
    :try_start_0
    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mwriteVideoEnhancerListInDataBase2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_32

    .line 40
    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object v1, v0

    .line 43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    move v0, v4

    .line 47
    :goto_0
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    if-ge v0, v2, :cond_0

    .line 51
    .line 52
    aget-object v1, v1, v0

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :goto_1
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 61
    .line 62
    array-length v1, v0

    .line 63
    if-ge v4, v1, :cond_49

    .line 64
    .line 65
    aget-object v0, v0, v4

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$manti_glare_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_32

    .line 77
    .line 78
    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const-string v3, ","

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :try_start_2
    array-length v1, v0

    .line 111
    const/16 v6, 0xc

    .line 112
    .line 113
    if-ne v1, v6, :cond_2

    .line 114
    .line 115
    move v6, v4

    .line 116
    move v1, v14

    .line 117
    :goto_2
    if-ge v1, v15, :cond_1

    .line 118
    .line 119
    aget-object v7, v0, v1

    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    add-int/2addr v6, v7

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_1
    move-exception v0

    .line 130
    goto :goto_5

    .line 131
    :catch_2
    move-exception v0

    .line 132
    goto :goto_3

    .line 133
    :cond_1
    if-lez v6, :cond_2

    .line 134
    .line 135
    div-int/lit8 v4, v6, 0x3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v6, "NumberFormatException : "

    .line 144
    .line 145
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_4
    move v13, v4

    .line 159
    goto :goto_6

    .line 160
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_3
    const/4 v13, -0x1

    .line 165
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "currentOpr : "

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ", mQuickPanelState : "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 201
    .line 202
    if-eqz v0, :cond_49

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget v2, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_32

    .line 236
    .line 237
    :pswitch_4
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_32

    .line 241
    .line 242
    :pswitch_5
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_32

    .line 246
    .line 247
    :pswitch_6
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    const-string v1, "activity"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Landroid/app/ActivityManager;

    .line 256
    .line 257
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v1, "mActivityManager : "

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    const-string v1, "mDNIe"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 287
    .line 288
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 289
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string/jumbo v1, "mMdnieManager : "

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    const-string v1, "input"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 319
    .line 320
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 321
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v1, "mInputManager : "

    .line 325
    .line 326
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    const-string v1, "DisplaySolution"

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 350
    .line 351
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 352
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string/jumbo v1, "mSemDisplaySolutionManager : "

    .line 356
    .line 357
    .line 358
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 374
    .line 375
    const-string v1, "display"

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 382
    .line 383
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 384
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v1, "mDisplayManager : "

    .line 388
    .line 389
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 405
    .line 406
    const-string v1, "display_aiqe"

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 413
    .line 414
    iput-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 415
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v1, "mDisplayAiqeManager : "

    .line 419
    .line 420
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 436
    .line 437
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 438
    .line 439
    if-eqz v0, :cond_6

    .line 440
    .line 441
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 442
    .line 443
    if-eqz v0, :cond_6

    .line 444
    .line 445
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 446
    .line 447
    if-eqz v0, :cond_6

    .line 448
    .line 449
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 450
    .line 451
    if-eqz v0, :cond_6

    .line 452
    .line 453
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 454
    .line 455
    if-eqz v0, :cond_6

    .line 456
    .line 457
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 458
    .line 459
    if-nez v0, :cond_4

    .line 460
    .line 461
    goto :goto_8

    .line 462
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 467
    .line 468
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 469
    .line 470
    .line 471
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 472
    .line 473
    if-eqz v0, :cond_5

    .line 474
    .line 475
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;

    .line 476
    .line 477
    const-wide/16 v7, 0x8

    .line 478
    .line 479
    invoke-virtual {v0, v3, v1, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 480
    .line 481
    .line 482
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 483
    .line 484
    .line 485
    goto :goto_7

    .line 486
    :catch_3
    const-string v0, "failed to registerProcessObserver"

    .line 487
    .line 488
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    :goto_7
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 492
    .line 493
    const-string v0, "Success to register all of the services system."

    .line 494
    .line 495
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    goto/16 :goto_32

    .line 499
    .line 500
    :cond_6
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 501
    .line 502
    .line 503
    move-result-wide v3

    .line 504
    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    .line 506
    .line 507
    iget v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 508
    .line 509
    int-to-long v5, v0

    .line 510
    add-long/2addr v3, v5

    .line 511
    invoke-virtual {v1, v12, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 512
    .line 513
    .line 514
    const-string v0, "Failure to register all of the services system."

    .line 515
    .line 516
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    goto/16 :goto_32

    .line 520
    .line 521
    :pswitch_7
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 529
    .line 530
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 531
    .line 532
    .line 533
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 534
    .line 535
    if-eqz v0, :cond_49

    .line 536
    .line 537
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_49

    .line 542
    .line 543
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-nez v0, :cond_49

    .line 550
    .line 551
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 552
    .line 553
    if-nez v0, :cond_49

    .line 554
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 569
    .line 570
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 571
    .line 572
    .line 573
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 574
    .line 575
    if-eqz v0, :cond_7

    .line 576
    .line 577
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 578
    .line 579
    if-nez v0, :cond_7

    .line 580
    .line 581
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 582
    .line 583
    .line 584
    :cond_7
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 588
    .line 589
    .line 590
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 600
    .line 601
    .line 602
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 603
    .line 604
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 605
    .line 606
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 607
    .line 608
    const-string/jumbo v0, "setVideoMode from SVideoOption function"

    .line 609
    .line 610
    .line 611
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    goto/16 :goto_32

    .line 615
    .line 616
    :pswitch_8
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 624
    .line 625
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 626
    .line 627
    .line 628
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 629
    .line 630
    if-eqz v0, :cond_49

    .line 631
    .line 632
    const-string v1, "9"

    .line 633
    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_49

    .line 639
    .line 640
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 641
    .line 642
    const-string v1, "eBOOK"

    .line 643
    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-nez v0, :cond_49

    .line 649
    .line 650
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 651
    .line 652
    const-string v1, "EBOOK"

    .line 653
    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    if-nez v0, :cond_49

    .line 659
    .line 660
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 661
    .line 662
    if-nez v0, :cond_49

    .line 663
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 670
    .line 671
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 672
    .line 673
    .line 674
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 675
    .line 676
    if-eqz v0, :cond_8

    .line 677
    .line 678
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 679
    .line 680
    .line 681
    :cond_8
    invoke-virtual {v5, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 685
    .line 686
    .line 687
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 697
    .line 698
    .line 699
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 700
    .line 701
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 702
    .line 703
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 704
    .line 705
    const-string/jumbo v0, "setEbookMode from Ebook function"

    .line 706
    .line 707
    .line 708
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    goto/16 :goto_32

    .line 712
    .line 713
    :pswitch_9
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 721
    .line 722
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 723
    .line 724
    .line 725
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 726
    .line 727
    if-eqz v0, :cond_49

    .line 728
    .line 729
    const-string v1, "10"

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-nez v0, :cond_49

    .line 736
    .line 737
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 738
    .line 739
    const-string v1, "EMAIL"

    .line 740
    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-nez v0, :cond_49

    .line 746
    .line 747
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 748
    .line 749
    if-nez v0, :cond_49

    .line 750
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 757
    .line 758
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 759
    .line 760
    .line 761
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 762
    .line 763
    if-eqz v0, :cond_9

    .line 764
    .line 765
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 766
    .line 767
    .line 768
    :cond_9
    invoke-virtual {v5, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 772
    .line 773
    .line 774
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 784
    .line 785
    .line 786
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 787
    .line 788
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 789
    .line 790
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 791
    .line 792
    const-string/jumbo v0, "setEmailMode from Email function"

    .line 793
    .line 794
    .line 795
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    goto/16 :goto_32

    .line 799
    .line 800
    :pswitch_a
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 801
    .line 802
    invoke-static {v5, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_32

    .line 806
    .line 807
    :pswitch_b
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 808
    .line 809
    invoke-static {v5, v6, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    .line 810
    .line 811
    .line 812
    goto/16 :goto_32

    .line 813
    .line 814
    :pswitch_c
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 817
    .line 818
    .line 819
    move v1, v4

    .line 820
    :goto_9
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 821
    .line 822
    array-length v7, v3

    .line 823
    if-ge v1, v7, :cond_b

    .line 824
    .line 825
    aget-object v3, v3, v1

    .line 826
    .line 827
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    if-eqz v3, :cond_a

    .line 832
    .line 833
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 834
    .line 835
    .line 836
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 837
    .line 838
    goto :goto_a

    .line 839
    :cond_a
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 840
    .line 841
    .line 842
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 843
    .line 844
    add-int/lit8 v1, v1, 0x1

    .line 845
    .line 846
    goto :goto_9

    .line 847
    :cond_b
    :goto_a
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    .line 852
    .line 853
    .line 854
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    iput-boolean v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 859
    .line 860
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 861
    .line 862
    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    const-string v7, "hdr_effect_enable : "

    .line 866
    .line 867
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    const-string v7, " , app_setting_value : "

    .line 874
    .line 875
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 879
    .line 880
    .line 881
    move-result v7

    .line 882
    if-ne v7, v6, :cond_c

    .line 883
    .line 884
    move v7, v6

    .line 885
    goto :goto_b

    .line 886
    :cond_c
    move v7, v4

    .line 887
    :goto_b
    invoke-static {v2, v3, v7}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 888
    .line 889
    .line 890
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 891
    .line 892
    const-string/jumbo v7, "setVideoMode from Video function"

    .line 893
    .line 894
    .line 895
    if-eqz v1, :cond_13

    .line 896
    .line 897
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-ne v0, v6, :cond_13

    .line 902
    .line 903
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 904
    .line 905
    if-nez v0, :cond_10

    .line 906
    .line 907
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 908
    .line 909
    if-eqz v0, :cond_49

    .line 910
    .line 911
    const-string v1, "15"

    .line 912
    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    if-nez v0, :cond_49

    .line 918
    .line 919
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 920
    .line 921
    const-string v1, "VIDEO_ENHANCER_THIRD"

    .line 922
    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 924
    .line 925
    .line 926
    move-result v0

    .line 927
    if-nez v0, :cond_49

    .line 928
    .line 929
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 930
    .line 931
    const-string v1, "VIDEO_BRIGHTNESS_THIRD"

    .line 932
    .line 933
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-nez v0, :cond_49

    .line 938
    .line 939
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 940
    .line 941
    if-nez v0, :cond_49

    .line 942
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 949
    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 957
    .line 958
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 959
    .line 960
    .line 961
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 962
    .line 963
    if-eqz v0, :cond_d

    .line 964
    .line 965
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 966
    .line 967
    if-nez v0, :cond_d

    .line 968
    .line 969
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 970
    .line 971
    .line 972
    :cond_d
    invoke-virtual {v5, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 973
    .line 974
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    .line 976
    .line 977
    const-string v1, "mDexModeState : "

    .line 978
    .line 979
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 983
    .line 984
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 985
    .line 986
    .line 987
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 988
    .line 989
    if-eqz v0, :cond_f

    .line 990
    .line 991
    const/16 v0, 0xff

    .line 992
    .line 993
    if-eq v3, v0, :cond_e

    .line 994
    .line 995
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 996
    .line 997
    if-eqz v0, :cond_e

    .line 998
    .line 999
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1000
    .line 1001
    if-nez v0, :cond_e

    .line 1002
    .line 1003
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1004
    .line 1005
    if-nez v0, :cond_e

    .line 1006
    .line 1007
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1008
    .line 1009
    .line 1010
    goto :goto_c

    .line 1011
    :cond_e
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_c

    .line 1015
    :cond_f
    const/4 v0, 0x2

    .line 1016
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1017
    .line 1018
    .line 1019
    :goto_c
    invoke-static {v6}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1026
    .line 1027
    .line 1028
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1029
    .line 1030
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1031
    .line 1032
    const-string/jumbo v0, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_32

    .line 1039
    .line 1040
    :cond_10
    if-eqz v0, :cond_49

    .line 1041
    .line 1042
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1043
    .line 1044
    if-eqz v0, :cond_49

    .line 1045
    .line 1046
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v0

    .line 1050
    if-nez v0, :cond_49

    .line 1051
    .line 1052
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v0

    .line 1058
    if-nez v0, :cond_49

    .line 1059
    .line 1060
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1061
    .line 1062
    if-nez v0, :cond_49

    .line 1063
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1070
    .line 1071
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1078
    .line 1079
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1080
    .line 1081
    .line 1082
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1083
    .line 1084
    if-eqz v0, :cond_11

    .line 1085
    .line 1086
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1087
    .line 1088
    if-nez v0, :cond_11

    .line 1089
    .line 1090
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1091
    .line 1092
    .line 1093
    :cond_11
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1094
    .line 1095
    .line 1096
    const/16 v0, 0xff

    .line 1097
    .line 1098
    if-eq v3, v0, :cond_12

    .line 1099
    .line 1100
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1101
    .line 1102
    if-eqz v0, :cond_12

    .line 1103
    .line 1104
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1105
    .line 1106
    if-nez v0, :cond_12

    .line 1107
    .line 1108
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1109
    .line 1110
    if-nez v0, :cond_12

    .line 1111
    .line 1112
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1113
    .line 1114
    .line 1115
    goto :goto_d

    .line 1116
    :cond_12
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1117
    .line 1118
    .line 1119
    :goto_d
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1126
    .line 1127
    .line 1128
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1129
    .line 1130
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1131
    .line 1132
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .line 1134
    .line 1135
    goto/16 :goto_32

    .line 1136
    .line 1137
    :cond_13
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1138
    .line 1139
    if-eqz v0, :cond_49

    .line 1140
    .line 1141
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    if-nez v0, :cond_49

    .line 1146
    .line 1147
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1148
    .line 1149
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v0

    .line 1153
    if-nez v0, :cond_49

    .line 1154
    .line 1155
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1156
    .line 1157
    if-nez v0, :cond_49

    .line 1158
    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1160
    .line 1161
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1165
    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1173
    .line 1174
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1175
    .line 1176
    .line 1177
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1178
    .line 1179
    if-eqz v0, :cond_14

    .line 1180
    .line 1181
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 1182
    .line 1183
    if-nez v0, :cond_14

    .line 1184
    .line 1185
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1186
    .line 1187
    .line 1188
    :cond_14
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1189
    .line 1190
    .line 1191
    const/16 v0, 0xff

    .line 1192
    .line 1193
    if-eq v3, v0, :cond_15

    .line 1194
    .line 1195
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1196
    .line 1197
    if-eqz v0, :cond_15

    .line 1198
    .line 1199
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1200
    .line 1201
    if-nez v0, :cond_15

    .line 1202
    .line 1203
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1204
    .line 1205
    if-nez v0, :cond_15

    .line 1206
    .line 1207
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1208
    .line 1209
    .line 1210
    goto :goto_e

    .line 1211
    :cond_15
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1212
    .line 1213
    .line 1214
    :goto_e
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1221
    .line 1222
    .line 1223
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1224
    .line 1225
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1226
    .line 1227
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .line 1229
    .line 1230
    goto/16 :goto_32

    .line 1231
    .line 1232
    :pswitch_d
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1233
    .line 1234
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 1238
    .line 1239
    .line 1240
    move-result v0

    .line 1241
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1242
    .line 1243
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1244
    .line 1245
    .line 1246
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 1247
    .line 1248
    if-nez v0, :cond_18

    .line 1249
    .line 1250
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1251
    .line 1252
    if-eqz v0, :cond_49

    .line 1253
    .line 1254
    const-string v1, "4"

    .line 1255
    .line 1256
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1257
    .line 1258
    .line 1259
    move-result v0

    .line 1260
    if-nez v0, :cond_49

    .line 1261
    .line 1262
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1263
    .line 1264
    const-string v1, "CAMERA"

    .line 1265
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    if-nez v0, :cond_49

    .line 1271
    .line 1272
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1273
    .line 1274
    if-nez v0, :cond_49

    .line 1275
    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1282
    .line 1283
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1284
    .line 1285
    .line 1286
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1287
    .line 1288
    if-eqz v0, :cond_16

    .line 1289
    .line 1290
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1291
    .line 1292
    .line 1293
    :cond_16
    const/4 v0, 0x4

    .line 1294
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1295
    .line 1296
    .line 1297
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v1

    .line 1305
    if-eqz v1, :cond_17

    .line 1306
    .line 1307
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_f

    .line 1311
    :cond_17
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1312
    .line 1313
    .line 1314
    :goto_f
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1324
    .line 1325
    .line 1326
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1327
    .line 1328
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1329
    .line 1330
    const-string/jumbo v0, "setCameraMode from Camera function"

    .line 1331
    .line 1332
    .line 1333
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    .line 1335
    .line 1336
    goto/16 :goto_32

    .line 1337
    .line 1338
    :cond_18
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 1339
    .line 1340
    goto/16 :goto_32

    .line 1341
    .line 1342
    :pswitch_e
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1343
    .line 1344
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 1345
    .line 1346
    .line 1347
    move v1, v4

    .line 1348
    move v7, v1

    .line 1349
    :goto_10
    iget-object v8, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 1350
    .line 1351
    array-length v9, v8

    .line 1352
    if-ge v1, v9, :cond_1a

    .line 1353
    .line 1354
    aget-object v8, v8, v1

    .line 1355
    .line 1356
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v8

    .line 1360
    if-eqz v8, :cond_19

    .line 1361
    .line 1362
    move v7, v6

    .line 1363
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 1364
    .line 1365
    goto :goto_10

    .line 1366
    :cond_1a
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1367
    .line 1368
    .line 1369
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1370
    .line 1371
    if-eqz v0, :cond_49

    .line 1372
    .line 1373
    const-string v1, "6"

    .line 1374
    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v0

    .line 1379
    if-nez v0, :cond_49

    .line 1380
    .line 1381
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1382
    .line 1383
    const-string v1, "GALLERY"

    .line 1384
    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1386
    .line 1387
    .line 1388
    move-result v0

    .line 1389
    if-nez v0, :cond_49

    .line 1390
    .line 1391
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1392
    .line 1393
    if-nez v0, :cond_49

    .line 1394
    .line 1395
    if-eqz v7, :cond_1b

    .line 1396
    .line 1397
    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1398
    .line 1399
    .line 1400
    :cond_1b
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1401
    .line 1402
    .line 1403
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    if-eqz v0, :cond_1c

    .line 1412
    .line 1413
    invoke-virtual {v5, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_11

    .line 1417
    :cond_1c
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1418
    .line 1419
    .line 1420
    :goto_11
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1430
    .line 1431
    .line 1432
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1433
    .line 1434
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1435
    .line 1436
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1437
    .line 1438
    const-string/jumbo v0, "setGalleryMode from Gallery function"

    .line 1439
    .line 1440
    .line 1441
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    .line 1443
    .line 1444
    goto/16 :goto_32

    .line 1445
    .line 1446
    :pswitch_f
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1447
    .line 1448
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    .line 1452
    .line 1453
    .line 1454
    move-result v1

    .line 1455
    iput-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1456
    .line 1457
    move v1, v4

    .line 1458
    :goto_12
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 1459
    .line 1460
    array-length v7, v3

    .line 1461
    if-ge v1, v7, :cond_1e

    .line 1462
    .line 1463
    aget-object v3, v3, v1

    .line 1464
    .line 1465
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v3

    .line 1469
    if-eqz v3, :cond_1d

    .line 1470
    .line 1471
    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1472
    .line 1473
    .line 1474
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1475
    .line 1476
    goto :goto_13

    .line 1477
    :cond_1d
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1478
    .line 1479
    .line 1480
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1481
    .line 1482
    add-int/lit8 v1, v1, 0x1

    .line 1483
    .line 1484
    goto :goto_12

    .line 1485
    :cond_1e
    :goto_13
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1486
    .line 1487
    .line 1488
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1489
    .line 1490
    if-eqz v0, :cond_49

    .line 1491
    .line 1492
    const-string v1, "8"

    .line 1493
    .line 1494
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v0

    .line 1498
    if-nez v0, :cond_49

    .line 1499
    .line 1500
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 1501
    .line 1502
    const-string v1, "BROWSER"

    .line 1503
    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v0

    .line 1508
    if-nez v0, :cond_49

    .line 1509
    .line 1510
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 1511
    .line 1512
    if-nez v0, :cond_49

    .line 1513
    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    iget-boolean v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1520
    .line 1521
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1522
    .line 1523
    .line 1524
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1525
    .line 1526
    if-eqz v0, :cond_1f

    .line 1527
    .line 1528
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 1529
    .line 1530
    .line 1531
    :cond_1f
    const/16 v0, 0x8

    .line 1532
    .line 1533
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1534
    .line 1535
    .line 1536
    iget v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1537
    .line 1538
    const/16 v1, 0xff

    .line 1539
    .line 1540
    if-eq v0, v1, :cond_20

    .line 1541
    .line 1542
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1543
    .line 1544
    if-eqz v0, :cond_20

    .line 1545
    .line 1546
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 1547
    .line 1548
    if-nez v0, :cond_20

    .line 1549
    .line 1550
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 1551
    .line 1552
    if-nez v0, :cond_20

    .line 1553
    .line 1554
    invoke-virtual {v5, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1555
    .line 1556
    .line 1557
    goto :goto_14

    .line 1558
    :cond_20
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1559
    .line 1560
    .line 1561
    :goto_14
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    .line 1568
    .line 1569
    .line 1570
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1571
    .line 1572
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1573
    .line 1574
    const-string/jumbo v0, "setBrowserMode from Browser function"

    .line 1575
    .line 1576
    .line 1577
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    .line 1579
    .line 1580
    goto/16 :goto_32

    .line 1581
    .line 1582
    :pswitch_10
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 1583
    .line 1584
    invoke-virtual {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    goto/16 :goto_32

    .line 1588
    .line 1589
    :pswitch_11
    :try_start_5
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 1590
    .line 1591
    const/4 v1, -0x1

    .line 1592
    invoke-virtual {v0, v1, v4, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->onForegroundActivitiesChanged(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1593
    .line 1594
    .line 1595
    goto/16 :goto_32

    .line 1596
    .line 1597
    :pswitch_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1598
    .line 1599
    check-cast v0, Ljava/lang/String;

    .line 1600
    .line 1601
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1602
    .line 1603
    iget-object v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 1604
    .line 1605
    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    .line 1606
    .line 1607
    .line 1608
    move-result v1

    .line 1609
    if-nez v1, :cond_21

    .line 1610
    .line 1611
    iput-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 1612
    .line 1613
    goto :goto_15

    .line 1614
    :cond_21
    iput-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 1615
    .line 1616
    :goto_15
    move v1, v4

    .line 1617
    :goto_16
    iget-object v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 1618
    .line 1619
    array-length v9, v3

    .line 1620
    if-ge v1, v9, :cond_23

    .line 1621
    .line 1622
    aget-object v3, v3, v1

    .line 1623
    .line 1624
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v3

    .line 1628
    if-eqz v3, :cond_22

    .line 1629
    .line 1630
    move v1, v6

    .line 1631
    goto :goto_17

    .line 1632
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 1633
    .line 1634
    goto :goto_16

    .line 1635
    :cond_23
    move v1, v4

    .line 1636
    :goto_17
    move v3, v4

    .line 1637
    :goto_18
    iget-object v9, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 1638
    .line 1639
    array-length v10, v9

    .line 1640
    if-ge v3, v10, :cond_25

    .line 1641
    .line 1642
    aget-object v9, v9, v3

    .line 1643
    .line 1644
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1645
    .line 1646
    .line 1647
    move-result v9

    .line 1648
    if-eqz v9, :cond_24

    .line 1649
    .line 1650
    move v3, v6

    .line 1651
    goto :goto_19

    .line 1652
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 1653
    .line 1654
    goto :goto_18

    .line 1655
    :cond_25
    move v3, v4

    .line 1656
    :goto_19
    move v9, v4

    .line 1657
    :goto_1a
    iget-object v10, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 1658
    .line 1659
    array-length v11, v10

    .line 1660
    if-ge v9, v11, :cond_27

    .line 1661
    .line 1662
    aget-object v10, v10, v9

    .line 1663
    .line 1664
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v10

    .line 1668
    if-eqz v10, :cond_26

    .line 1669
    .line 1670
    move v3, v6

    .line 1671
    goto :goto_1b

    .line 1672
    :cond_26
    add-int/lit8 v9, v9, 0x1

    .line 1673
    .line 1674
    goto :goto_1a

    .line 1675
    :cond_27
    :goto_1b
    move v9, v4

    .line 1676
    :goto_1c
    iget-object v10, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 1677
    .line 1678
    array-length v11, v10

    .line 1679
    if-ge v9, v11, :cond_29

    .line 1680
    .line 1681
    aget-object v10, v10, v9

    .line 1682
    .line 1683
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v10

    .line 1687
    if-eqz v10, :cond_28

    .line 1688
    .line 1689
    move v9, v6

    .line 1690
    goto :goto_1d

    .line 1691
    :cond_28
    add-int/lit8 v9, v9, 0x1

    .line 1692
    .line 1693
    goto :goto_1c

    .line 1694
    :cond_29
    move v9, v4

    .line 1695
    :goto_1d
    move v10, v4

    .line 1696
    :goto_1e
    iget-object v11, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 1697
    .line 1698
    array-length v12, v11

    .line 1699
    if-ge v10, v12, :cond_2b

    .line 1700
    .line 1701
    aget-object v11, v11, v10

    .line 1702
    .line 1703
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v11

    .line 1707
    if-eqz v11, :cond_2a

    .line 1708
    .line 1709
    move v10, v6

    .line 1710
    goto :goto_1f

    .line 1711
    :cond_2a
    add-int/lit8 v10, v10, 0x1

    .line 1712
    .line 1713
    goto :goto_1e

    .line 1714
    :cond_2b
    move v10, v4

    .line 1715
    :goto_1f
    move v11, v4

    .line 1716
    :goto_20
    iget-object v12, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 1717
    .line 1718
    array-length v13, v12

    .line 1719
    if-ge v11, v13, :cond_2d

    .line 1720
    .line 1721
    aget-object v12, v12, v11

    .line 1722
    .line 1723
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v12

    .line 1727
    if-eqz v12, :cond_2c

    .line 1728
    .line 1729
    move v11, v6

    .line 1730
    goto :goto_21

    .line 1731
    :cond_2c
    add-int/lit8 v11, v11, 0x1

    .line 1732
    .line 1733
    goto :goto_20

    .line 1734
    :cond_2d
    move v11, v4

    .line 1735
    :goto_21
    move v12, v4

    .line 1736
    :goto_22
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 1737
    .line 1738
    array-length v4, v13

    .line 1739
    if-ge v12, v4, :cond_2f

    .line 1740
    .line 1741
    aget-object v4, v13, v12

    .line 1742
    .line 1743
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v4

    .line 1747
    if-eqz v4, :cond_2e

    .line 1748
    .line 1749
    move v4, v6

    .line 1750
    goto :goto_23

    .line 1751
    :cond_2e
    add-int/lit8 v12, v12, 0x1

    .line 1752
    .line 1753
    const/4 v4, 0x0

    .line 1754
    goto :goto_22

    .line 1755
    :cond_2f
    const/4 v4, 0x0

    .line 1756
    :goto_23
    const/4 v12, 0x0

    .line 1757
    :goto_24
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 1758
    .line 1759
    array-length v7, v13

    .line 1760
    if-ge v12, v7, :cond_31

    .line 1761
    .line 1762
    aget-object v7, v13, v12

    .line 1763
    .line 1764
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1765
    .line 1766
    .line 1767
    move-result v7

    .line 1768
    if-eqz v7, :cond_30

    .line 1769
    .line 1770
    move v7, v6

    .line 1771
    goto :goto_25

    .line 1772
    :cond_30
    add-int/lit8 v12, v12, 0x1

    .line 1773
    .line 1774
    const/16 v7, 0xa

    .line 1775
    .line 1776
    goto :goto_24

    .line 1777
    :cond_31
    const/4 v7, 0x0

    .line 1778
    :goto_25
    const/4 v12, 0x0

    .line 1779
    :goto_26
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 1780
    .line 1781
    array-length v8, v13

    .line 1782
    if-ge v12, v8, :cond_33

    .line 1783
    .line 1784
    aget-object v8, v13, v12

    .line 1785
    .line 1786
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1787
    .line 1788
    .line 1789
    move-result v8

    .line 1790
    if-eqz v8, :cond_32

    .line 1791
    .line 1792
    move v8, v6

    .line 1793
    goto :goto_27

    .line 1794
    :cond_32
    add-int/lit8 v12, v12, 0x1

    .line 1795
    .line 1796
    const/16 v8, 0x9

    .line 1797
    .line 1798
    goto :goto_26

    .line 1799
    :cond_33
    const/4 v8, 0x0

    .line 1800
    :goto_27
    const/4 v12, 0x0

    .line 1801
    :goto_28
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 1802
    .line 1803
    array-length v15, v13

    .line 1804
    if-ge v12, v15, :cond_35

    .line 1805
    .line 1806
    aget-object v13, v13, v12

    .line 1807
    .line 1808
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1809
    .line 1810
    .line 1811
    move-result v13

    .line 1812
    if-eqz v13, :cond_34

    .line 1813
    .line 1814
    move v12, v6

    .line 1815
    goto :goto_29

    .line 1816
    :cond_34
    add-int/lit8 v12, v12, 0x1

    .line 1817
    .line 1818
    const/4 v15, 0x6

    .line 1819
    goto :goto_28

    .line 1820
    :cond_35
    const/4 v12, 0x0

    .line 1821
    :goto_29
    const/4 v13, 0x0

    .line 1822
    :goto_2a
    iget-object v15, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 1823
    .line 1824
    array-length v14, v15

    .line 1825
    iget-boolean v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 1826
    .line 1827
    if-ge v13, v14, :cond_37

    .line 1828
    .line 1829
    aget-object v14, v15, v13

    .line 1830
    .line 1831
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1832
    .line 1833
    .line 1834
    move-result v14

    .line 1835
    if-eqz v14, :cond_36

    .line 1836
    .line 1837
    if-eqz v6, :cond_37

    .line 1838
    .line 1839
    const/4 v13, 0x1

    .line 1840
    iput-boolean v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1841
    .line 1842
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1843
    .line 1844
    if-eqz v13, :cond_37

    .line 1845
    .line 1846
    const/high16 v14, 0x3f000000    # 0.5f

    .line 1847
    .line 1848
    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1849
    .line 1850
    .line 1851
    goto :goto_2b

    .line 1852
    :cond_36
    add-int/lit8 v13, v13, 0x1

    .line 1853
    .line 1854
    const/4 v6, 0x1

    .line 1855
    const/4 v14, 0x3

    .line 1856
    goto :goto_2a

    .line 1857
    :cond_37
    :goto_2b
    const/4 v13, 0x0

    .line 1858
    :goto_2c
    iget-object v14, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 1859
    .line 1860
    array-length v15, v14

    .line 1861
    if-ge v13, v15, :cond_39

    .line 1862
    .line 1863
    aget-object v14, v14, v13

    .line 1864
    .line 1865
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1866
    .line 1867
    .line 1868
    move-result v14

    .line 1869
    if-eqz v14, :cond_38

    .line 1870
    .line 1871
    if-eqz v6, :cond_39

    .line 1872
    .line 1873
    const/4 v13, 0x1

    .line 1874
    iput-boolean v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1875
    .line 1876
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1877
    .line 1878
    if-eqz v13, :cond_39

    .line 1879
    .line 1880
    const v14, 0x3f866666    # 1.05f

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1884
    .line 1885
    .line 1886
    goto :goto_2d

    .line 1887
    :cond_38
    add-int/lit8 v13, v13, 0x1

    .line 1888
    .line 1889
    goto :goto_2c

    .line 1890
    :cond_39
    :goto_2d
    const/4 v13, 0x0

    .line 1891
    :goto_2e
    iget-object v14, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 1892
    .line 1893
    array-length v15, v14

    .line 1894
    if-ge v13, v15, :cond_3b

    .line 1895
    .line 1896
    aget-object v14, v14, v13

    .line 1897
    .line 1898
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1899
    .line 1900
    .line 1901
    move-result v14

    .line 1902
    if-eqz v14, :cond_3a

    .line 1903
    .line 1904
    if-eqz v6, :cond_3b

    .line 1905
    .line 1906
    const/4 v13, 0x1

    .line 1907
    iput-boolean v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1908
    .line 1909
    iget-object v13, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1910
    .line 1911
    if-eqz v13, :cond_3b

    .line 1912
    .line 1913
    const v14, 0x3f8ccccd    # 1.1f

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1917
    .line 1918
    .line 1919
    goto :goto_2f

    .line 1920
    :cond_3a
    add-int/lit8 v13, v13, 0x1

    .line 1921
    .line 1922
    goto :goto_2e

    .line 1923
    :cond_3b
    :goto_2f
    const/4 v13, 0x0

    .line 1924
    :goto_30
    iget-object v14, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 1925
    .line 1926
    array-length v15, v14

    .line 1927
    if-ge v13, v15, :cond_3d

    .line 1928
    .line 1929
    aget-object v14, v14, v13

    .line 1930
    .line 1931
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1932
    .line 1933
    .line 1934
    move-result v14

    .line 1935
    if-eqz v14, :cond_3c

    .line 1936
    .line 1937
    if-eqz v6, :cond_3d

    .line 1938
    .line 1939
    const/4 v0, 0x1

    .line 1940
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1941
    .line 1942
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1943
    .line 1944
    if-eqz v0, :cond_3d

    .line 1945
    .line 1946
    const v13, 0x3f933333    # 1.15f

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v0, v13}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1950
    .line 1951
    .line 1952
    goto :goto_31

    .line 1953
    :cond_3c
    add-int/lit8 v13, v13, 0x1

    .line 1954
    .line 1955
    goto :goto_30

    .line 1956
    :cond_3d
    :goto_31
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1957
    .line 1958
    if-nez v0, :cond_3e

    .line 1959
    .line 1960
    if-eqz v6, :cond_3e

    .line 1961
    .line 1962
    iget-object v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1963
    .line 1964
    if-eqz v0, :cond_3e

    .line 1965
    .line 1966
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1967
    .line 1968
    invoke-virtual {v0, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 1969
    .line 1970
    .line 1971
    :cond_3e
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 1972
    .line 1973
    iget-object v6, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 1974
    .line 1975
    if-nez v0, :cond_3f

    .line 1976
    .line 1977
    if-eqz v3, :cond_3f

    .line 1978
    .line 1979
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1980
    .line 1981
    if-nez v0, :cond_49

    .line 1982
    .line 1983
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1984
    .line 1985
    .line 1986
    const/4 v0, 0x1

    .line 1987
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1988
    .line 1989
    const/4 v0, 0x3

    .line 1990
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1994
    .line 1995
    .line 1996
    goto/16 :goto_32

    .line 1997
    .line 1998
    :cond_3f
    if-nez v0, :cond_40

    .line 1999
    .line 2000
    if-eqz v9, :cond_40

    .line 2001
    .line 2002
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2003
    .line 2004
    if-nez v0, :cond_49

    .line 2005
    .line 2006
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2007
    .line 2008
    .line 2009
    const/4 v0, 0x1

    .line 2010
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2011
    .line 2012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2013
    .line 2014
    .line 2015
    move-result-wide v0

    .line 2016
    const/4 v2, 0x4

    .line 2017
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2018
    .line 2019
    .line 2020
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 2021
    .line 2022
    int-to-long v3, v3

    .line 2023
    add-long/2addr v0, v3

    .line 2024
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2025
    .line 2026
    .line 2027
    goto/16 :goto_32

    .line 2028
    .line 2029
    :cond_40
    if-nez v0, :cond_41

    .line 2030
    .line 2031
    if-eqz v10, :cond_41

    .line 2032
    .line 2033
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2034
    .line 2035
    if-nez v0, :cond_49

    .line 2036
    .line 2037
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2038
    .line 2039
    .line 2040
    const/4 v0, 0x1

    .line 2041
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2042
    .line 2043
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2044
    .line 2045
    .line 2046
    move-result-wide v0

    .line 2047
    const/4 v2, 0x5

    .line 2048
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    .line 2050
    .line 2051
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 2052
    .line 2053
    int-to-long v3, v3

    .line 2054
    add-long/2addr v0, v3

    .line 2055
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2056
    .line 2057
    .line 2058
    goto/16 :goto_32

    .line 2059
    .line 2060
    :cond_41
    if-nez v0, :cond_43

    .line 2061
    .line 2062
    if-eqz v11, :cond_43

    .line 2063
    .line 2064
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2065
    .line 2066
    if-nez v0, :cond_49

    .line 2067
    .line 2068
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2069
    .line 2070
    .line 2071
    const/4 v0, 0x1

    .line 2072
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2073
    .line 2074
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2075
    .line 2076
    .line 2077
    move-result-wide v0

    .line 2078
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2079
    .line 2080
    const-string v4, "in video Real Multi Window State : "

    .line 2081
    .line 2082
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2083
    .line 2084
    .line 2085
    iget-boolean v4, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 2086
    .line 2087
    invoke-static {v2, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2088
    .line 2089
    .line 2090
    iget-boolean v2, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 2091
    .line 2092
    if-eqz v2, :cond_42

    .line 2093
    .line 2094
    const/16 v2, 0x8

    .line 2095
    .line 2096
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2097
    .line 2098
    .line 2099
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 2100
    .line 2101
    int-to-long v3, v3

    .line 2102
    add-long/2addr v0, v3

    .line 2103
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2104
    .line 2105
    .line 2106
    goto/16 :goto_32

    .line 2107
    .line 2108
    :cond_42
    const/4 v2, 0x7

    .line 2109
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2110
    .line 2111
    .line 2112
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 2113
    .line 2114
    int-to-long v3, v3

    .line 2115
    add-long/2addr v0, v3

    .line 2116
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2117
    .line 2118
    .line 2119
    goto/16 :goto_32

    .line 2120
    .line 2121
    :cond_43
    if-nez v0, :cond_44

    .line 2122
    .line 2123
    if-eqz v4, :cond_44

    .line 2124
    .line 2125
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 2126
    .line 2127
    if-nez v0, :cond_49

    .line 2128
    .line 2129
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2130
    .line 2131
    .line 2132
    const/4 v0, 0x1

    .line 2133
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 2134
    .line 2135
    const/16 v0, 0xe

    .line 2136
    .line 2137
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2141
    .line 2142
    .line 2143
    goto/16 :goto_32

    .line 2144
    .line 2145
    :cond_44
    if-nez v0, :cond_45

    .line 2146
    .line 2147
    if-eqz v7, :cond_45

    .line 2148
    .line 2149
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2150
    .line 2151
    if-nez v0, :cond_49

    .line 2152
    .line 2153
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2154
    .line 2155
    .line 2156
    const/4 v0, 0x1

    .line 2157
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2158
    .line 2159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2160
    .line 2161
    .line 2162
    move-result-wide v0

    .line 2163
    const/4 v2, 0x6

    .line 2164
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2165
    .line 2166
    .line 2167
    iget v3, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 2168
    .line 2169
    int-to-long v3, v3

    .line 2170
    add-long/2addr v0, v3

    .line 2171
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2172
    .line 2173
    .line 2174
    goto :goto_32

    .line 2175
    :cond_45
    if-nez v0, :cond_46

    .line 2176
    .line 2177
    if-eqz v8, :cond_46

    .line 2178
    .line 2179
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2180
    .line 2181
    if-nez v0, :cond_49

    .line 2182
    .line 2183
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2184
    .line 2185
    .line 2186
    const/4 v0, 0x1

    .line 2187
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2188
    .line 2189
    const/16 v0, 0x9

    .line 2190
    .line 2191
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2192
    .line 2193
    .line 2194
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2195
    .line 2196
    .line 2197
    goto :goto_32

    .line 2198
    :cond_46
    if-nez v0, :cond_47

    .line 2199
    .line 2200
    if-eqz v12, :cond_47

    .line 2201
    .line 2202
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2203
    .line 2204
    if-nez v0, :cond_49

    .line 2205
    .line 2206
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2207
    .line 2208
    .line 2209
    const/4 v0, 0x1

    .line 2210
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2211
    .line 2212
    const/16 v0, 0xa

    .line 2213
    .line 2214
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2218
    .line 2219
    .line 2220
    goto :goto_32

    .line 2221
    :cond_47
    if-nez v0, :cond_48

    .line 2222
    .line 2223
    if-eqz v1, :cond_48

    .line 2224
    .line 2225
    iget-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2226
    .line 2227
    if-nez v0, :cond_49

    .line 2228
    .line 2229
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2230
    .line 2231
    .line 2232
    const/4 v0, 0x1

    .line 2233
    iput-boolean v0, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2234
    .line 2235
    const-string/jumbo v0, "setUIMode from UI function(2)"

    .line 2236
    .line 2237
    .line 2238
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    .line 2240
    .line 2241
    const/4 v0, 0x2

    .line 2242
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2243
    .line 2244
    .line 2245
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2246
    .line 2247
    .line 2248
    goto :goto_32

    .line 2249
    :cond_48
    const/4 v0, 0x2

    .line 2250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2251
    .line 2252
    .line 2253
    move-result-wide v3

    .line 2254
    invoke-virtual {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 2255
    .line 2256
    .line 2257
    const-string/jumbo v1, "setUIMode from UI function(3)"

    .line 2258
    .line 2259
    .line 2260
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    .line 2262
    .line 2263
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2264
    .line 2265
    .line 2266
    iget v1, v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 2267
    .line 2268
    int-to-long v1, v1

    .line 2269
    add-long/2addr v3, v1

    .line 2270
    invoke-virtual {v6, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2271
    .line 2272
    .line 2273
    :catch_4
    :cond_49
    :goto_32
    return-void

    .line 2274
    nop

    .line 2275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
