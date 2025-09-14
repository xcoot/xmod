.class public final Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 6
    return-void
.end method


# virtual methods
.method public final handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 8

    .line 1
    const-string v0, "-D"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 12
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 14
    or-int/lit8 p1, p1, 0x2

    .line 16
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 18
    goto/16 :goto_1

    .line 20
    :cond_0
    const-string v0, "--suspend"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 30
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 32
    or-int/lit8 p1, p1, 0x10

    .line 34
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 36
    goto/16 :goto_1

    .line 38
    :cond_1
    const-string v0, "-N"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 46
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 48
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 50
    or-int/lit8 p1, p1, 0x8

    .line 52
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 54
    goto/16 :goto_1

    .line 56
    :cond_2
    const-string v0, "-W"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 64
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 66
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 68
    goto/16 :goto_1

    .line 70
    :cond_3
    const-string v0, "-P"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 78
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 80
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 88
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 90
    goto/16 :goto_1

    .line 92
    :cond_4
    const-string v0, "--start-profiler"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 98
    const/4 v2, 0x0

    .line 99
    if-eqz v0, :cond_5

    .line 101
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 103
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 109
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 111
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 113
    goto/16 :goto_1

    .line 115
    :cond_5
    const-string v0, "--sampling"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 123
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 135
    goto/16 :goto_1

    .line 137
    :cond_6
    const-string v0, "--clock-type"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 145
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 147
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 153
    invoke-static {p1}, Landroid/app/ProfilerInfo;->getClockTypeFromString(Ljava/lang/String;)I

    .line 156
    move-result p1

    .line 157
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 159
    goto/16 :goto_1

    .line 161
    :cond_7
    const-string v0, "--profiler-output-version"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 169
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 171
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 178
    move-result p1

    .line 179
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 181
    goto/16 :goto_1

    .line 183
    :cond_8
    const-string v0, "--streaming"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_9

    .line 191
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 193
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 195
    goto/16 :goto_1

    .line 197
    :cond_9
    const-string v0, "--attach-agent"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 203
    const-string v3, "Multiple --attach-agent(-bind) not supported"

    .line 205
    if-eqz v0, :cond_b

    .line 207
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 209
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 211
    if-eqz v0, :cond_a

    .line 213
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    return v2

    .line 221
    :cond_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 224
    move-result-object p2

    .line 225
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 227
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 229
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    .line 231
    goto/16 :goto_1

    .line 233
    :cond_b
    const-string v0, "--attach-agent-bind"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_d

    .line 241
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 243
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 245
    if-eqz v0, :cond_c

    .line 247
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    return v2

    .line 255
    :cond_c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 258
    move-result-object p2

    .line 259
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 261
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 263
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    .line 265
    goto/16 :goto_1

    .line 267
    :cond_d
    const-string p2, "-R"

    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result p2

    .line 273
    if-eqz p2, :cond_e

    .line 275
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 277
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 284
    move-result p1

    .line 285
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 287
    goto/16 :goto_1

    .line 289
    :cond_e
    const-string p2, "-S"

    .line 291
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result p2

    .line 295
    if-eqz p2, :cond_f

    .line 297
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 299
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 301
    goto/16 :goto_1

    .line 303
    :cond_f
    const-string p2, "--track-allocation"

    .line 305
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result p2

    .line 309
    if-eqz p2, :cond_10

    .line 311
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 313
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 315
    or-int/lit8 p1, p1, 0x4

    .line 317
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 319
    goto/16 :goto_1

    .line 321
    :cond_10
    const-string p2, "--user"

    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    move-result p2

    .line 327
    if-eqz p2, :cond_11

    .line 329
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 331
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 334
    move-result-object p1

    .line 335
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 338
    move-result p1

    .line 339
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 341
    goto/16 :goto_1

    .line 343
    :cond_11
    const-string p2, "--receiver-permission"

    .line 345
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result p2

    .line 349
    if-eqz p2, :cond_12

    .line 351
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 353
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 356
    move-result-object p1

    .line 357
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    .line 359
    goto/16 :goto_1

    .line 361
    :cond_12
    const-string p2, "--display"

    .line 363
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result p2

    .line 367
    if-eqz p2, :cond_13

    .line 369
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 371
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 378
    move-result p1

    .line 379
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 381
    goto/16 :goto_1

    .line 383
    :cond_13
    const-string p2, "--task-display-area-feature-id"

    .line 385
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    move-result p2

    .line 389
    if-eqz p2, :cond_14

    .line 391
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 393
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 396
    move-result-object p1

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 400
    move-result p1

    .line 401
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 403
    goto/16 :goto_1

    .line 405
    :cond_14
    const-string p2, "--windowingMode"

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    move-result p2

    .line 411
    if-eqz p2, :cond_15

    .line 413
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 415
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 418
    move-result-object p1

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 422
    move-result p1

    .line 423
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 425
    goto/16 :goto_1

    .line 427
    :cond_15
    const-string p2, "--forceWindowingMode"

    .line 429
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    move-result p2

    .line 433
    if-eqz p2, :cond_16

    .line 435
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 437
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 440
    move-result-object p1

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 444
    move-result p1

    .line 445
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 447
    goto/16 :goto_1

    .line 449
    :cond_16
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 451
    if-eqz p2, :cond_17

    .line 453
    const-string p2, "--forceLaunchTaskOnHome"

    .line 455
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    move-result p2

    .line 459
    if-eqz p2, :cond_17

    .line 461
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 463
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceLaunchTaskOnHome:Z

    .line 465
    goto/16 :goto_1

    .line 467
    :cond_17
    const-string p2, "--activityType"

    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result p2

    .line 473
    if-eqz p2, :cond_18

    .line 475
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 477
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 480
    move-result-object p1

    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 484
    move-result p1

    .line 485
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 487
    goto/16 :goto_1

    .line 489
    :cond_18
    const-string p2, "--task"

    .line 491
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    move-result p2

    .line 495
    if-eqz p2, :cond_19

    .line 497
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 499
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 502
    move-result-object p1

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 506
    move-result p1

    .line 507
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 509
    goto/16 :goto_1

    .line 511
    :cond_19
    const-string p2, "--task-overlay"

    .line 513
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    move-result p2

    .line 517
    if-eqz p2, :cond_1a

    .line 519
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 521
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 523
    goto/16 :goto_1

    .line 525
    :cond_1a
    const-string p2, "--lock-task"

    .line 527
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    move-result p2

    .line 531
    if-eqz p2, :cond_1b

    .line 533
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 535
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 537
    goto/16 :goto_1

    .line 539
    :cond_1b
    const-string p2, "--allow-background-activity-starts"

    .line 541
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    move-result p2

    .line 545
    if-eqz p2, :cond_1d

    .line 547
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 549
    iget-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 551
    if-nez p2, :cond_1c

    .line 553
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 556
    move-result-object p2

    .line 557
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 559
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 561
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 563
    invoke-virtual {p0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 566
    goto :goto_1

    .line 567
    :cond_1d
    const-string p2, "--async"

    .line 569
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    move-result p2

    .line 573
    if-eqz p2, :cond_1e

    .line 575
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 577
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 579
    goto :goto_1

    .line 580
    :cond_1e
    const-string p2, "--splashscreen-show-icon"

    .line 582
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    move-result p2

    .line 586
    if-eqz p2, :cond_1f

    .line 588
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 590
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    .line 592
    goto :goto_1

    .line 593
    :cond_1f
    const-string p2, "--dismiss-keyguard-if-insecure"

    .line 595
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    move-result p2

    .line 599
    if-nez p2, :cond_23

    .line 601
    const-string p2, "--dismiss-keyguard"

    .line 603
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    move-result p2

    .line 607
    if-eqz p2, :cond_20

    .line 609
    goto :goto_0

    .line 610
    :cond_20
    const-string p2, "--allow-fgs-start-reason"

    .line 612
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    move-result p2

    .line 616
    if-eqz p2, :cond_21

    .line 618
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 620
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 623
    move-result-object p1

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 627
    move-result v6

    .line 628
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 630
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 633
    move-result-object p2

    .line 634
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 636
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 638
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 640
    const/4 v5, 0x0

    .line 641
    const-string v7, ""

    .line 643
    const-wide/16 v3, 0x2710

    .line 645
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 648
    goto :goto_1

    .line 649
    :cond_21
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 651
    if-eqz p2, :cond_22

    .line 653
    const-string p2, "--resume-affordance"

    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    move-result p1

    .line 659
    if-eqz p1, :cond_22

    .line 661
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 663
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsResumeAffordanceRequested:Z

    .line 665
    goto :goto_1

    .line 666
    :cond_22
    return v2

    .line 667
    :cond_23
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 669
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    .line 671
    :goto_1
    return v1
.end method
