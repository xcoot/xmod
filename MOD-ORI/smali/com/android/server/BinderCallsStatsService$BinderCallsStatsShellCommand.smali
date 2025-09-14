.class public final Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPrintWriter:Ljava/io/PrintWriter;

.field public final synthetic this$0:Lcom/android/server/BinderCallsStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string/jumbo v2, "cpu usage threshold is set to "

    .line 4
    .line 5
    .line 6
    const-string v3, "Limit is set to "

    .line 7
    .line 8
    const-string/jumbo v4, "sampling internal is set to "

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v6, -0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return v6

    .line 19
    :cond_0
    const-string/jumbo v7, "persist.sys.binder_calls_detailed_tracking"

    .line 20
    .line 21
    .line 22
    const-string v8, "ShellCommand"

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    sparse-switch v9, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    :goto_0
    move v9, v6

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :sswitch_0
    const-string v9, "--enable-detailed-tracking"

    .line 35
    .line 36
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v9, 0xb

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_1
    const-string v9, "--disable-detailed-tracking"

    .line 48
    .line 49
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/16 v9, 0xa

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :sswitch_2
    const-string v9, "--enable"

    .line 61
    .line 62
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/16 v9, 0x9

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_3
    const-string v9, "--set-sampling"

    .line 74
    .line 75
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-nez v9, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const/16 v9, 0x8

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :sswitch_4
    const-string v9, "--set-limit"

    .line 87
    .line 88
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const/4 v9, 0x7

    .line 96
    goto :goto_1

    .line 97
    :sswitch_5
    const-string v9, "--dump-worksource-provider"

    .line 98
    .line 99
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    const/4 v9, 0x6

    .line 107
    goto :goto_1

    .line 108
    :sswitch_6
    const-string v9, "--work-source-uid"

    .line 109
    .line 110
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_7

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    const/4 v9, 0x5

    .line 118
    goto :goto_1

    .line 119
    :sswitch_7
    const-string v9, "--disable"

    .line 120
    .line 121
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_8

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    const/4 v9, 0x4

    .line 129
    goto :goto_1

    .line 130
    :sswitch_8
    const-string v9, "--no-sampling"

    .line 131
    .line 132
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-nez v9, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const/4 v9, 0x3

    .line 140
    goto :goto_1

    .line 141
    :sswitch_9
    const-string v9, "--reset"

    .line 142
    .line 143
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_a

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_a
    const/4 v9, 0x2

    .line 151
    goto :goto_1

    .line 152
    :sswitch_a
    const-string v9, "--set-cpu-threshold"

    .line 153
    .line 154
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_b

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_b
    move v9, v0

    .line 163
    goto :goto_1

    .line 164
    :sswitch_b
    const-string v9, "--history"

    .line 165
    .line 166
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-nez v9, :cond_c

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_c
    move v9, v1

    .line 175
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    return p0

    .line 183
    :pswitch_0
    const-string p1, "1"

    .line 184
    .line 185
    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 193
    .line 194
    .line 195
    const-string p0, "Detailed tracking enabled"

    .line 196
    .line 197
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :pswitch_1
    const-string p1, ""

    .line 203
    .line 204
    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 212
    .line 213
    .line 214
    const-string p0, "Detailed tracking disabled"

    .line 215
    .line 216
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 222
    .line 223
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 224
    .line 225
    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :pswitch_3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 243
    .line 244
    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :catch_0
    move-exception p0

    .line 263
    const-string p1, "--set-sampling execution failed"

    .line 264
    .line 265
    invoke-static {v8, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :pswitch_4
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 279
    .line 280
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setMaxBinderCallStats(I)V

    .line 283
    .line 284
    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .line 299
    .line 300
    goto/16 :goto_3

    .line 301
    .line 302
    :catch_1
    move-exception p0

    .line 303
    const-string p1, "--set-limit execution failed"

    .line 304
    .line 305
    invoke-static {v8, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 311
    .line 312
    iget-object p1, p1, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 315
    .line 316
    .line 317
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 320
    .line 321
    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string v0, "AppIds of apps that can set the work source:"

    .line 329
    .line 330
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_d

    .line 344
    .line 345
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Ljava/lang/Integer;

    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v3, "\t- "

    .line 354
    .line 355
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    invoke-virtual {p1, v0}, Lcom/android/internal/os/AppIdToPackageMap;->mapAppId(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 386
    .line 387
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 388
    .line 389
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->recordAllCallsForWorkSourceUid(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :catch_2
    const-string p0, "Invalid UID: "

    .line 394
    .line 395
    invoke-static {v5, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return v6

    .line 399
    :pswitch_7
    const/4 p0, 0x0

    .line 400
    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 405
    .line 406
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 407
    .line 408
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_3

    .line 412
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    const-string p1, "BinderCallsStatsService"

    .line 418
    .line 419
    const-string v0, "Resetting stats"

    .line 420
    .line 421
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 425
    .line 426
    new-array p1, v1, [Z

    .line 427
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 429
    .line 430
    .line 431
    const-string/jumbo p0, "binder_calls_stats reset."

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto :goto_3

    .line 438
    :pswitch_a
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 447
    .line 448
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 449
    .line 450
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setCpuUsageThreshold(I)Z

    .line 451
    .line 452
    .line 453
    move-result p0

    .line 454
    if-eqz p0, :cond_d

    .line 455
    .line 456
    new-instance p0, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 469
    .line 470
    .line 471
    goto :goto_3

    .line 472
    :catch_3
    move-exception p0

    .line 473
    const-string p1, "--set-cpu-threshold execution failed"

    .line 474
    .line 475
    invoke-static {v8, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .line 477
    .line 478
    goto :goto_3

    .line 479
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    .line 480
    .line 481
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 482
    .line 483
    invoke-virtual {p0, v5}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    .line 484
    .line 485
    .line 486
    :cond_d
    :goto_3
    return v1

    .line 487
    :sswitch_data_0
    .sparse-switch
        -0x7623b50c -> :sswitch_b
        -0x696fe145 -> :sswitch_a
        -0x60476451 -> :sswitch_9
        -0x4cd89b2d -> :sswitch_8
        -0x49c576b8 -> :sswitch_7
        -0x1fdb9dc6 -> :sswitch_6
        -0x6594f87 -> :sswitch_5
        -0x10ee710 -> :sswitch_4
        0xb1bfa92 -> :sswitch_3
        0x41a27323 -> :sswitch_2
        0x565319ef -> :sswitch_1
        0x79b4630a -> :sswitch_0
    .end sparse-switch

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
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "binder_calls_stats commands:"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "  --reset: Reset stats"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "  --enable: Enable tracking binder calls"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "  --disable: Disables tracking binder calls"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "  --no-sampling: Tracks all calls"

    .line 27
    .line 28
    const-string v1, "  --enable-detailed-tracking: Enables detailed tracking"

    .line 29
    .line 30
    const-string v2, "  --disable-detailed-tracking: Disables detailed tracking"

    .line 31
    .line 32
    const-string v3, "  --work-source-uid <UID>: Track all binder calls from the UID"

    .line 33
    .line 34
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "  --set-cpu-threshold <threshold>: Set new CPU threshold"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "  --set-sampling <sampling value>: Set new sampling ratio"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
