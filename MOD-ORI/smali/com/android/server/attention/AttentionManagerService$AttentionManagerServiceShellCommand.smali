.class public final Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

.field public final mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 15
    .line 16
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 22
    .line 23
    iput-wide v0, p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x4

    .line 18
    const/4 v4, 0x5

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v8, 0x0

    .line 23
    sparse-switch v2, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string/jumbo v2, "clearTestableAttentionService"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move v2, v7

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :sswitch_1
    const-string/jumbo v2, "getLastTestProximityUpdateCallbackCode"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    move v2, v4

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string/jumbo v2, "call"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move v2, v6

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string/jumbo v2, "setTestableAttentionService"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    move v2, v5

    .line 73
    goto :goto_1

    .line 74
    :sswitch_4
    const-string/jumbo v2, "getAttentionServiceComponent"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    move v2, v8

    .line 84
    goto :goto_1

    .line 85
    :sswitch_5
    const-string/jumbo v2, "getLastTestCallbackCode"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    move v2, v3

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    move v2, v1

    .line 97
    :goto_1
    const-string v9, ""

    .line 98
    .line 99
    if-eqz v2, :cond_10

    .line 100
    .line 101
    const-string/jumbo v10, "false"

    .line 102
    .line 103
    .line 104
    const-string/jumbo v11, "true"

    .line 105
    .line 106
    .line 107
    if-eq v2, v6, :cond_8

    .line 108
    .line 109
    if-eq v2, v5, :cond_5

    .line 110
    .line 111
    if-eq v2, v7, :cond_4

    .line 112
    .line 113
    if-eq v2, v3, :cond_3

    .line 114
    .line 115
    if-eq v2, v4, :cond_2

    .line 116
    .line 117
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    .line 127
    .line 128
    iget-wide v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    .line 129
    .line 130
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(D)V

    .line 131
    .line 132
    .line 133
    return v8

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 139
    .line 140
    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 143
    .line 144
    .line 145
    return v8

    .line 146
    :cond_4
    sput-object v9, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 149
    .line 150
    iput v1, p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    .line 153
    .line 154
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 155
    .line 156
    iput-wide v2, p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 159
    .line 160
    .line 161
    return v8

    .line 162
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_6

    .line 175
    .line 176
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    sput-object p1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 188
    .line 189
    if-eqz p0, :cond_7

    .line 190
    .line 191
    move-object v10, v11

    .line 192
    :cond_7
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    return v8

    .line 196
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    sparse-switch v2, :sswitch_data_1

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :sswitch_6
    const-string/jumbo v2, "checkAttention"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_9

    .line 216
    .line 217
    move p1, v8

    .line 218
    goto :goto_4

    .line 219
    :sswitch_7
    const-string/jumbo v2, "cancelCheckAttention"

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_9

    .line 227
    .line 228
    move p1, v6

    .line 229
    goto :goto_4

    .line 230
    :sswitch_8
    const-string/jumbo v2, "onStopProximityUpdates"

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_9

    .line 238
    .line 239
    move p1, v7

    .line 240
    goto :goto_4

    .line 241
    :sswitch_9
    const-string/jumbo v2, "onStartProximityUpdates"

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_9

    .line 249
    .line 250
    move p1, v5

    .line 251
    goto :goto_4

    .line 252
    :cond_9
    :goto_3
    move p1, v1

    .line 253
    :goto_4
    if-eqz p1, :cond_e

    .line 254
    .line 255
    if-eq p1, v6, :cond_d

    .line 256
    .line 257
    if-eq p1, v5, :cond_b

    .line 258
    .line 259
    if-ne p1, v7, :cond_a

    .line 260
    .line 261
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 266
    .line 267
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    .line 268
    .line 269
    invoke-virtual {v2, p0}, Lcom/android/server/attention/AttentionManagerService;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return v8

    .line 276
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    const-string p1, "Invalid argument"

    .line 279
    .line 280
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p0

    .line 284
    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    .line 291
    .line 292
    invoke-virtual {v2, p0}, Lcom/android/server/attention/AttentionManagerService;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-eqz p0, :cond_c

    .line 297
    .line 298
    move-object v10, v11

    .line 299
    :cond_c
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return v8

    .line 303
    :cond_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 310
    .line 311
    invoke-virtual {v2, p0}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return v8

    .line 318
    :cond_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 323
    .line 324
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 325
    .line 326
    const-wide/16 v3, 0x7d0

    .line 327
    .line 328
    invoke-virtual {v2, v3, v4, p0}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    .line 329
    .line 330
    .line 331
    move-result p0

    .line 332
    if-eqz p0, :cond_f

    .line 333
    .line 334
    move-object v10, v11

    .line 335
    :cond_f
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    return v8

    .line 339
    :cond_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 344
    .line 345
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 346
    .line 347
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    if-eqz p0, :cond_11

    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    :cond_11
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .line 359
    .line 360
    return v8

    .line 361
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v2, "Error: "

    .line 364
    .line 365
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    return v1

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x480b7350 -> :sswitch_5
        -0x3bbfc7b0 -> :sswitch_4
        -0x18bd18bb -> :sswitch_3
        0x2e7a5e -> :sswitch_2
        0x3e7cfd7c -> :sswitch_1
        0x47229030 -> :sswitch_0
    .end sparse-switch

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :sswitch_data_1
    .sparse-switch
        -0x5db0dcd2 -> :sswitch_9
        0x28e0cfec -> :sswitch_8
        0x2d7ba210 -> :sswitch_7
        0x589284f6 -> :sswitch_6
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Attention commands: "

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "  ---<service_package>:"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "       := Package containing the Attention Service implementation to bind to"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "  ---returns:"

    .line 26
    .line 27
    const-string v1, "       := true, if was bound successfully"

    .line 28
    .line 29
    const-string v2, "       := false, if was not bound successfully"

    .line 30
    .line 31
    const-string v3, "  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "  getAttentionServiceComponent: Get the current service component string"

    .line 37
    .line 38
    const-string v2, "       := If valid, the component string (in shorten form) for the currently bound service."

    .line 39
    .line 40
    const-string v3, "       := else, empty string"

    .line 41
    .line 42
    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "  call checkAttention: Calls check attention"

    .line 46
    .line 47
    const-string v2, "       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)"

    .line 48
    .line 49
    const-string v3, "       := false, otherwise"

    .line 50
    .line 51
    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "  call cancelCheckAttention: Cancels check attention"

    .line 55
    .line 56
    const-string v2, "  call onStartProximityUpdates: Calls onStartProximityUpdates"

    .line 57
    .line 58
    const-string v4, "       := true, if the request was successfully dispatched to the service implementation. (to see the result, call getLastTestProximityUpdateCallbackCode)"

    .line 59
    .line 60
    invoke-static {p0, v1, v2, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "  call onStopProximityUpdates: Cancels proximity updates"

    .line 64
    .line 65
    const-string v2, "  getLastTestCallbackCode"

    .line 66
    .line 67
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1"

    .line 71
    .line 72
    const-string v2, "  getLastTestProximityUpdateCallbackCode"

    .line 73
    .line 74
    const-string v3, "       := A double, representing the last proximity value received from the bounded implementation. If none, it will return -1.0"

    .line 75
    .line 76
    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final resetStates()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method
