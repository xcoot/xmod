.class public final Lcom/android/server/devicestate/DeviceStateManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

.field public static sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# instance fields
.field public final mClient:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mService:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 14

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "Error: requested state should be an integer"

    .line 16
    .line 17
    const-string/jumbo v5, "to get the list of currently supported device states"

    .line 18
    .line 19
    .line 20
    const-string v6, "    print-states"

    .line 21
    .line 22
    const-string v7, "Run:"

    .line 23
    .line 24
    const-string v8, "-------------------"

    .line 25
    .line 26
    const-string/jumbo v9, "reset"

    .line 27
    .line 28
    .line 29
    const-string v10, "Error: "

    .line 30
    .line 31
    const-string v11, ""

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v13

    .line 38
    sparse-switch v13, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    :goto_0
    move v13, v0

    .line 42
    goto :goto_1

    .line 43
    :sswitch_0
    const-string/jumbo v13, "state"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    if-nez v13, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v13, 0x4

    .line 54
    goto :goto_1

    .line 55
    :sswitch_1
    const-string/jumbo v13, "print-states-simple"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    if-nez v13, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v13, 0x3

    .line 66
    goto :goto_1

    .line 67
    :sswitch_2
    const-string/jumbo v13, "print-states"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-nez v13, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v13, 0x2

    .line 78
    goto :goto_1

    .line 79
    :sswitch_3
    const-string/jumbo v13, "print-state"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    if-nez v13, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v13, v2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_4
    const-string v13, "base-state"

    .line 92
    .line 93
    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    move v13, v1

    .line 101
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    move v0, v1

    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_7

    .line 130
    .line 131
    sget-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 132
    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    .line 138
    .line 139
    .line 140
    sput-object v12, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_7

    .line 145
    :catch_0
    move-exception p1

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v9, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 160
    .line 161
    invoke-virtual {v9, p1, v12, v12}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 162
    .line 163
    .line 164
    sput-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    :cond_8
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    .line 235
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :goto_6
    return v0

    .line 248
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 253
    .line 254
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 255
    .line 256
    monitor-enter p1

    .line 257
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    invoke-direct {p1, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    .line 276
    .line 277
    invoke-direct {p1, v2}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    const-string p1, ","

    .line 285
    .line 286
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return v1

    .line 300
    :catchall_1
    move-exception p0

    .line 301
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    throw p0

    .line 303
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 304
    .line 305
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 306
    .line 307
    monitor-enter p1

    .line 308
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 313
    const-string p1, "Supported states: [\n"

    .line 314
    .line 315
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move p1, v1

    .line 319
    :goto_8
    move-object v0, p0

    .line 320
    check-cast v0, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-ge p1, v4, :cond_9

    .line 327
    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v5, "  "

    .line 331
    .line 332
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v0, ",\n"

    .line 343
    .line 344
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    add-int/2addr p1, v2

    .line 355
    goto :goto_8

    .line 356
    :cond_9
    const-string p0, "]"

    .line 357
    .line 358
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    return v1

    .line 362
    :catchall_2
    move-exception p0

    .line 363
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 364
    throw p0

    .line 365
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 366
    .line 367
    iget-object v13, p1, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 368
    .line 369
    monitor-enter v13

    .line 370
    :try_start_7
    iget-object p1, p1, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 371
    .line 372
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 373
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_a

    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 384
    .line 385
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 386
    .line 387
    .line 388
    move-result p0

    .line 389
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 390
    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    const-string p1, "Error: device state not available."

    .line 398
    .line 399
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    move v1, v2

    .line 403
    :goto_9
    return v1

    .line 404
    :catchall_3
    move-exception p0

    .line 405
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 406
    throw p0

    .line 407
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    if-nez p1, :cond_b

    .line 412
    .line 413
    invoke-virtual {p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    .line 414
    .line 415
    .line 416
    :goto_a
    move v0, v1

    .line 417
    goto/16 :goto_e

    .line 418
    .line 419
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 420
    .line 421
    .line 422
    move-result-wide v2

    .line 423
    :try_start_9
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    if-eqz v9, :cond_c

    .line 428
    .line 429
    sget-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 430
    .line 431
    if-eqz p1, :cond_d

    .line 432
    .line 433
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelBaseStateOverride()V

    .line 436
    .line 437
    .line 438
    sput-object v12, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 439
    .line 440
    goto :goto_b

    .line 441
    :catchall_4
    move-exception p0

    .line 442
    goto :goto_f

    .line 443
    :catch_2
    move-exception p1

    .line 444
    goto :goto_c

    .line 445
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    iget-object v9, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    .line 458
    .line 459
    invoke-virtual {v9, p1, v12, v12}, Landroid/hardware/devicestate/DeviceStateManager;->requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 460
    .line 461
    .line 462
    sput-object p1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 463
    .line 464
    :cond_d
    :goto_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    .line 466
    .line 467
    goto :goto_a

    .line 468
    :goto_c
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 527
    .line 528
    .line 529
    move-result-object p0

    .line 530
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 531
    .line 532
    .line 533
    :goto_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    .line 535
    .line 536
    goto :goto_e

    .line 537
    :catch_3
    :try_start_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 538
    .line 539
    .line 540
    move-result-object p0

    .line 541
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 542
    .line 543
    .line 544
    goto :goto_d

    .line 545
    :goto_e
    return v0

    .line 546
    :goto_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    .line 548
    .line 549
    throw p0

    .line 550
    nop

    .line 551
    :sswitch_data_0
    .sparse-switch
        -0x71a3416b -> :sswitch_4
        -0x54c2ea8f -> :sswitch_3
        -0x439a66de -> :sswitch_2
        -0x119b2743 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :pswitch_data_0
    .packed-switch 0x0
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
    const-string v0, "Device state manager (device_state) commands:"

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
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  state [reset|OVERRIDE_DEVICE_STATE]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Return or override device state."

    .line 26
    .line 27
    const-string v1, "  print-state"

    .line 28
    .line 29
    const-string v2, "    Return the current device state."

    .line 30
    .line 31
    const-string v3, "  print-states"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    Return list of currently supported device states."

    .line 37
    .line 38
    const-string v1, "  print-states-simple"

    .line 39
    .line 40
    const-string v2, "    Return the currently supported device states in comma separated format."

    .line 41
    .line 42
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final printAllStates(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 7
    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_1
    iget-object v1, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 15
    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "Committed state: "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "(none)"

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const-string v0, "----------------------"

    .line 66
    .line 67
    const-string v2, "Base state: "

    .line 68
    .line 69
    invoke-static {p1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v1, "(none)"

    .line 91
    .line 92
    :goto_1
    const-string v2, "Override state: "

    .line 93
    .line 94
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    throw p0
.end method
