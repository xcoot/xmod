.class public final Lcom/android/server/pm/verify/domain/DomainVerificationShell;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 5
    .line 6
    return-void
.end method

.method public static translateUserId(ILjava/lang/String;)I
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v6, "pm command"

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x1

    .line 14
    move v2, p0

    .line 15
    move-object v5, p1

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method


# virtual methods
.method public final runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v5, 0x78

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, -0x1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    sparse-switch v10, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    :goto_0
    move p2, v9

    .line 23
    goto :goto_1

    .line 24
    :sswitch_0
    const-string/jumbo v10, "verify-app-links"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p2, v0

    .line 35
    goto :goto_1

    .line 36
    :sswitch_1
    const-string v10, "get-app-link-owners"

    .line 37
    .line 38
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p2, v1

    .line 46
    goto :goto_1

    .line 47
    :sswitch_2
    const-string/jumbo v10, "reset-app-links"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move p2, v2

    .line 58
    goto :goto_1

    .line 59
    :sswitch_3
    const-string/jumbo v10, "set-app-links"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move p2, v3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_4
    const-string/jumbo v10, "set-app-links-allowed"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    move p2, v4

    .line 82
    goto :goto_1

    .line 83
    :sswitch_5
    const-string/jumbo v10, "set-app-links-user-selection"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move p2, v8

    .line 94
    goto :goto_1

    .line 95
    :sswitch_6
    const-string v10, "get-app-links"

    .line 96
    .line 97
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    move p2, v6

    .line 105
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 106
    .line 107
    .line 108
    return-object v7

    .line 109
    :pswitch_0
    move p2, v6

    .line 110
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    const-string p2, "--re-verify"

    .line 117
    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    move p2, v8

    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "Error: unknown option: "

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_9

    .line 149
    .line 150
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 155
    .line 156
    invoke-virtual {p0, v7, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    .line 157
    .line 158
    .line 159
    move v6, v8

    .line 160
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0

    .line 165
    :pswitch_1
    move-object p2, v7

    .line 166
    move-object v0, p2

    .line 167
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_d

    .line 172
    .line 173
    const-string v2, "--package"

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_c

    .line 180
    .line 181
    const-string v0, "--user"

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_b

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string p1, "Error: unexpected option: "

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_8

    .line 203
    .line 204
    :cond_b
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    goto :goto_4

    .line 217
    :cond_c
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    const-string p1, "Error: no package specified"

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_8

    .line 237
    .line 238
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    :goto_5
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    if-eqz v2, :cond_e

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_f

    .line 258
    .line 259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_f

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    const-string p1, "Error: no package name or domain specified"

    .line 270
    .line 271
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_f
    if-eqz v0, :cond_10

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    const-string/jumbo v2, "runSetAppLinksAllowed"

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :cond_10
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    const-string v4, "  "

    .line 299
    .line 300
    invoke-direct {v2, v3, v4, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    :try_start_0
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 307
    .line 308
    if-eqz p2, :cond_12

    .line 309
    .line 310
    :try_start_1
    const-string v3, "all"

    .line 311
    .line 312
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    if-eqz v3, :cond_11

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_11
    move-object v7, p2

    .line 320
    :goto_6
    :try_start_2
    invoke-virtual {p0, v2, v7, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :catchall_0
    move-exception p0

    .line 325
    goto :goto_9

    .line 326
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string p2, "Error: package not found: "

    .line 336
    .line 337
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_12
    :goto_7
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-nez p1, :cond_13

    .line 359
    .line 360
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V

    .line 361
    .line 362
    .line 363
    :cond_13
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    .line 367
    .line 368
    .line 369
    move v6, v8

    .line 370
    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    return-object p0

    .line 375
    :goto_9
    :try_start_5
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 376
    .line 377
    .line 378
    goto :goto_a

    .line 379
    :catchall_1
    move-exception p1

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 381
    .line 382
    .line 383
    :goto_a
    throw p0

    .line 384
    :pswitch_2
    move-object p2, v7

    .line 385
    :goto_b
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-eqz v0, :cond_15

    .line 390
    .line 391
    const-string p2, "--user"

    .line 392
    .line 393
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    if-eqz p2, :cond_14

    .line 398
    .line 399
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p2

    .line 403
    invoke-static {p2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    goto :goto_b

    .line 412
    :cond_14
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    const-string p1, "Error: unknown option: "

    .line 417
    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_18

    .line 426
    .line 427
    :cond_15
    if-nez p2, :cond_16

    .line 428
    .line 429
    move-object p2, v7

    .line 430
    goto :goto_c

    .line 431
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result p2

    .line 435
    const-string/jumbo v0, "runResetAppLinks"

    .line 436
    .line 437
    .line 438
    invoke-static {p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    :goto_c
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_17

    .line 455
    .line 456
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    const-string p1, "Error: no package specified"

    .line 461
    .line 462
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_18

    .line 466
    .line 467
    :cond_17
    const-string v1, "all"

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_18

    .line 474
    .line 475
    goto :goto_d

    .line 476
    :cond_18
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekRemainingArgs()[Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    :goto_d
    if-eqz p2, :cond_1d

    .line 485
    .line 486
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 487
    .line 488
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 493
    .line 494
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 507
    .line 508
    .line 509
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 510
    .line 511
    monitor-enter p2

    .line 512
    if-nez v7, :cond_1a

    .line 513
    .line 514
    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 515
    .line 516
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 517
    .line 518
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    :goto_e
    if-ge v6, v0, :cond_1c

    .line 523
    .line 524
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 525
    .line 526
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 527
    .line 528
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 533
    .line 534
    if-ne p1, v9, :cond_19

    .line 535
    .line 536
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 539
    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_19
    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 543
    .line 544
    .line 545
    :goto_f
    add-int/2addr v6, v8

    .line 546
    goto :goto_e

    .line 547
    :catchall_2
    move-exception p0

    .line 548
    goto :goto_12

    .line 549
    :cond_1a
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    :goto_10
    if-ge v6, v0, :cond_1c

    .line 554
    .line 555
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Ljava/lang/String;

    .line 560
    .line 561
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 562
    .line 563
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 564
    .line 565
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 570
    .line 571
    if-ne p1, v9, :cond_1b

    .line 572
    .line 573
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 574
    .line 575
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 576
    .line 577
    .line 578
    goto :goto_11

    .line 579
    :cond_1b
    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 580
    .line 581
    .line 582
    :goto_11
    add-int/2addr v6, v8

    .line 583
    goto :goto_10

    .line 584
    :cond_1c
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 585
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 586
    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_17

    .line 591
    .line 592
    :goto_12
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 593
    throw p0

    .line 594
    :cond_1d
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 595
    .line 596
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 597
    .line 598
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 599
    .line 600
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 604
    .line 605
    .line 606
    move-result p2

    .line 607
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 611
    .line 612
    .line 613
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 614
    .line 615
    iget-object p1, p1, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 616
    .line 617
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 622
    .line 623
    monitor-enter p2

    .line 624
    if-nez v7, :cond_20

    .line 625
    .line 626
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 627
    .line 628
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 629
    .line 630
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    :goto_13
    if-ge v6, v0, :cond_23

    .line 635
    .line 636
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 637
    .line 638
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 639
    .line 640
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 645
    .line 646
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 647
    .line 648
    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    if-eqz v2, :cond_1f

    .line 653
    .line 654
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 655
    .line 656
    if-nez v3, :cond_1e

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_1e
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 660
    .line 661
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 662
    .line 663
    .line 664
    goto :goto_14

    .line 665
    :catchall_3
    move-exception p0

    .line 666
    goto :goto_19

    .line 667
    :cond_1f
    :goto_14
    add-int/2addr v6, v8

    .line 668
    goto :goto_13

    .line 669
    :cond_20
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    :goto_15
    if-ge v6, v0, :cond_23

    .line 674
    .line 675
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    check-cast v1, Ljava/lang/String;

    .line 680
    .line 681
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 682
    .line 683
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 684
    .line 685
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 690
    .line 691
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    if-eqz v1, :cond_22

    .line 696
    .line 697
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 698
    .line 699
    if-nez v3, :cond_21

    .line 700
    .line 701
    goto :goto_16

    .line 702
    :cond_21
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 703
    .line 704
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 705
    .line 706
    .line 707
    :cond_22
    :goto_16
    add-int/2addr v6, v8

    .line 708
    goto :goto_15

    .line 709
    :cond_23
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 710
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 711
    .line 712
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 713
    .line 714
    .line 715
    :goto_17
    move v6, v8

    .line 716
    :goto_18
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 717
    .line 718
    .line 719
    move-result-object p0

    .line 720
    return-object p0

    .line 721
    :goto_19
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 722
    throw p0

    .line 723
    :pswitch_3
    move-object p2, v7

    .line 724
    :goto_1a
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    if-eqz v5, :cond_25

    .line 729
    .line 730
    const-string p2, "--package"

    .line 731
    .line 732
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result p2

    .line 736
    if-eqz p2, :cond_24

    .line 737
    .line 738
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    goto :goto_1a

    .line 743
    :cond_24
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 744
    .line 745
    .line 746
    move-result-object p0

    .line 747
    const-string p1, "Error: unknown option: "

    .line 748
    .line 749
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_20

    .line 757
    .line 758
    :cond_25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-eqz v5, :cond_26

    .line 763
    .line 764
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 765
    .line 766
    .line 767
    move-result-object p0

    .line 768
    const-string p1, "Error: no package specified"

    .line 769
    .line 770
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_20

    .line 774
    .line 775
    :cond_26
    const-string v5, "all"

    .line 776
    .line 777
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 778
    .line 779
    .line 780
    move-result v10

    .line 781
    if-eqz v10, :cond_27

    .line 782
    .line 783
    move-object p2, v7

    .line 784
    :cond_27
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v10

    .line 788
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 792
    .line 793
    .line 794
    move-result v11

    .line 795
    sparse-switch v11, :sswitch_data_1

    .line 796
    .line 797
    .line 798
    :goto_1b
    move v0, v9

    .line 799
    goto/16 :goto_1c

    .line 800
    .line 801
    :sswitch_7
    const-string v0, "STATE_DENIED"

    .line 802
    .line 803
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-nez v0, :cond_28

    .line 808
    .line 809
    goto :goto_1b

    .line 810
    :cond_28
    const/4 v0, 0x7

    .line 811
    goto :goto_1c

    .line 812
    :sswitch_8
    const-string v1, "STATE_NO_RESPONSE"

    .line 813
    .line 814
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    if-nez v1, :cond_2f

    .line 819
    .line 820
    goto :goto_1b

    .line 821
    :sswitch_9
    const-string v0, "STATE_SUCCESS"

    .line 822
    .line 823
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-nez v0, :cond_29

    .line 828
    .line 829
    goto :goto_1b

    .line 830
    :cond_29
    move v0, v1

    .line 831
    goto :goto_1c

    .line 832
    :sswitch_a
    const-string v0, "3"

    .line 833
    .line 834
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-nez v0, :cond_2a

    .line 839
    .line 840
    goto :goto_1b

    .line 841
    :cond_2a
    move v0, v2

    .line 842
    goto :goto_1c

    .line 843
    :sswitch_b
    const-string v0, "2"

    .line 844
    .line 845
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-nez v0, :cond_2b

    .line 850
    .line 851
    goto :goto_1b

    .line 852
    :cond_2b
    move v0, v3

    .line 853
    goto :goto_1c

    .line 854
    :sswitch_c
    const-string v0, "1"

    .line 855
    .line 856
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    if-nez v0, :cond_2c

    .line 861
    .line 862
    goto :goto_1b

    .line 863
    :cond_2c
    move v0, v4

    .line 864
    goto :goto_1c

    .line 865
    :sswitch_d
    const-string v0, "0"

    .line 866
    .line 867
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    if-nez v0, :cond_2d

    .line 872
    .line 873
    goto :goto_1b

    .line 874
    :cond_2d
    move v0, v8

    .line 875
    goto :goto_1c

    .line 876
    :sswitch_e
    const-string v0, "STATE_APPROVED"

    .line 877
    .line 878
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    if-nez v0, :cond_2e

    .line 883
    .line 884
    goto :goto_1b

    .line 885
    :cond_2e
    move v0, v6

    .line 886
    :cond_2f
    :goto_1c
    packed-switch v0, :pswitch_data_1

    .line 887
    .line 888
    .line 889
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 890
    .line 891
    .line 892
    move-result-object p0

    .line 893
    const-string p1, "Invalid state option: "

    .line 894
    .line 895
    invoke-virtual {p1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object p1

    .line 899
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    goto :goto_20

    .line 903
    :pswitch_4
    move v3, v8

    .line 904
    goto :goto_1d

    .line 905
    :pswitch_5
    move v3, v6

    .line 906
    goto :goto_1d

    .line 907
    :pswitch_6
    move v3, v4

    .line 908
    :goto_1d
    :pswitch_7
    new-instance v0, Landroid/util/ArraySet;

    .line 909
    .line 910
    new-instance v1, Ljava/util/ArrayList;

    .line 911
    .line 912
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .line 914
    .line 915
    :goto_1e
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    if-eqz v2, :cond_30

    .line 920
    .line 921
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    goto :goto_1e

    .line 925
    :cond_30
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    if-eqz v1, :cond_31

    .line 933
    .line 934
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 935
    .line 936
    .line 937
    move-result-object p0

    .line 938
    const-string p1, "No domains specified"

    .line 939
    .line 940
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    goto :goto_20

    .line 944
    :cond_31
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    if-ne v1, v8, :cond_32

    .line 949
    .line 950
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 951
    .line 952
    .line 953
    move-result v1

    .line 954
    if-eqz v1, :cond_32

    .line 955
    .line 956
    goto :goto_1f

    .line 957
    :cond_32
    move-object v7, v0

    .line 958
    :goto_1f
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 959
    .line 960
    invoke-virtual {p0, p2, v3, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    .line 961
    .line 962
    .line 963
    move v6, v8

    .line 964
    goto :goto_20

    .line 965
    :catch_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 966
    .line 967
    .line 968
    move-result-object p0

    .line 969
    const-string p1, "Package not found: "

    .line 970
    .line 971
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    :goto_20
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 975
    .line 976
    .line 977
    move-result-object p0

    .line 978
    return-object p0

    .line 979
    :pswitch_8
    move-object p2, v7

    .line 980
    move-object v0, p2

    .line 981
    :goto_21
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    if-eqz v1, :cond_35

    .line 986
    .line 987
    const-string v2, "--package"

    .line 988
    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v2

    .line 993
    if-eqz v2, :cond_33

    .line 994
    .line 995
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object p2

    .line 999
    goto :goto_21

    .line 1000
    :cond_33
    const-string v0, "--user"

    .line 1001
    .line 1002
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    if-eqz v0, :cond_34

    .line 1007
    .line 1008
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    goto :goto_21

    .line 1021
    :cond_34
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1022
    .line 1023
    .line 1024
    move-result-object p0

    .line 1025
    const-string p1, "Error: unexpected option: "

    .line 1026
    .line 1027
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object p1

    .line 1031
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_24

    .line 1035
    .line 1036
    :cond_35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v1

    .line 1040
    if-eqz v1, :cond_36

    .line 1041
    .line 1042
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p0

    .line 1046
    const-string p1, "Error: no package specified"

    .line 1047
    .line 1048
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_24

    .line 1052
    .line 1053
    :cond_36
    const-string v1, "all"

    .line 1054
    .line 1055
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v1

    .line 1059
    if-eqz v1, :cond_37

    .line 1060
    .line 1061
    goto :goto_22

    .line 1062
    :cond_37
    move-object v7, p2

    .line 1063
    :goto_22
    if-nez v0, :cond_38

    .line 1064
    .line 1065
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1066
    .line 1067
    .line 1068
    move-result-object p0

    .line 1069
    const-string p1, "Error: user ID not specified"

    .line 1070
    .line 1071
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    goto/16 :goto_24

    .line 1075
    .line 1076
    :cond_38
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object p2

    .line 1080
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    if-eqz v1, :cond_39

    .line 1085
    .line 1086
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1087
    .line 1088
    .line 1089
    move-result-object p0

    .line 1090
    const-string p1, "Error: allowed setting not specified"

    .line 1091
    .line 1092
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    goto :goto_24

    .line 1096
    :cond_39
    :try_start_b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1097
    .line 1098
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3

    .line 1103
    .line 1104
    .line 1105
    const-string/jumbo v2, "true"

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v2

    .line 1112
    if-nez v2, :cond_3b

    .line 1113
    .line 1114
    const-string v2, "false"

    .line 1115
    .line 1116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    if-eqz v1, :cond_3a

    .line 1121
    .line 1122
    move p2, v6

    .line 1123
    goto :goto_23

    .line 1124
    :cond_3a
    :try_start_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 1125
    .line 1126
    const-string v0, " is not a valid boolean"

    .line 1127
    .line 1128
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object p2

    .line 1132
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    throw p0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3

    .line 1136
    :cond_3b
    move p2, v8

    .line 1137
    :goto_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    const-string/jumbo v1, "runSetAppLinksAllowed"

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v0

    .line 1148
    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 1149
    .line 1150
    invoke-virtual {p0, v0, v7, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationLinkHandlingAllowedInternal(ILjava/lang/String;Z)V
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_2

    .line 1151
    .line 1152
    .line 1153
    move v6, v8

    .line 1154
    goto :goto_24

    .line 1155
    :catch_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1156
    .line 1157
    .line 1158
    move-result-object p0

    .line 1159
    const-string p1, "Package not found: "

    .line 1160
    .line 1161
    invoke-static {p0, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    goto :goto_24

    .line 1165
    :catch_3
    move-exception p0

    .line 1166
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    const-string v0, "Error: invalid allowed setting: "

    .line 1173
    .line 1174
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object p0

    .line 1181
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object p0

    .line 1188
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    :goto_24
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1192
    .line 1193
    .line 1194
    move-result-object p0

    .line 1195
    return-object p0

    .line 1196
    :pswitch_9
    move-object p2, v7

    .line 1197
    move-object v0, p2

    .line 1198
    :goto_25
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    if-eqz v1, :cond_3e

    .line 1203
    .line 1204
    const-string v2, "--package"

    .line 1205
    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    if-nez v2, :cond_3d

    .line 1211
    .line 1212
    const-string v0, "--user"

    .line 1213
    .line 1214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    if-nez v0, :cond_3c

    .line 1219
    .line 1220
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1221
    .line 1222
    .line 1223
    move-result-object p0

    .line 1224
    const-string p1, "Error: unknown option: "

    .line 1225
    .line 1226
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object p1

    .line 1230
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    goto/16 :goto_29

    .line 1234
    .line 1235
    :cond_3c
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 1240
    .line 1241
    .line 1242
    move-result v0

    .line 1243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    goto :goto_25

    .line 1248
    :cond_3d
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object p2

    .line 1252
    goto :goto_25

    .line 1253
    :cond_3e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v1

    .line 1257
    if-eqz v1, :cond_3f

    .line 1258
    .line 1259
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1260
    .line 1261
    .line 1262
    move-result-object p0

    .line 1263
    const-string p1, "Error: no package specified"

    .line 1264
    .line 1265
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    goto/16 :goto_29

    .line 1269
    .line 1270
    :cond_3f
    if-nez v0, :cond_40

    .line 1271
    .line 1272
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1273
    .line 1274
    .line 1275
    move-result-object p0

    .line 1276
    const-string p1, "Error: User ID not specified"

    .line 1277
    .line 1278
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    goto/16 :goto_29

    .line 1282
    .line 1283
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1284
    .line 1285
    .line 1286
    move-result v0

    .line 1287
    const-string/jumbo v1, "runSetAppLinksUserState"

    .line 1288
    .line 1289
    .line 1290
    invoke-static {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    .line 1291
    .line 1292
    .line 1293
    move-result v0

    .line 1294
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v2

    .line 1302
    if-eqz v2, :cond_41

    .line 1303
    .line 1304
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1305
    .line 1306
    .line 1307
    move-result-object p0

    .line 1308
    const-string p1, "Error: enabled param not specified"

    .line 1309
    .line 1310
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    goto/16 :goto_29

    .line 1314
    .line 1315
    :cond_41
    :try_start_e
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1316
    .line 1317
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_5

    .line 1322
    .line 1323
    .line 1324
    const-string/jumbo v3, "true"

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v3

    .line 1331
    if-nez v3, :cond_43

    .line 1332
    .line 1333
    const-string v3, "false"

    .line 1334
    .line 1335
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v2

    .line 1339
    if-eqz v2, :cond_42

    .line 1340
    .line 1341
    move v1, v6

    .line 1342
    goto :goto_26

    .line 1343
    :cond_42
    :try_start_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 1344
    .line 1345
    const-string p2, " is not a valid boolean"

    .line 1346
    .line 1347
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object p2

    .line 1351
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    throw p0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_5

    .line 1355
    :cond_43
    move v1, v8

    .line 1356
    :goto_26
    new-instance v2, Landroid/util/ArraySet;

    .line 1357
    .line 1358
    new-instance v3, Ljava/util/ArrayList;

    .line 1359
    .line 1360
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    .line 1362
    .line 1363
    :goto_27
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v4

    .line 1367
    if-eqz v4, :cond_44

    .line 1368
    .line 1369
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    .line 1371
    .line 1372
    goto :goto_27

    .line 1373
    :cond_44
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v3

    .line 1380
    if-eqz v3, :cond_45

    .line 1381
    .line 1382
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1383
    .line 1384
    .line 1385
    move-result-object p0

    .line 1386
    const-string p1, "No domains specified"

    .line 1387
    .line 1388
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    goto :goto_29

    .line 1392
    :cond_45
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 1393
    .line 1394
    .line 1395
    move-result v3

    .line 1396
    if-ne v3, v8, :cond_46

    .line 1397
    .line 1398
    const-string v3, "all"

    .line 1399
    .line 1400
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v3

    .line 1404
    if-eqz v3, :cond_46

    .line 1405
    .line 1406
    goto :goto_28

    .line 1407
    :cond_46
    move-object v7, v2

    .line 1408
    :goto_28
    :try_start_10
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 1409
    .line 1410
    invoke-virtual {p0, v0, p2, v1, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    .line 1411
    .line 1412
    .line 1413
    move v6, v8

    .line 1414
    goto :goto_29

    .line 1415
    :catch_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1416
    .line 1417
    .line 1418
    move-result-object p0

    .line 1419
    const-string p1, "Package not found: "

    .line 1420
    .line 1421
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_29

    .line 1425
    :catch_5
    move-exception p0

    .line 1426
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1427
    .line 1428
    .line 1429
    move-result-object p1

    .line 1430
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    const-string v0, "Error: invalid enabled param: "

    .line 1433
    .line 1434
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object p0

    .line 1441
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object p0

    .line 1448
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    :goto_29
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1452
    .line 1453
    .line 1454
    move-result-object p0

    .line 1455
    return-object p0

    .line 1456
    :pswitch_a
    move-object p2, v7

    .line 1457
    :goto_2a
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v0

    .line 1461
    if-eqz v0, :cond_48

    .line 1462
    .line 1463
    const-string p2, "--user"

    .line 1464
    .line 1465
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result p2

    .line 1469
    if-eqz p2, :cond_47

    .line 1470
    .line 1471
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object p2

    .line 1475
    invoke-static {p2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 1476
    .line 1477
    .line 1478
    move-result p2

    .line 1479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1480
    .line 1481
    .line 1482
    move-result-object p2

    .line 1483
    goto :goto_2a

    .line 1484
    :cond_47
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1485
    .line 1486
    .line 1487
    move-result-object p0

    .line 1488
    const-string p1, "Error: unknown option: "

    .line 1489
    .line 1490
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object p1

    .line 1494
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    goto :goto_2c

    .line 1498
    :cond_48
    if-nez p2, :cond_49

    .line 1499
    .line 1500
    goto :goto_2b

    .line 1501
    :cond_49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 1502
    .line 1503
    .line 1504
    move-result p2

    .line 1505
    const-string/jumbo v0, "runGetAppLinks"

    .line 1506
    .line 1507
    .line 1508
    invoke-static {p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    .line 1509
    .line 1510
    .line 1511
    move-result p2

    .line 1512
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v7

    .line 1516
    :goto_2b
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object p2

    .line 1520
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 1521
    .line 1522
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v1

    .line 1526
    const-string v2, "  "

    .line 1527
    .line 1528
    invoke-direct {v0, v1, v2, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1529
    .line 1530
    .line 1531
    :try_start_11
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1532
    .line 1533
    .line 1534
    :try_start_12
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 1535
    .line 1536
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1537
    .line 1538
    iget-object v1, v1, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1539
    .line 1540
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v1

    .line 1544
    invoke-virtual {p0, v0, v1, v7, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 1545
    .line 1546
    .line 1547
    :try_start_13
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    .line 1551
    .line 1552
    .line 1553
    move v6, v8

    .line 1554
    goto :goto_2c

    .line 1555
    :catchall_4
    move-exception p0

    .line 1556
    goto :goto_2d

    .line 1557
    :catch_6
    :try_start_14
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1558
    .line 1559
    .line 1560
    move-result-object p0

    .line 1561
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1564
    .line 1565
    .line 1566
    const-string v1, "Error: package "

    .line 1567
    .line 1568
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    const-string p2, " unavailable"

    .line 1575
    .line 1576
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object p1

    .line 1583
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    .line 1587
    .line 1588
    .line 1589
    :goto_2c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1590
    .line 1591
    .line 1592
    move-result-object p0

    .line 1593
    return-object p0

    .line 1594
    :goto_2d
    :try_start_15
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 1595
    .line 1596
    .line 1597
    goto :goto_2e

    .line 1598
    :catchall_5
    move-exception p1

    .line 1599
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1600
    .line 1601
    .line 1602
    :goto_2e
    throw p0

    .line 1603
    :sswitch_data_0
    .sparse-switch
        -0x7f8f40aa -> :sswitch_6
        -0x7cbfd22b -> :sswitch_5
        -0x6e528fc3 -> :sswitch_4
        -0x516af29e -> :sswitch_3
        -0x313515f1 -> :sswitch_2
        0x45339730 -> :sswitch_1
        0x4f30e8b9 -> :sswitch_0
    .end sparse-switch

    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    :sswitch_data_1
    .sparse-switch
        -0x6077d53b -> :sswitch_e
        0x30 -> :sswitch_d
        0x31 -> :sswitch_c
        0x32 -> :sswitch_b
        0x33 -> :sswitch_a
        0xf723e15 -> :sswitch_9
        0x1cc39e31 -> :sswitch_8
        0x1fd8ef29 -> :sswitch_7
    .end sparse-switch

    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
