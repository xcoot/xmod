.class public final Lcom/android/server/pm/UserManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mService:Lcom/android/server/pm/UserManagerService;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 9

    .line 1
    const-string v0, "--verbose"

    .line 2
    .line 3
    const-string v1, "-v"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 v2, -0x1

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    sparse-switch v3, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :sswitch_0
    const-string v3, "is-user-visible"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x6

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto/16 :goto_c

    .line 38
    .line 39
    :sswitch_1
    const-string/jumbo v3, "set-system-user-mode-emulation"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    goto :goto_1

    .line 50
    :sswitch_2
    const-string v3, "get-main-user"

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    const/4 v3, 0x7

    .line 59
    goto :goto_1

    .line 60
    :sswitch_3
    const-string/jumbo v3, "report-system-user-package-whitelist-problems"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    move v3, v4

    .line 70
    goto :goto_1

    .line 71
    :sswitch_4
    const-string v3, "is-visible-background-users-on-default-display-supported"

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    const/4 v3, 0x5

    .line 80
    goto :goto_1

    .line 81
    :sswitch_5
    const-string v3, "is-main-user-permanent-admin"

    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    const/16 v3, 0x9

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :sswitch_6
    const-string v3, "can-switch-to-headless-system-user"

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    const/16 v3, 0x8

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :sswitch_7
    const-string v3, "list"

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_1

    .line 110
    .line 111
    move v3, v5

    .line 112
    goto :goto_1

    .line 113
    :sswitch_8
    const-string v3, "is-headless-system-user-mode"

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_1

    .line 120
    .line 121
    const/4 v3, 0x3

    .line 122
    goto :goto_1

    .line 123
    :sswitch_9
    const-string v3, "is-visible-background-users-supported"

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    if-eqz v3, :cond_1

    .line 130
    .line 131
    const/4 v3, 0x4

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    move v3, v2

    .line 134
    :goto_1
    const-string v6, "effective=%b real=%b\n"

    .line 135
    .line 136
    const-string v7, "Invalid option: "

    .line 137
    .line 138
    packed-switch v3, :pswitch_data_0

    .line 139
    .line 140
    .line 141
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    return p0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const v1, 0x11101be

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 167
    .line 168
    .line 169
    return v5

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const v1, 0x111006e

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 191
    .line 192
    .line 193
    return v5

    .line 194
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserId()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    const/16 v1, -0x2710

    .line 205
    .line 206
    if-ne v0, v1, :cond_2

    .line 207
    .line 208
    const-string v0, "None"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 215
    .line 216
    .line 217
    move v4, v5

    .line 218
    :goto_2
    return v4

    .line 219
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsUserVisible()I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    return p0

    .line 224
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    move v3, v5

    .line 229
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    if-eqz v8, :cond_4

    .line 234
    .line 235
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-nez v3, :cond_3

    .line 240
    .line 241
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-nez v3, :cond_3

    .line 246
    .line 247
    :try_start_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_3
    move v3, v4

    .line 256
    goto :goto_3

    .line 257
    :cond_4
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v3, :cond_5

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const v3, 0x11101e6

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 291
    .line 292
    .line 293
    :goto_4
    move v2, v5

    .line 294
    :goto_5
    return v2

    .line 295
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    move v3, v5

    .line 300
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 304
    if-eqz v8, :cond_7

    .line 305
    .line 306
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-nez v3, :cond_6

    .line 311
    .line 312
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-nez v3, :cond_6

    .line 317
    .line 318
    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_6
    move v3, v4

    .line 327
    goto :goto_6

    .line 328
    :cond_7
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v3, :cond_8

    .line 333
    .line 334
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 335
    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const v3, 0x11101e5

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 362
    .line 363
    .line 364
    :goto_7
    move v2, v5

    .line 365
    :goto_8
    return v2

    .line 366
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    move v3, v5

    .line 371
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v8
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 375
    if-eqz v8, :cond_a

    .line 376
    .line 377
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-nez v3, :cond_9

    .line 382
    .line 383
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    if-nez v3, :cond_9

    .line 388
    .line 389
    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_9
    move v3, v4

    .line 398
    goto :goto_9

    .line 399
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 400
    .line 401
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v3, :cond_b

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    .line 416
    .line 417
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 426
    .line 427
    .line 428
    :goto_a
    move v2, v5

    .line 429
    :goto_b
    return v2

    .line 430
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runSetSystemUserModeEmulation()I

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    return p0

    .line 435
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runReportPackageAllowlistProblems()I

    .line 436
    .line 437
    .line 438
    move-result p0

    .line 439
    return p0

    .line 440
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runList()I

    .line 441
    .line 442
    .line 443
    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 444
    return p0

    .line 445
    :goto_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    const-string v0, "Remote exception: "

    .line 450
    .line 451
    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 452
    .line 453
    .line 454
    return v2

    .line 455
    :sswitch_data_0
    .sparse-switch
        -0x653759b8 -> :sswitch_9
        -0x3fcd2c8 -> :sswitch_8
        0x32b09e -> :sswitch_7
        0x144d7a6b -> :sswitch_6
        0x28a0f01f -> :sswitch_5
        0x3a76b28f -> :sswitch_4
        0x40afebbe -> :sswitch_3
        0x56a171a8 -> :sswitch_2
        0x5faf535b -> :sswitch_1
        0x6b6f1033 -> :sswitch_0
    .end sparse-switch

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "User manager (user) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Prints this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v0, "  list [-v | --verbose] [--all]"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "    Prints all users on the system."

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 34
    .line 35
    .line 36
    const-string v0, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "    Reports all issues on user-type package allowlist XML files. Options:"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "    -v | --verbose: shows extra info, like number of issues"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "    --critical-only: show only critical issues, excluding warnings"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "    --mode MODE: shows what errors would be if device used mode MODE"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "      (where MODE is the allowlist mode integer as defined by config_userTypePackageWhitelistMode)"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 67
    .line 68
    .line 69
    const-string v0, "  set-system-user-mode-emulation [--reboot | --no-restart] <headless | full | default>"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "    Changes whether the system user is headless, full, or default (as defined by OEM)."

    .line 75
    .line 76
    const-string v1, "    WARNING: this command is meant just for development and debugging purposes."

    .line 77
    .line 78
    const-string v2, "             It should NEVER be used on automated tests."

    .line 79
    .line 80
    const-string v3, "    NOTE: by default it restarts the Android runtime, unless called with"

    .line 81
    .line 82
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "          --reboot (which does a full reboot) or"

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "          --no-restart (which requires a manual restart)"

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 96
    .line 97
    .line 98
    const-string v0, "  is-headless-system-user-mode [-v | --verbose]"

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "    Checks whether the device uses headless system user mode."

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "  is-visible-background-users-on-default-display-supported [-v | --verbose]"

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "    Checks whether the device allows users to be start visible on background in the default display."

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "    It returns the effective mode, even when using emulation"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "    (to get the real mode as well, use -v or --verbose)"

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 129
    .line 130
    .line 131
    const-string v2, "  is-visible-background-users-supported [-v | --verbose]"

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "    Checks whether the device allows users to be start visible on background."

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 148
    .line 149
    .line 150
    const-string v0, "  is-user-visible [--display DISPLAY_ID] <USER_ID>"

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "    Checks if the given user is visible in the given display."

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "    If the display option is not set, it uses the user\'s context to check"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v0, "    (so it emulates what apps would get from UserManager.isUserVisible())"

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 171
    .line 172
    .line 173
    const-string v0, "  get-main-user "

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v0, "    Displays main user id or message if there is no main user"

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final runIsUserVisible()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v1, "--display"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string p0, "Invalid option: "

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/16 v4, -0x2710

    .line 53
    .line 54
    if-eq v2, v4, :cond_4

    .line 55
    .line 56
    const/4 v4, -0x3

    .line 57
    if-eq v2, v4, :cond_4

    .line 58
    .line 59
    const/4 v4, -0x2

    .line 60
    if-eq v2, v4, :cond_2

    .line 61
    .line 62
    if-eq v2, v3, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_1
    const/4 v3, 0x0

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 79
    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-class v1, Landroid/os/UserManager;

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Landroid/os/UserManager;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserVisible()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string v1, "invalid value (%d) for --user option\n"

    .line 120
    .line 121
    invoke-virtual {v0, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    .line 123
    .line 124
    return v3
.end method

.method public final runList()I
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    move v6, v5

    .line 12
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    if-eqz v7, :cond_3

    .line 17
    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    sparse-switch v8, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_1
    move v8, v1

    .line 26
    goto :goto_2

    .line 27
    :sswitch_0
    const-string v8, "--verbose"

    .line 28
    .line 29
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v8, 0x2

    .line 37
    goto :goto_2

    .line 38
    :sswitch_1
    const-string v8, "--all"

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v8, v2

    .line 48
    goto :goto_2

    .line 49
    :sswitch_2
    const-string v8, "-v"

    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v8, v4

    .line 59
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    const-string v0, "Invalid option: "

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :pswitch_0
    move v5, v2

    .line 73
    goto :goto_0

    .line 74
    :pswitch_1
    move v6, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v7, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 81
    .line 82
    xor-int/lit8 v8, v5, 0x1

    .line 83
    .line 84
    xor-int/2addr v5, v2

    .line 85
    invoke-virtual {v7, v8, v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const/16 v8, -0x2710

    .line 96
    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    const-string v10, "%d users:\n\n"

    .line 108
    .line 109
    invoke-virtual {v3, v10, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 110
    .line 111
    .line 112
    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    const-string v9, "Users:"

    .line 120
    .line 121
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    move v9, v8

    .line 125
    :goto_3
    move v10, v4

    .line 126
    :goto_4
    if-ge v10, v7, :cond_13

    .line 127
    .line 128
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    check-cast v11, Landroid/content/pm/UserInfo;

    .line 133
    .line 134
    iget v12, v11, Landroid/content/pm/UserInfo;->id:I

    .line 135
    .line 136
    invoke-interface {v1, v12, v4}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    const-string v13, ""

    .line 141
    .line 142
    if-eqz v6, :cond_11

    .line 143
    .line 144
    const-class v14, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 145
    .line 146
    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    check-cast v14, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 151
    .line 152
    if-eqz v14, :cond_7

    .line 153
    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 155
    .line 156
    .line 157
    move-result-wide v15

    .line 158
    :try_start_0
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    .line 163
    .line 164
    if-ne v4, v2, :cond_5

    .line 165
    .line 166
    const-string v4, " (device-owner)"

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto :goto_7

    .line 171
    :cond_5
    move-object v4, v13

    .line 172
    :goto_5
    invoke-virtual {v14, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    const-string v2, " (profile-owner)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_6
    move-object v2, v13

    .line 182
    :goto_6
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    .line 184
    .line 185
    move-object/from16 v28, v2

    .line 186
    .line 187
    move-object/from16 v27, v4

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :goto_7
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_7
    move-object/from16 v27, v13

    .line 195
    .line 196
    move-object/from16 v28, v27

    .line 197
    .line 198
    :goto_8
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    .line 199
    .line 200
    if-ne v2, v9, :cond_8

    .line 201
    .line 202
    const/4 v4, 0x1

    .line 203
    goto :goto_9

    .line 204
    :cond_8
    const/4 v4, 0x0

    .line 205
    :goto_9
    iget v14, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 206
    .line 207
    if-eq v14, v2, :cond_9

    .line 208
    .line 209
    if-eq v14, v8, :cond_9

    .line 210
    .line 211
    const/4 v14, 0x1

    .line 212
    goto :goto_a

    .line 213
    :cond_9
    const/4 v14, 0x0

    .line 214
    :goto_a
    iget-object v15, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 215
    .line 216
    invoke-virtual {v15, v2}, Lcom/android/server/pm/UserManagerService;->isUserVisible(I)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v17

    .line 224
    iget v15, v11, Landroid/content/pm/UserInfo;->id:I

    .line 225
    .line 226
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v18

    .line 230
    iget-object v15, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v8, v11, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 233
    .line 234
    const-string v0, "android.os.usertype."

    .line 235
    .line 236
    invoke-virtual {v8, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v20

    .line 240
    iget v0, v11, Landroid/content/pm/UserInfo;->flags:I

    .line 241
    .line 242
    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v21

    .line 246
    if-eqz v14, :cond_a

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v8, " (parentId="

    .line 251
    .line 252
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget v8, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 256
    .line 257
    const-string v14, ")"

    .line 258
    .line 259
    invoke-static {v8, v0, v14}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    move-object/from16 v22, v0

    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_a
    move-object/from16 v22, v13

    .line 267
    .line 268
    :goto_b
    if-eqz v12, :cond_b

    .line 269
    .line 270
    const-string v0, " (running)"

    .line 271
    .line 272
    move-object/from16 v23, v0

    .line 273
    .line 274
    goto :goto_c

    .line 275
    :cond_b
    move-object/from16 v23, v13

    .line 276
    .line 277
    :goto_c
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->partial:Z

    .line 278
    .line 279
    if-eqz v0, :cond_c

    .line 280
    .line 281
    const-string v0, " (partial)"

    .line 282
    .line 283
    move-object/from16 v24, v0

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_c
    move-object/from16 v24, v13

    .line 287
    .line 288
    :goto_d
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 289
    .line 290
    if-eqz v0, :cond_d

    .line 291
    .line 292
    const-string v0, " (pre-created)"

    .line 293
    .line 294
    move-object/from16 v25, v0

    .line 295
    .line 296
    goto :goto_e

    .line 297
    :cond_d
    move-object/from16 v25, v13

    .line 298
    .line 299
    :goto_e
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 300
    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    const-string v0, " (converted)"

    .line 304
    .line 305
    move-object/from16 v26, v0

    .line 306
    .line 307
    goto :goto_f

    .line 308
    :cond_e
    move-object/from16 v26, v13

    .line 309
    .line 310
    :goto_f
    if-eqz v4, :cond_f

    .line 311
    .line 312
    const-string v0, " (current)"

    .line 313
    .line 314
    move-object/from16 v29, v0

    .line 315
    .line 316
    goto :goto_10

    .line 317
    :cond_f
    move-object/from16 v29, v13

    .line 318
    .line 319
    :goto_10
    if-eqz v2, :cond_10

    .line 320
    .line 321
    const-string v13, " (visible)"

    .line 322
    .line 323
    :cond_10
    move-object/from16 v30, v13

    .line 324
    .line 325
    move-object/from16 v19, v15

    .line 326
    .line 327
    filled-new-array/range {v17 .. v30}, [Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const-string v2, "%d: id=%d, name=%s, type=%s, flags=%s%s%s%s%s%s%s%s%s%s\n"

    .line 332
    .line 333
    invoke-virtual {v3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 334
    .line 335
    .line 336
    :goto_11
    const/4 v0, 0x1

    .line 337
    goto :goto_12

    .line 338
    :cond_11
    if-eqz v12, :cond_12

    .line 339
    .line 340
    const-string v13, " running"

    .line 341
    .line 342
    :cond_12
    filled-new-array {v11, v13}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v2, "\t%s%s\n"

    .line 347
    .line 348
    invoke-virtual {v3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 349
    .line 350
    .line 351
    goto :goto_11

    .line 352
    :goto_12
    add-int/2addr v10, v0

    .line 353
    move v2, v0

    .line 354
    const/4 v4, 0x0

    .line 355
    const/16 v8, -0x2710

    .line 356
    .line 357
    move-object/from16 v0, p0

    .line 358
    .line 359
    goto/16 :goto_4

    .line 360
    .line 361
    :cond_13
    move v2, v4

    .line 362
    return v2

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x5e9 -> :sswitch_2
        0x2901001 -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final runReportPackageAllowlistProblems()I
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, -0x3e8

    .line 9
    .line 10
    move v5, v3

    .line 11
    move v6, v5

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    if-eqz v7, :cond_4

    .line 17
    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    sparse-switch v8, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_1
    move v8, v0

    .line 26
    goto :goto_2

    .line 27
    :sswitch_0
    const-string v8, "--verbose"

    .line 28
    .line 29
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v8, 0x3

    .line 37
    goto :goto_2

    .line 38
    :sswitch_1
    const-string v8, "--mode"

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v8, 0x2

    .line 48
    goto :goto_2

    .line 49
    :sswitch_2
    const-string v8, "-v"

    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v8, v1

    .line 59
    goto :goto_2

    .line 60
    :sswitch_3
    const-string v8, "--critical-only"

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v8, v3

    .line 70
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    const-string p0, "Invalid option: "

    .line 74
    .line 75
    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    goto :goto_0

    .line 92
    :pswitch_1
    move v5, v1

    .line 93
    goto :goto_0

    .line 94
    :pswitch_2
    move v6, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const-string/jumbo v0, "runReportPackageAllowlistProblems(): verbose="

    .line 97
    .line 98
    .line 99
    const-string v1, ", criticalOnly="

    .line 100
    .line 101
    const-string v7, ", mode="

    .line 102
    .line 103
    invoke-static {v0, v5, v1, v6, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "UserManagerServiceShellCommand"

    .line 119
    .line 120
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 124
    .line 125
    const-string v1, "  "

    .line 126
    .line 127
    invoke-direct {v0, v2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 131
    .line 132
    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    .line 136
    .line 137
    .line 138
    return v3

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    :try_start_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    throw p0

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x513a2c86 -> :sswitch_3
        0x5e9 -> :sswitch_2
        0x4f776f43 -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final runSetSystemUserModeEmulation()I
    .locals 11

    .line 1
    const-string v0, "full"

    .line 2
    .line 3
    const-string v1, "headless"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-eqz v5, :cond_e

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_d

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v6, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    .line 26
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    const-string p0, "Cannot change system user mode when it has a credential"

    .line 33
    .line 34
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    move v6, v2

    .line 39
    move v7, v4

    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    const-string v9, "--no-restart"

    .line 47
    .line 48
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-nez v9, :cond_2

    .line 53
    .line 54
    const-string v6, "--reboot"

    .line 55
    .line 56
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    const-string p0, "Invalid option: "

    .line 63
    .line 64
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v3

    .line 72
    :cond_1
    move v6, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v7, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    if-eqz v6, :cond_4

    .line 77
    .line 78
    if-nez v7, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string v0, "You can use --reboot or --no-restart, but not both"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v3

    .line 90
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    sparse-switch v10, :sswitch_data_0

    .line 106
    .line 107
    .line 108
    :goto_1
    move v10, v3

    .line 109
    goto :goto_2

    .line 110
    :sswitch_0
    const-string v10, "default"

    .line 111
    .line 112
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const/4 v10, 0x2

    .line 120
    goto :goto_2

    .line 121
    :sswitch_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_6

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    move v10, v4

    .line 129
    goto :goto_2

    .line 130
    :sswitch_2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_7

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_7
    move v10, v2

    .line 138
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string v0, "Invalid arg: %s\n"

    .line 146
    .line 147
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 152
    .line 153
    .line 154
    return v3

    .line 155
    :pswitch_0
    move v4, v9

    .line 156
    goto :goto_3

    .line 157
    :pswitch_1
    xor-int/2addr v4, v9

    .line 158
    :goto_3
    :pswitch_2
    if-nez v4, :cond_9

    .line 159
    .line 160
    if-eqz v9, :cond_8

    .line 161
    .line 162
    move-object v0, v1

    .line 163
    :cond_8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string v0, "No change needed, system user is already %s\n"

    .line 168
    .line 169
    invoke-virtual {v5, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    .line 171
    .line 172
    return v2

    .line 173
    :cond_9
    const-string p0, "Updating system property %s to %s"

    .line 174
    .line 175
    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    .line 176
    .line 177
    .line 178
    filled-new-array {v0, v8}, [Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v3, "UserManagerServiceShellCommand"

    .line 183
    .line 184
    invoke-static {v3, p0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    if-eqz v6, :cond_a

    .line 191
    .line 192
    const-string p0, "Rebooting to finalize the changes"

    .line 193
    .line 194
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    const-string p0, "Rebooting to finalize changes"

    .line 198
    .line 199
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_a
    if-eqz v7, :cond_c

    .line 216
    .line 217
    const-string p0, "Shutting PackageManager down"

    .line 218
    .line 219
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 223
    .line 224
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    if-eqz p0, :cond_b

    .line 238
    .line 239
    :try_start_0
    const-string v0, "Shutting ActivityManager down"

    .line 240
    .line 241
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    const/16 v0, 0x2710

    .line 245
    .line 246
    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :catch_0
    move-exception p0

    .line 251
    const-string v0, "Failed to shut down ActivityManager"

    .line 252
    .line 253
    invoke-static {v0, p0, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_b
    :goto_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v1, "Restarting Android runtime(PID=%d) to finalize changes"

    .line 269
    .line 270
    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    const-string v0, "Restarting Android runtime to finalize changes"

    .line 274
    .line 275
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v0, "The restart may trigger a \'Broken pipe\' message; this is to be expected."

    .line 279
    .line 280
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 284
    .line 285
    .line 286
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_c
    const-string p0, "System user mode changed - please reboot (or restart Android runtime) to continue"

    .line 291
    .line 292
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string p0, "NOTICE: after restart, some apps might be uninstalled (and their data will be lost)"

    .line 296
    .line 297
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :goto_5
    return v2

    .line 301
    :cond_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    const-string v0, "Command only available on root user"

    .line 306
    .line 307
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    const-string v0, "Command not available on user builds"

    .line 316
    .line 317
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_6
    return v3

    .line 321
    :sswitch_data_0
    .sparse-switch
        -0x42768087 -> :sswitch_2
        0x30228f -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
