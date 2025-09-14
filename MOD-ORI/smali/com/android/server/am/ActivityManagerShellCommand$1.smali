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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 8

    .line 1
    const-string v0, "-D"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 13
    .line 14
    or-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    const-string v0, "--suspend"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 29
    .line 30
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 31
    .line 32
    or-int/lit8 p1, p1, 0x10

    .line 33
    .line 34
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    const-string v0, "-N"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 47
    .line 48
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 49
    .line 50
    or-int/lit8 p1, p1, 0x8

    .line 51
    .line 52
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_2
    const-string v0, "-W"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_3
    const-string v0, "-P"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_4
    const-string v0, "--start-profiler"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v2, 0x0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 110
    .line 111
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_5
    const-string v0, "--sampling"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_6
    const-string v0, "--clock-type"

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 152
    .line 153
    invoke-static {p1}, Landroid/app/ProfilerInfo;->getClockTypeFromString(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mClockType:I

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :cond_7
    const-string v0, "--profiler-output-version"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfilerOutputVersion:I

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_8
    const-string v0, "--streaming"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 192
    .line 193
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_9
    const-string v0, "--attach-agent"

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    const-string v3, "Multiple --attach-agent(-bind) not supported"

    .line 204
    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 208
    .line 209
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 210
    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return v2

    .line 221
    :cond_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 228
    .line 229
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_b
    const-string v0, "--attach-agent-bind"

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_d

    .line 240
    .line 241
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 242
    .line 243
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return v2

    .line 255
    :cond_c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 262
    .line 263
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_d
    const-string p2, "-R"

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    if-eqz p2, :cond_e

    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :cond_e
    const-string p2, "-S"

    .line 290
    .line 291
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    if-eqz p2, :cond_f

    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 298
    .line 299
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_f
    const-string p2, "--track-allocation"

    .line 304
    .line 305
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p2

    .line 309
    if-eqz p2, :cond_10

    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 312
    .line 313
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 314
    .line 315
    or-int/lit8 p1, p1, 0x4

    .line 316
    .line 317
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_10
    const-string p2, "--user"

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-eqz p2, :cond_11

    .line 328
    .line 329
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 330
    .line 331
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :cond_11
    const-string p2, "--receiver-permission"

    .line 344
    .line 345
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    if-eqz p2, :cond_12

    .line 350
    .line 351
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :cond_12
    const-string p2, "--display"

    .line 362
    .line 363
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-eqz p2, :cond_13

    .line 368
    .line 369
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 370
    .line 371
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 380
    .line 381
    goto/16 :goto_1

    .line 382
    .line 383
    :cond_13
    const-string p2, "--task-display-area-feature-id"

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-eqz p2, :cond_14

    .line 390
    .line 391
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 392
    .line 393
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskDisplayAreaFeatureId:I

    .line 402
    .line 403
    goto/16 :goto_1

    .line 404
    .line 405
    :cond_14
    const-string p2, "--windowingMode"

    .line 406
    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    if-eqz p2, :cond_15

    .line 412
    .line 413
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 414
    .line 415
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :cond_15
    const-string p2, "--forceWindowingMode"

    .line 428
    .line 429
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result p2

    .line 433
    if-eqz p2, :cond_16

    .line 434
    .line 435
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 436
    .line 437
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I

    .line 446
    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :cond_16
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 450
    .line 451
    if-eqz p2, :cond_17

    .line 452
    .line 453
    const-string p2, "--forceLaunchTaskOnHome"

    .line 454
    .line 455
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result p2

    .line 459
    if-eqz p2, :cond_17

    .line 460
    .line 461
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 462
    .line 463
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mForceLaunchTaskOnHome:Z

    .line 464
    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :cond_17
    const-string p2, "--activityType"

    .line 468
    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result p2

    .line 473
    if-eqz p2, :cond_18

    .line 474
    .line 475
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 476
    .line 477
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 486
    .line 487
    goto/16 :goto_1

    .line 488
    .line 489
    :cond_18
    const-string p2, "--task"

    .line 490
    .line 491
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result p2

    .line 495
    if-eqz p2, :cond_19

    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 498
    .line 499
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 508
    .line 509
    goto/16 :goto_1

    .line 510
    .line 511
    :cond_19
    const-string p2, "--task-overlay"

    .line 512
    .line 513
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result p2

    .line 517
    if-eqz p2, :cond_1a

    .line 518
    .line 519
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 520
    .line 521
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 522
    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :cond_1a
    const-string p2, "--lock-task"

    .line 526
    .line 527
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result p2

    .line 531
    if-eqz p2, :cond_1b

    .line 532
    .line 533
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 534
    .line 535
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :cond_1b
    const-string p2, "--allow-background-activity-starts"

    .line 540
    .line 541
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p2

    .line 545
    if-eqz p2, :cond_1d

    .line 546
    .line 547
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 548
    .line 549
    iget-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 550
    .line 551
    if-nez p2, :cond_1c

    .line 552
    .line 553
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 558
    .line 559
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 560
    .line 561
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 562
    .line 563
    invoke-virtual {p0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 564
    .line 565
    .line 566
    goto :goto_1

    .line 567
    :cond_1d
    const-string p2, "--async"

    .line 568
    .line 569
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result p2

    .line 573
    if-eqz p2, :cond_1e

    .line 574
    .line 575
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 576
    .line 577
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAsync:Z

    .line 578
    .line 579
    goto :goto_1

    .line 580
    :cond_1e
    const-string p2, "--splashscreen-show-icon"

    .line 581
    .line 582
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result p2

    .line 586
    if-eqz p2, :cond_1f

    .line 587
    .line 588
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 589
    .line 590
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mShowSplashScreen:Z

    .line 591
    .line 592
    goto :goto_1

    .line 593
    :cond_1f
    const-string p2, "--dismiss-keyguard-if-insecure"

    .line 594
    .line 595
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result p2

    .line 599
    if-nez p2, :cond_23

    .line 600
    .line 601
    const-string p2, "--dismiss-keyguard"

    .line 602
    .line 603
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result p2

    .line 607
    if-eqz p2, :cond_20

    .line 608
    .line 609
    goto :goto_0

    .line 610
    :cond_20
    const-string p2, "--allow-fgs-start-reason"

    .line 611
    .line 612
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result p2

    .line 616
    if-eqz p2, :cond_21

    .line 617
    .line 618
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 619
    .line 620
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    move-result v6

    .line 628
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 629
    .line 630
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 631
    .line 632
    .line 633
    move-result-object p2

    .line 634
    iput-object p2, p1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 635
    .line 636
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 637
    .line 638
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 639
    .line 640
    const/4 v5, 0x0

    .line 641
    const-string v7, ""

    .line 642
    .line 643
    const-wide/16 v3, 0x2710

    .line 644
    .line 645
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 646
    .line 647
    .line 648
    goto :goto_1

    .line 649
    :cond_21
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 650
    .line 651
    if-eqz p2, :cond_22

    .line 652
    .line 653
    const-string p2, "--resume-affordance"

    .line 654
    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result p1

    .line 659
    if-eqz p1, :cond_22

    .line 660
    .line 661
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 662
    .line 663
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsResumeAffordanceRequested:Z

    .line 664
    .line 665
    goto :goto_1

    .line 666
    :cond_22
    return v2

    .line 667
    :cond_23
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 668
    .line 669
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDismissKeyguardIfInsecure:Z

    .line 670
    .line 671
    :goto_1
    return v1
.end method
