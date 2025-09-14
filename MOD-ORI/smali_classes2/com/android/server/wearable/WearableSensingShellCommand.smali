.class public final Lcom/android/server/wearable/WearableSensingShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sPipe:[Landroid/os/ParcelFileDescriptor;

.field public static final sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/wearable/WearableSensingShellCommand;->sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sparse-switch v4, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string v4, "get-last-status-code"

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    const/16 v3, 0x8

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :sswitch_1
    const-string/jumbo v4, "provide-data-stream"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v3, 0x7

    .line 46
    goto :goto_0

    .line 47
    :sswitch_2
    const-string/jumbo v4, "set-temporary-service"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v3, 0x6

    .line 58
    goto :goto_0

    .line 59
    :sswitch_3
    const-string v4, "create-data-stream"

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v3, 0x5

    .line 69
    goto :goto_0

    .line 70
    :sswitch_4
    const-string/jumbo v4, "provide-data"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const/4 v3, 0x4

    .line 81
    goto :goto_0

    .line 82
    :sswitch_5
    const-string/jumbo v4, "set-data-request-rate-limit-window-size"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    const/4 v3, 0x3

    .line 93
    goto :goto_0

    .line 94
    :sswitch_6
    const-string v4, "destroy-data-stream"

    .line 95
    .line 96
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_7

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    const/4 v3, 0x2

    .line 104
    goto :goto_0

    .line 105
    :sswitch_7
    const-string/jumbo v4, "write-to-data-stream"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_8

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    move v3, v1

    .line 116
    goto :goto_0

    .line 117
    :sswitch_8
    const-string v4, "get-bound-package"

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_9

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_9
    move v3, v0

    .line 127
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    return p0

    .line 135
    :pswitch_0
    const-string p1, "WearableSensingShellCommand"

    .line 136
    .line 137
    const-string v1, "getLastStatusCode"

    .line 138
    .line 139
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    .line 147
    .line 148
    iget p1, p1, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->mLastStatus:I

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    .line 152
    .line 153
    return v0

    .line 154
    :pswitch_1
    const-string p1, "WearableSensingShellCommand"

    .line 155
    .line 156
    const-string/jumbo v1, "provideDataStream"

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    .line 163
    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 175
    .line 176
    sget-object v1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    .line 177
    .line 178
    aget-object v1, v1, v0

    .line 179
    .line 180
    new-instance v2, Landroid/os/RemoteCallback;

    .line 181
    .line 182
    new-instance v3, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    invoke-direct {v3}, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wearable/WearableSensingManagerService;->provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    return v0

    .line 194
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-nez v2, :cond_b

    .line 211
    .line 212
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 213
    .line 214
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 215
    .line 216
    .line 217
    const-string p0, "WearableSensingManagerService temporary reset. "

    .line 218
    .line 219
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 232
    .line 233
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    new-instance p0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v1, "WearableSensingService temporarily set to "

    .line 239
    .line 240
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v1, " for "

    .line 244
    .line 245
    const-string/jumbo v4, "ms"

    .line 246
    .line 247
    .line 248
    invoke-static {v3, v2, v1, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_1
    return v0

    .line 256
    :pswitch_3
    const-string p0, "createDataStream"

    .line 257
    .line 258
    const-string p1, "WearableSensingShellCommand"

    .line 259
    .line 260
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    sput-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catch_0
    move-exception p0

    .line 271
    const-string v1, "Failed to createDataStream."

    .line 272
    .line 273
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .line 275
    .line 276
    :goto_2
    return v0

    .line 277
    :pswitch_4
    const-string p1, "WearableSensingShellCommand"

    .line 278
    .line 279
    const-string/jumbo v1, "provideData"

    .line 280
    .line 281
    .line 282
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    new-instance v4, Landroid/os/PersistableBundle;

    .line 306
    .line 307
    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 311
    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 314
    .line 315
    new-instance v1, Landroid/os/RemoteCallback;

    .line 316
    .line 317
    new-instance v3, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 318
    .line 319
    invoke-direct {v3}, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/android/server/wearable/WearableSensingManagerService;->provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 326
    .line 327
    .line 328
    return v0

    .line 329
    :pswitch_5
    const-string p1, "WearableSensingShellCommand"

    .line 330
    .line 331
    const-string/jumbo v1, "setDataRequestRateLimitWindowSize"

    .line 332
    .line 333
    .line 334
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-gtz p1, :cond_c

    .line 346
    .line 347
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerService;->resetDataRequestRateLimitWindowSize()V

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_c
    const/16 v1, 0x14

    .line 354
    .line 355
    if-ge p1, v1, :cond_d

    .line 356
    .line 357
    move p1, v1

    .line 358
    :cond_d
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 359
    .line 360
    int-to-long v1, p1

    .line 361
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->setDataRequestRateLimitWindowSize(Ljava/time/Duration;)V

    .line 366
    .line 367
    .line 368
    :goto_3
    return v0

    .line 369
    :pswitch_6
    const-string p0, "destroyDataStream"

    .line 370
    .line 371
    const-string p1, "WearableSensingShellCommand"

    .line 372
    .line 373
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :try_start_1
    sget-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    .line 377
    .line 378
    if-eqz p0, :cond_e

    .line 379
    .line 380
    aget-object p0, p0, v0

    .line 381
    .line 382
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 383
    .line 384
    .line 385
    sget-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    .line 386
    .line 387
    aget-object p0, p0, v1

    .line 388
    .line 389
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :catch_1
    move-exception p0

    .line 394
    const-string v1, "Failed to destroyDataStream."

    .line 395
    .line 396
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .line 398
    .line 399
    :cond_e
    :goto_4
    return v0

    .line 400
    :pswitch_7
    const-string/jumbo p1, "writeToDataStream"

    .line 401
    .line 402
    .line 403
    const-string v2, "WearableSensingShellCommand"

    .line 404
    .line 405
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    .line 409
    .line 410
    if-eqz p1, :cond_f

    .line 411
    .line 412
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    :try_start_2
    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    .line 417
    .line 418
    aget-object p1, p1, v1

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 425
    .line 426
    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    .line 435
    .line 436
    goto :goto_5

    .line 437
    :catch_2
    move-exception p0

    .line 438
    const-string p1, "Failed to writeToDataStream."

    .line 439
    .line 440
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .line 442
    .line 443
    :cond_f
    :goto_5
    return v0

    .line 444
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 457
    .line 458
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 459
    .line 460
    monitor-enter v3

    .line 461
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 466
    .line 467
    if-eqz p0, :cond_10

    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    monitor-exit v3

    .line 474
    goto :goto_6

    .line 475
    :catchall_0
    move-exception p0

    .line 476
    goto :goto_8

    .line 477
    :cond_10
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    :goto_6
    if-nez v2, :cond_11

    .line 479
    .line 480
    const-string p0, ""

    .line 481
    .line 482
    goto :goto_7

    .line 483
    :cond_11
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    :goto_7
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    return v0

    .line 491
    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    throw p0

    .line 493
    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_8
        -0x4da44da1 -> :sswitch_7
        -0x44a8be50 -> :sswitch_6
        -0x4100bb6b -> :sswitch_5
        -0x1cbfc0aa -> :sswitch_4
        0x22f5cfb2 -> :sswitch_3
        0x41db2e8e -> :sswitch_2
        0x5bbdadd7 -> :sswitch_1
        0x784ce7c8 -> :sswitch_0
    .end sparse-switch

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    :pswitch_data_0
    .packed-switch 0x0
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
    const-string v0, "WearableSensingCommands commands: "

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
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v0, "  create-data-stream: Creates a data stream to be provided."

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "  destroy-data-stream: Destroys a data stream if one was previously created."

    .line 29
    .line 30
    const-string v1, "  provide-data-stream USER_ID: Provides data stream to WearableSensingService."

    .line 31
    .line 32
    const-string v2, "  write-to-data-stream STRING: writes string to data stream."

    .line 33
    .line 34
    const-string v3, "  provide-data USER_ID KEY INTEGER: provide integer as data with key."

    .line 35
    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "  get-last-status-code: Prints the latest request status code."

    .line 40
    .line 41
    const-string v1, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    .line 42
    .line 43
    const-string v2, "  set-temporary-service USER_ID [PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    .line 44
    .line 45
    const-string v3, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "    To reset, call with just the USER_ID argument."

    .line 51
    .line 52
    const-string v1, "  set-data-request-rate-limit-window-size WINDOW_SIZE"

    .line 53
    .line 54
    const-string v2, "    Set the window size used in data request rate limiting to WINDOW_SIZE seconds."

    .line 55
    .line 56
    const-string v3, "    positive WINDOW_SIZE smaller than 20 will be automatically set to 20."

    .line 57
    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "    To reset, call with 0 or a negative WINDOW_SIZE."

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
