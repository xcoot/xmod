.class public final synthetic Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 10
    .line 11
    const-string v3, "Send Pattern format: "

    .line 12
    .line 13
    const-string/jumbo v4, "setDisplayColorFeature is not ready: mBootCompleted="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "setDisplayFeature(): "

    .line 17
    .line 18
    .line 19
    iget-object v6, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v6

    .line 22
    :try_start_0
    iget-boolean v7, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->DEBUG:Z

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    const-string v7, "ExynosDisplaySolutionManagerServiceImpl"

    .line 27
    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v5, "  "

    .line 37
    .line 38
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, "  "

    .line 45
    .line 46
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, "  "

    .line 53
    .line 54
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto/16 :goto_b

    .line 70
    .line 71
    :cond_0
    :goto_0
    const-string/jumbo v5, "setDisplayColorFeature"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 81
    .line 82
    iget v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 83
    .line 84
    iget-boolean v3, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    if-lez v0, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v3, "setDisplayColorFeature(): "

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, "  "

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v3, "ExynosDisplayColor"

    .line 126
    .line 127
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    if-nez v1, :cond_2

    .line 131
    .line 132
    if-nez v2, :cond_2

    .line 133
    .line 134
    if-eqz p0, :cond_2

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    monitor-exit v6

    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_3
    :goto_1
    const-string p0, "ExynosDisplaySolutionManagerServiceImpl"

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-boolean p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 150
    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p1, ", timer_count="

    .line 155
    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    monitor-exit v6

    .line 170
    goto/16 :goto_a

    .line 171
    .line 172
    :cond_4
    const-string/jumbo v4, "dqe_tune"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    const/4 v5, 0x0

    .line 180
    const/4 v7, 0x1

    .line 181
    if-eqz v4, :cond_7

    .line 182
    .line 183
    if-nez v1, :cond_6

    .line 184
    .line 185
    if-nez v2, :cond_5

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    move v5, v7

    .line 189
    :goto_2
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string/jumbo v0, "enableTuneDQE: enable="

    .line 197
    .line 198
    .line 199
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const-string v0, "ExynosDisplayTune"

    .line 210
    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    if-eqz v5, :cond_6

    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 217
    .line 218
    const-string/jumbo v0, "xml"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string/jumbo v0, "tune"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_6
    monitor-exit v6

    .line 238
    goto/16 :goto_a

    .line 239
    .line 240
    :cond_7
    const-string/jumbo v4, "hdr_tune"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_a

    .line 248
    .line 249
    if-eqz p0, :cond_9

    .line 250
    .line 251
    const-string v0, "0x"

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_8

    .line 258
    .line 259
    const/16 v0, 0x10

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_8
    const/16 v0, 0xa

    .line 263
    .line 264
    :goto_3
    const-string v4, "^0x"

    .line 265
    .line 266
    const-string v5, ""

    .line 267
    .line 268
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-static {p0, v0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    new-instance p0, Landroid/content/Intent;

    .line 277
    .line 278
    const-string/jumbo v0, "com.android.server.display.HDR_TUNE_PATTERN_CHANGED"

    .line 279
    .line 280
    .line 281
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/high16 v0, 0x40000000    # 2.0f

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    const-string/jumbo v0, "com.android.settings"

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    const-string/jumbo v0, "com.android.server.display.hdr_tune_format"

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    const-string/jumbo v0, "com.android.server.display.hdr_tune_type"

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    const-string/jumbo v0, "com.android.server.display.hdr_tune_color"

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    new-instance v7, Landroid/os/UserHandle;

    .line 316
    .line 317
    const/4 v8, -0x2

    .line 318
    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, p0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v0, "com.android.exynos.hdrdisplaytune"

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 331
    .line 332
    new-instance v0, Landroid/os/UserHandle;

    .line 333
    .line 334
    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 338
    .line 339
    .line 340
    const-string p0, "ExynosDisplaySolutionManagerServiceImpl"

    .line 341
    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v0, " pattern: "

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v0, " RGBA: "

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    :cond_9
    monitor-exit v6

    .line 378
    goto/16 :goto_a

    .line 379
    .line 380
    :cond_a
    const-string p0, "atc_user"

    .line 381
    .line 382
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-eqz p0, :cond_11

    .line 387
    .line 388
    if-nez v1, :cond_c

    .line 389
    .line 390
    if-nez v2, :cond_b

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_b
    move v5, v7

    .line 394
    :goto_4
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 395
    .line 396
    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 397
    .line 398
    .line 399
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 400
    .line 401
    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_c
    if-ne v1, v7, :cond_e

    .line 406
    .line 407
    iget-boolean p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcAlreadyEnable:Z

    .line 408
    .line 409
    if-nez p0, :cond_d

    .line 410
    .line 411
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 412
    .line 413
    invoke-virtual {p0, v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 414
    .line 415
    .line 416
    iput-boolean v7, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcAlreadyEnable:Z

    .line 417
    .line 418
    :cond_d
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 419
    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 424
    .line 425
    .line 426
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 427
    .line 428
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 429
    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_e
    const/4 p0, 0x2

    .line 433
    if-ne v1, p0, :cond_10

    .line 434
    .line 435
    if-nez v2, :cond_f

    .line 436
    .line 437
    move v7, v5

    .line 438
    :cond_f
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 439
    .line 440
    invoke-virtual {p0, v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 441
    .line 442
    .line 443
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 444
    .line 445
    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 446
    .line 447
    .line 448
    :cond_10
    :goto_5
    monitor-exit v6

    .line 449
    goto/16 :goto_a

    .line 450
    .line 451
    :cond_11
    const-string p0, "atc_tune"

    .line 452
    .line 453
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result p0

    .line 457
    if-eqz p0, :cond_1a

    .line 458
    .line 459
    if-eqz v1, :cond_12

    .line 460
    .line 461
    const/4 p0, 0x7

    .line 462
    if-ne v1, p0, :cond_16

    .line 463
    .line 464
    :cond_12
    if-nez v2, :cond_13

    .line 465
    .line 466
    move p0, v5

    .line 467
    goto :goto_6

    .line 468
    :cond_13
    move p0, v7

    .line 469
    :goto_6
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 475
    .line 476
    .line 477
    if-eqz v1, :cond_15

    .line 478
    .line 479
    if-eqz p0, :cond_14

    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_14
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 483
    .line 484
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    .line 485
    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_15
    :goto_7
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 489
    .line 490
    invoke-virtual {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 491
    .line 492
    .line 493
    :goto_8
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 494
    .line 495
    invoke-virtual {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 496
    .line 497
    .line 498
    :cond_16
    const/16 p0, 0x8

    .line 499
    .line 500
    if-ne v1, p0, :cond_18

    .line 501
    .line 502
    if-nez v2, :cond_17

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_17
    move v5, v7

    .line 506
    :goto_9
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 507
    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 512
    .line 513
    .line 514
    :cond_18
    const/16 p0, 0x9

    .line 515
    .line 516
    if-ne v1, p0, :cond_19

    .line 517
    .line 518
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 519
    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 524
    .line 525
    .line 526
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 527
    .line 528
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 529
    .line 530
    .line 531
    :cond_19
    monitor-exit v6

    .line 532
    goto :goto_a

    .line 533
    :cond_1a
    const-string p0, "atc_timer"

    .line 534
    .line 535
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result p0

    .line 539
    if-eqz p0, :cond_1b

    .line 540
    .line 541
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 542
    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 547
    .line 548
    .line 549
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 550
    .line 551
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setCountDownTimer(II)V

    .line 552
    .line 553
    .line 554
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 555
    .line 556
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 557
    .line 558
    .line 559
    monitor-exit v6

    .line 560
    goto :goto_a

    .line 561
    :cond_1b
    const-string/jumbo p0, "factory_timer"

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result p0

    .line 568
    if-eqz p0, :cond_1c

    .line 569
    .line 570
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 571
    .line 572
    const/4 p1, 0x0

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->startCountDownTimer(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    monitor-exit v6

    .line 577
    goto :goto_a

    .line 578
    :cond_1c
    monitor-exit v6

    .line 579
    :goto_a
    return-void

    .line 580
    :goto_b
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    throw p0
.end method
