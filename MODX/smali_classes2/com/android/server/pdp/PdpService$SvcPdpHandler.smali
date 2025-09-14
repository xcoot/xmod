.class public final Lcom/android/server/pdp/PdpService$SvcPdpHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v0, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    const-string v0, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST >"

    .line 11
    .line 12
    const-string v2, "PdpService"

    .line 13
    .line 14
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "sys.pdp.last_job"

    .line 18
    .line 19
    .line 20
    const-string v3, "XXXX"

    .line 21
    .line 22
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v4, "ro.boot.carrierid"

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string/jumbo v5, "sys.pdp.toasted"

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    xor-int/2addr v3, v1

    .line 45
    const-string v7, "XAC"

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "XAU"

    .line 52
    .line 53
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string/jumbo v9, "toasted"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    xor-int/2addr v10, v1

    .line 65
    const-string v11, "[PDP] "

    .line 66
    .line 67
    const-string v12, " : "

    .line 68
    .line 69
    invoke-static {v11, v0, v12, v4, v12}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "[PDP] pdpInfoChecked : "

    .line 86
    .line 87
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v6, "[PDP] pdpCarrierIsXAC : "

    .line 103
    .line 104
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v6, "[PDP] pdpCarrierIsXAU : "

    .line 120
    .line 121
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v6, "[PDP] pdpToastChecked : "

    .line 137
    .line 138
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    if-eqz v10, :cond_1a

    .line 152
    .line 153
    if-eqz v3, :cond_1a

    .line 154
    .line 155
    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v3, "[PDP] Prepare Toast"

    .line 159
    .line 160
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    const-string v3, "[PDP]\nrestore : narrow success\n\n [ ! ]\n size issue"

    .line 164
    .line 165
    const-string/jumbo v4, "restore_narrow_suc"

    .line 166
    .line 167
    .line 168
    const-string/jumbo v5, "restore_done"

    .line 169
    .line 170
    .line 171
    const-string/jumbo v6, "restore_fail"

    .line 172
    .line 173
    .line 174
    const-string/jumbo v9, "remove-bkup"

    .line 175
    .line 176
    .line 177
    const-string v10, "backup_narrow_suc"

    .line 178
    .line 179
    const-string v11, "backup_done"

    .line 180
    .line 181
    const-string v12, "backup_fail_etc"

    .line 182
    .line 183
    const-string v13, "backup_fail_cache"

    .line 184
    .line 185
    const-string v14, "backup_fail_BFNE"

    .line 186
    .line 187
    const-string/jumbo v15, "setupwizard"

    .line 188
    .line 189
    .line 190
    const-string v1, "backup_fail_suw"

    .line 191
    .line 192
    move-object/from16 v16, v2

    .line 193
    .line 194
    move-object/from16 v2, p0

    .line 195
    .line 196
    iget-object v2, v2, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    .line 197
    .line 198
    if-nez v7, :cond_e

    .line 199
    .line 200
    if-eqz v8, :cond_1

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const/4 v7, 0x5

    .line 209
    if-nez v1, :cond_d

    .line 210
    .line 211
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_2

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_2
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_4

    .line 224
    .line 225
    const-string v0, "[PDP]\nback-up : fail\nNo backup file"

    .line 226
    .line 227
    invoke-virtual {v2, v7, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    :goto_0
    move-object/from16 v1, v16

    .line 231
    .line 232
    goto/16 :goto_4

    .line 233
    .line 234
    :cond_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_5

    .line 239
    .line 240
    const-string v0, "[PDP]\nback-up : fail\n/c partition size"

    .line 241
    .line 242
    invoke-virtual {v2, v7, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_6

    .line 251
    .line 252
    const-string v0, "[PDP]\nback-up : fail\n ETC"

    .line 253
    .line 254
    invoke-virtual {v2, v7, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_6
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_7

    .line 263
    .line 264
    const-string v0, "[PDP]\nback-up : success"

    .line 265
    .line 266
    const/4 v1, 0x3

    .line 267
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_7
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_8

    .line 276
    .line 277
    const-string v0, "[PDP]\nback-up : NRW success\n"

    .line 278
    .line 279
    const/16 v1, 0x9

    .line 280
    .line 281
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_8
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_9

    .line 290
    .line 291
    const-string v0, "[PDP]\ndelete the back-up files : done"

    .line 292
    .line 293
    const/16 v1, 0x11

    .line 294
    .line 295
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_0

    .line 299
    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    const/16 v6, 0x56

    .line 304
    .line 305
    if-eqz v1, :cond_a

    .line 306
    .line 307
    const-string v0, "[PDP]\nrestore : fail\nPlease download a userdata.img file again."

    .line 308
    .line 309
    invoke-virtual {v2, v6, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_b

    .line 318
    .line 319
    const-string v0, "[PDP]\nrestore : success"

    .line 320
    .line 321
    invoke-virtual {v2, v6, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_c

    .line 330
    .line 331
    invoke-virtual {v2, v6, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto :goto_0

    .line 335
    :cond_c
    const-string v1, "detect-bkup"

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_3

    .line 342
    .line 343
    const-string v0, "[PDP]\nback-up files are detected"

    .line 344
    .line 345
    const/4 v1, 0x1

    .line 346
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_0

    .line 350
    :cond_d
    :goto_1
    const-string v0, "[PDP]\nback-up : fail\nsetup-wizard [ FINISH ]"

    .line 351
    .line 352
    invoke-virtual {v2, v7, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_0

    .line 356
    :cond_e
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_f

    .line 361
    .line 362
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_10

    .line 367
    .line 368
    :cond_f
    move-object/from16 v1, v16

    .line 369
    .line 370
    goto/16 :goto_3

    .line 371
    .line 372
    :cond_10
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_11

    .line 377
    .line 378
    const-string v0, "[PDP]\n system backup: on\n manual backup: NG [file not exist]"

    .line 379
    .line 380
    const/4 v1, 0x1

    .line 381
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_11
    const/4 v1, 0x1

    .line 387
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-eqz v7, :cond_12

    .line 392
    .line 393
    const-string v0, "[PDP]\n system backup: on\n manual backup: NG [/c size]"

    .line 394
    .line 395
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_12
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    const/4 v8, 0x2

    .line 405
    if-eqz v7, :cond_13

    .line 406
    .line 407
    const-string v0, "[PDP]\n system backup: on\n manual backup: NG ETC"

    .line 408
    .line 409
    invoke-virtual {v2, v8, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_0

    .line 413
    .line 414
    :cond_13
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    if-eqz v7, :cond_14

    .line 419
    .line 420
    const-string v0, "[PDP]\n system backup: on\n manual backup: done"

    .line 421
    .line 422
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :cond_14
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    if-eqz v7, :cond_15

    .line 432
    .line 433
    const-string v0, "[PDP]\n system backup: on\n manual backup: [!] narrow success"

    .line 434
    .line 435
    invoke-virtual {v2, v8, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_15
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    if-eqz v7, :cond_16

    .line 445
    .line 446
    const-string v0, "[PDP]\n system backup: on\n manual backup cancel: done"

    .line 447
    .line 448
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_16
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_17

    .line 458
    .line 459
    const-string v0, "[PDP] restore-fail toast is not allowed"

    .line 460
    .line 461
    move-object/from16 v1, v16

    .line 462
    .line 463
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    goto :goto_4

    .line 467
    :cond_17
    move-object/from16 v1, v16

    .line 468
    .line 469
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    if-eqz v5, :cond_18

    .line 474
    .line 475
    const-string v0, "[PDP] restore-done toast is not allowed"

    .line 476
    .line 477
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    goto :goto_4

    .line 481
    :cond_18
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-eqz v4, :cond_19

    .line 486
    .line 487
    invoke-virtual {v2, v8, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    .line 488
    .line 489
    .line 490
    goto :goto_4

    .line 491
    :cond_19
    const-string v2, "detect-bkup"

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_1b

    .line 498
    .line 499
    const-string v0, "[PDP] detect-backup toast is not allowed"

    .line 500
    .line 501
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    goto :goto_4

    .line 505
    :goto_3
    const-string v0, "[PDP] backup-fail toast is not allowed"

    .line 506
    .line 507
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_1a
    move-object v1, v2

    .line 512
    const-string v0, "[PDP] Already Toasted"

    .line 513
    .line 514
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    :cond_1b
    :goto_4
    const-string v0, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST <"

    .line 518
    .line 519
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    :goto_5
    return-void
.end method
