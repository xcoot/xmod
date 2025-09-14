.class public final Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mInterface:Lcom/android/server/wm/WindowManagerService;

.field public final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getDisplayId(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "-d"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_4

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Error: "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "Error: bad number "

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_3
    const/4 p0, 0x0

    .line 79
    :goto_4
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string v0, "-d"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, -0x1

    .line 7
    const/4 v5, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    const/4 v8, 0x4

    .line 24
    sparse-switch v7, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :sswitch_0
    const-string/jumbo v7, "scaling"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    move v7, v2

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto/16 :goto_12

    .line 43
    .line 44
    :sswitch_1
    const-string v7, "force-opt-out-e2e-remove"

    .line 45
    .line 46
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    const/16 v7, 0x1c

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_2
    const-string v7, "fixed-to-user-rotation"

    .line 57
    .line 58
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    const/16 v7, 0x8

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_3
    const-string v7, "density"

    .line 69
    .line 70
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    move v7, v5

    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :sswitch_4
    const-string/jumbo v7, "reset-multi-window-config"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_1

    .line 87
    .line 88
    const/16 v7, 0x12

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :sswitch_5
    const-string v7, "last-grip-cmd"

    .line 93
    .line 94
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    const/16 v7, 0x16

    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :sswitch_6
    const-string/jumbo v7, "set-letterbox-style"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_1

    .line 112
    .line 113
    const/16 v7, 0xc

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :sswitch_7
    const-string/jumbo v7, "reset-letterbox-style"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_1

    .line 125
    .line 126
    const/16 v7, 0xe

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :sswitch_8
    const-string/jumbo v7, "set-sandbox-display-apis"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_1

    .line 138
    .line 139
    const/16 v7, 0xf

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :sswitch_9
    const-string v7, "logging"

    .line 144
    .line 145
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_1

    .line 150
    .line 151
    const/4 v7, 0x6

    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :sswitch_a
    const-string/jumbo v7, "size-density"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_1

    .line 162
    .line 163
    const/16 v7, 0x17

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :sswitch_b
    const-string/jumbo v7, "user-rotation"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_1

    .line 175
    .line 176
    const/4 v7, 0x7

    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :sswitch_c
    const-string/jumbo v7, "shell"

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-eqz v7, :cond_1

    .line 187
    .line 188
    const/16 v7, 0x15

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :sswitch_d
    const-string/jumbo v7, "reset"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_1

    .line 200
    .line 201
    const/16 v7, 0x13

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :sswitch_e
    const-string/jumbo v7, "set-multi-window-config"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_1

    .line 213
    .line 214
    const/16 v7, 0x10

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :sswitch_f
    const-string/jumbo v7, "remote-wallpaper"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_1

    .line 226
    .line 227
    const/16 v7, 0x18

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :sswitch_10
    const-string/jumbo v7, "size"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_1

    .line 239
    .line 240
    move v7, v3

    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :sswitch_11
    const-string v7, "dismiss-keyguard"

    .line 244
    .line 245
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_1

    .line 250
    .line 251
    move v7, v8

    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :sswitch_12
    const-string v7, "folded-area"

    .line 255
    .line 256
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_1

    .line 261
    .line 262
    move v7, v1

    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :sswitch_13
    const-string/jumbo v7, "screenshot"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_1

    .line 273
    .line 274
    const/16 v7, 0x19

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :sswitch_14
    const-string v7, "dump-visible-window-views"

    .line 279
    .line 280
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_1

    .line 285
    .line 286
    const/16 v7, 0xb

    .line 287
    .line 288
    goto :goto_1

    .line 289
    :sswitch_15
    const-string v7, "disable-blur"

    .line 290
    .line 291
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-eqz v7, :cond_1

    .line 296
    .line 297
    const/16 v7, 0x14

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :sswitch_16
    const-string/jumbo v7, "tracing"

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-eqz v7, :cond_1

    .line 308
    .line 309
    const/4 v7, 0x5

    .line 310
    goto :goto_1

    .line 311
    :sswitch_17
    const-string v7, "force-opt-out-e2e-add"

    .line 312
    .line 313
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_1

    .line 318
    .line 319
    const/16 v7, 0x1b

    .line 320
    .line 321
    goto :goto_1

    .line 322
    :sswitch_18
    const-string v7, "background-display"

    .line 323
    .line 324
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-eqz v7, :cond_1

    .line 329
    .line 330
    const/16 v7, 0x1a

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :sswitch_19
    const-string/jumbo v7, "set-ignore-orientation-request"

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-eqz v7, :cond_1

    .line 341
    .line 342
    const/16 v7, 0x9

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :sswitch_1a
    const-string v7, "get-ignore-orientation-request"

    .line 346
    .line 347
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-eqz v7, :cond_1

    .line 352
    .line 353
    const/16 v7, 0xa

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :sswitch_1b
    const-string v7, "get-multi-window-config"

    .line 357
    .line 358
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-eqz v7, :cond_1

    .line 363
    .line 364
    const/16 v7, 0x11

    .line 365
    .line 366
    goto :goto_1

    .line 367
    :sswitch_1c
    const-string v7, "get-letterbox-style"

    .line 368
    .line 369
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-eqz v7, :cond_1

    .line 374
    .line 375
    const/16 v7, 0xd

    .line 376
    .line 377
    goto :goto_1

    .line 378
    :cond_1
    :goto_0
    move v7, v4

    .line 379
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    return p0

    .line 387
    :pswitch_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    .line 388
    .line 389
    if-eqz p1, :cond_18

    .line 390
    .line 391
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 396
    .line 397
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 398
    .line 399
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 400
    .line 401
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->updateForceOptOutEdgeToEdgePackage(Ljava/lang/String;Z)V

    .line 402
    .line 403
    .line 404
    return v3

    .line 405
    :pswitch_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    .line 406
    .line 407
    if-eqz p1, :cond_18

    .line 408
    .line 409
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 416
    .line 417
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 418
    .line 419
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->updateForceOptOutEdgeToEdgePackage(Ljava/lang/String;Z)V

    .line 420
    .line 421
    .line 422
    return v3

    .line 423
    :pswitch_2
    new-array p1, v8, [Ljava/lang/String;

    .line 424
    .line 425
    move v0, v3

    .line 426
    :goto_2
    if-ge v0, v8, :cond_2

    .line 427
    .line 428
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    aput-object v1, p1, v0

    .line 433
    .line 434
    add-int/2addr v0, v5

    .line 435
    goto :goto_2

    .line 436
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 437
    .line 438
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 439
    .line 440
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 441
    .line 442
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    .line 443
    .line 444
    invoke-virtual {p0, v6, p1}, Lcom/android/server/wm/WmScreenshotShellCommand;->exec(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return v3

    .line 448
    :pswitch_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    .line 449
    .line 450
    if-eqz p1, :cond_18

    .line 451
    .line 452
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .line 458
    .line 459
    const-string v0, "finish"

    .line 460
    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_4

    .line 466
    .line 467
    const-string/jumbo v0, "start"

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-nez p1, :cond_3

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 478
    .line 479
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mShellRemoteAnimRunner:Landroid/view/IRemoteAnimationRunner;

    .line 480
    .line 481
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService;->startRemoteWallpaperAnimation(Landroid/view/IRemoteAnimationRunner;I)Z

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    if-eqz p0, :cond_5

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 489
    .line 490
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mShellRemoteAnimRunner:Landroid/view/IRemoteAnimationRunner;

    .line 491
    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishRemoteWallpaperAnimation(Landroid/view/IRemoteAnimationRunner;)Z

    .line 493
    .line 494
    .line 495
    move-result p0

    .line 496
    if-eqz p0, :cond_5

    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_5
    :goto_3
    move v3, v4

    .line 500
    :goto_4
    return v3

    .line 501
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySizeDensity(Ljava/io/PrintWriter;)I

    .line 502
    .line 503
    .line 504
    move-result p0

    .line 505
    return p0

    .line 506
    :pswitch_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 507
    .line 508
    if-eqz p1, :cond_18

    .line 509
    .line 510
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 511
    .line 512
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 513
    .line 514
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 515
    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v0, "lastGripCmd="

    .line 519
    .line 520
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 524
    .line 525
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    move-result-object p0

    .line 529
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    const-string p1, "TspStateManager"

    .line 541
    .line 542
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    return v3

    .line 546
    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runWmShellCommand(Ljava/io/PrintWriter;)I

    .line 547
    .line 548
    .line 549
    move-result p0

    .line 550
    return p0

    .line 551
    :pswitch_7
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBlurDisabled(Ljava/io/PrintWriter;)I

    .line 552
    .line 553
    .line 554
    move-result p0

    .line 555
    return p0

    .line 556
    :pswitch_8
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runReset(Ljava/io/PrintWriter;)V

    .line 557
    .line 558
    .line 559
    return v3

    .line 560
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()V

    .line 561
    .line 562
    .line 563
    return v3

    .line 564
    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetMultiWindowConfig(Ljava/io/PrintWriter;)V

    .line 565
    .line 566
    .line 567
    return v3

    .line 568
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetMultiWindowConfig()I

    .line 569
    .line 570
    .line 571
    move-result p0

    .line 572
    return p0

    .line 573
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_6

    .line 582
    .line 583
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    move-result p1

    .line 591
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    move-object v9, v0

    .line 596
    move v0, p1

    .line 597
    move-object p1, v9

    .line 598
    goto :goto_5

    .line 599
    :cond_6
    move v0, v3

    .line 600
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    sparse-switch v7, :sswitch_data_1

    .line 608
    .line 609
    .line 610
    :goto_6
    move v1, v4

    .line 611
    goto :goto_7

    .line 612
    :sswitch_1d
    const-string v1, "false"

    .line 613
    .line 614
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-nez v1, :cond_7

    .line 619
    .line 620
    goto :goto_6

    .line 621
    :cond_7
    move v1, v2

    .line 622
    goto :goto_7

    .line 623
    :sswitch_1e
    const-string/jumbo v2, "true"

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-nez v2, :cond_a

    .line 631
    .line 632
    goto :goto_6

    .line 633
    :sswitch_1f
    const-string v1, "1"

    .line 634
    .line 635
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    if-nez v1, :cond_8

    .line 640
    .line 641
    goto :goto_6

    .line 642
    :cond_8
    move v1, v5

    .line 643
    goto :goto_7

    .line 644
    :sswitch_20
    const-string v1, "0"

    .line 645
    .line 646
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-nez v1, :cond_9

    .line 651
    .line 652
    goto :goto_6

    .line 653
    :cond_9
    move v1, v3

    .line 654
    :cond_a
    :goto_7
    packed-switch v1, :pswitch_data_1

    .line 655
    .line 656
    .line 657
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 658
    .line 659
    .line 660
    move-result-object p0

    .line 661
    const-string v0, "Error: expecting true, 1, false, 0, but we get "

    .line 662
    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    move v3, v4

    .line 671
    goto :goto_8

    .line 672
    :pswitch_d
    move v5, v3

    .line 673
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 674
    .line 675
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setSandboxDisplayApis(IZ)V

    .line 676
    .line 677
    .line 678
    :goto_8
    return v3

    .line 679
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetLetterboxStyle()I

    .line 680
    .line 681
    .line 682
    move-result p0

    .line 683
    return p0

    .line 684
    :pswitch_10
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetLetterboxStyle(Ljava/io/PrintWriter;)V

    .line 685
    .line 686
    .line 687
    return v3

    .line 688
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxStyle()I

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    return p0

    .line 693
    :pswitch_12
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runDumpVisibleWindowViews(Ljava/io/PrintWriter;)V

    .line 694
    .line 695
    .line 696
    return v3

    .line 697
    :pswitch_13
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)V

    .line 698
    .line 699
    .line 700
    return v3

    .line 701
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetIgnoreOrientationRequest()I

    .line 702
    .line 703
    .line 704
    move-result p0

    .line 705
    return p0

    .line 706
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    if-nez p1, :cond_b

    .line 711
    .line 712
    invoke-virtual {p0, v3, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(ILjava/io/PrintWriter;)I

    .line 713
    .line 714
    .line 715
    goto/16 :goto_d

    .line 716
    .line 717
    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-eqz v0, :cond_c

    .line 722
    .line 723
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    move-result p1

    .line 731
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    move-object v9, v0

    .line 736
    move v0, p1

    .line 737
    move-object p1, v9

    .line 738
    goto :goto_9

    .line 739
    :cond_c
    move v0, v3

    .line 740
    :goto_9
    if-nez p1, :cond_d

    .line 741
    .line 742
    invoke-virtual {p0, v0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(ILjava/io/PrintWriter;)I

    .line 743
    .line 744
    .line 745
    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 746
    goto :goto_d

    .line 747
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 748
    .line 749
    .line 750
    move-result v7

    .line 751
    sparse-switch v7, :sswitch_data_2

    .line 752
    .line 753
    .line 754
    :goto_a
    move v7, v4

    .line 755
    goto :goto_b

    .line 756
    :sswitch_21
    const-string v7, "default"

    .line 757
    .line 758
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    if-nez v7, :cond_e

    .line 763
    .line 764
    goto :goto_a

    .line 765
    :cond_e
    move v7, v2

    .line 766
    goto :goto_b

    .line 767
    :sswitch_22
    const-string v7, "disabled"

    .line 768
    .line 769
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v7

    .line 773
    if-nez v7, :cond_f

    .line 774
    .line 775
    goto :goto_a

    .line 776
    :cond_f
    move v7, v1

    .line 777
    goto :goto_b

    .line 778
    :sswitch_23
    const-string v7, "enabled_if_no_auto_rotation"

    .line 779
    .line 780
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v7

    .line 784
    if-nez v7, :cond_10

    .line 785
    .line 786
    goto :goto_a

    .line 787
    :cond_10
    move v7, v5

    .line 788
    goto :goto_b

    .line 789
    :sswitch_24
    const-string v7, "enabled"

    .line 790
    .line 791
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v7

    .line 795
    if-nez v7, :cond_11

    .line 796
    .line 797
    goto :goto_a

    .line 798
    :cond_11
    move v7, v3

    .line 799
    :goto_b
    packed-switch v7, :pswitch_data_2

    .line 800
    .line 801
    .line 802
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 803
    .line 804
    .line 805
    move-result-object p0

    .line 806
    const-string v0, "Error: expecting enabled, disabled or default, but we get "

    .line 807
    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    move v3, v4

    .line 816
    goto :goto_d

    .line 817
    :pswitch_16
    move v1, v3

    .line 818
    goto :goto_c

    .line 819
    :pswitch_17
    move v1, v5

    .line 820
    goto :goto_c

    .line 821
    :pswitch_18
    move v1, v2

    .line 822
    :goto_c
    :pswitch_19
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 823
    .line 824
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setFixedToUserRotation(II)V

    .line 825
    .line 826
    .line 827
    :goto_d
    return v3

    .line 828
    :pswitch_1a
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayUserRotation(Ljava/io/PrintWriter;)I

    .line 829
    .line 830
    .line 831
    move-result p0

    .line 832
    return p0

    .line 833
    :pswitch_1b
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    instance-of v0, p1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 838
    .line 839
    if-nez v0, :cond_13

    .line 840
    .line 841
    instance-of v0, p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    .line 842
    .line 843
    if-eqz v0, :cond_12

    .line 844
    .line 845
    goto :goto_e

    .line 846
    :cond_12
    const-string p0, "ProtoLog impl doesn\'t support handling commands"

    .line 847
    .line 848
    invoke-virtual {v6, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    goto :goto_10

    .line 852
    :cond_13
    :goto_e
    instance-of v0, p1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 853
    .line 854
    if-eqz v0, :cond_14

    .line 855
    .line 856
    check-cast p1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 857
    .line 858
    invoke-virtual {p1, p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    .line 859
    .line 860
    .line 861
    move-result p0

    .line 862
    goto :goto_f

    .line 863
    :cond_14
    check-cast p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    .line 864
    .line 865
    invoke-virtual {p1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    .line 866
    .line 867
    .line 868
    move-result p0

    .line 869
    :goto_f
    if-eqz p0, :cond_15

    .line 870
    .line 871
    const-string p1, "Not handled, please use `adb shell dumpsys activity service SystemUIService WMShell` if you are looking for ProtoLog in WMShell"

    .line 872
    .line 873
    invoke-virtual {v6, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    :cond_15
    move v4, p0

    .line 877
    :goto_10
    return v4

    .line 878
    :pswitch_1c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 879
    .line 880
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 881
    .line 882
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;)I

    .line 883
    .line 884
    .line 885
    move-result p0

    .line 886
    return p0

    .line 887
    :pswitch_1d
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 888
    .line 889
    const/4 p1, 0x0

    .line 890
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 891
    .line 892
    .line 893
    return v3

    .line 894
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    const-string v0, "auto"

    .line 899
    .line 900
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v0

    .line 904
    if-eqz v0, :cond_16

    .line 905
    .line 906
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 907
    .line 908
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    .line 909
    .line 910
    .line 911
    move-result p0

    .line 912
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingMode(II)V

    .line 913
    .line 914
    .line 915
    goto :goto_11

    .line 916
    :cond_16
    const-string/jumbo v0, "off"

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    if-eqz v0, :cond_17

    .line 924
    .line 925
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 926
    .line 927
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    move-result p0

    .line 931
    invoke-virtual {v0, p0, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingMode(II)V

    .line 932
    .line 933
    .line 934
    goto :goto_11

    .line 935
    :cond_17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 936
    .line 937
    .line 938
    move-result-object p0

    .line 939
    const-string p1, "Error: scaling must be \'auto\' or \'off\'"

    .line 940
    .line 941
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    move v3, v4

    .line 945
    :goto_11
    return v3

    .line 946
    :pswitch_1f
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    .line 947
    .line 948
    .line 949
    move-result p0

    .line 950
    return p0

    .line 951
    :pswitch_20
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    .line 952
    .line 953
    .line 954
    move-result p0

    .line 955
    return p0

    .line 956
    :pswitch_21
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    .line 957
    .line 958
    .line 959
    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 960
    return p0

    .line 961
    :goto_12
    const-string p1, "Remote exception: "

    .line 962
    .line 963
    invoke-static {p1, p0, v6}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 964
    .line 965
    .line 966
    :cond_18
    :pswitch_22
    return v4

    .line 967
    :sswitch_data_0
    .sparse-switch
        -0x7753caae -> :sswitch_1c
        -0x74c7d6cc -> :sswitch_1b
        -0x6d06f812 -> :sswitch_1a
        -0x64eeec9e -> :sswitch_19
        -0x6406bcdd -> :sswitch_18
        -0x630d178f -> :sswitch_17
        -0x3f9f2f3e -> :sswitch_16
        -0x3d8c3fd4 -> :sswitch_15
        -0x3c7b3dfb -> :sswitch_14
        -0x18d27a9a -> :sswitch_13
        -0x14126e26 -> :sswitch_12
        -0xdad5077 -> :sswitch_11
        0x35e001 -> :sswitch_10
        0x4cc93b -> :sswitch_f
        0x58b5840 -> :sswitch_e
        0x6761d4f -> :sswitch_d
        0x6855e30 -> :sswitch_c
        0xb3ebb40 -> :sswitch_b
        0xfbbc71c -> :sswitch_a
        0x1466cb5f -> :sswitch_9
        0x14833995 -> :sswitch_8
        0x2b9fb14b -> :sswitch_7
        0x2ca8ca5e -> :sswitch_6
        0x412e0196 -> :sswitch_5
        0x4fab00ad -> :sswitch_4
        0x5c8c94e8 -> :sswitch_3
        0x5e693ca7 -> :sswitch_2
        0x6c8db6b4 -> :sswitch_1
        0x71e5fb87 -> :sswitch_0
    .end sparse-switch

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
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
        :pswitch_22
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_20
        0x31 -> :sswitch_1f
        0x36758e -> :sswitch_1e
        0x5cb1923 -> :sswitch_1d
    .end sparse-switch

    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    :sswitch_data_2
    .sparse-switch
        -0x5ff074bf -> :sswitch_24
        -0x2dc7ed0c -> :sswitch_23
        0x10263a7c -> :sswitch_22
        0x5c13d641 -> :sswitch_21
    .end sparse-switch

    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
    const-string v0, "Window manager (window) commands:"

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
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Return or override display size."

    .line 26
    .line 27
    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    .line 28
    .line 29
    const-string v2, "  density [reset|DENSITY] [-d DISPLAY_ID] [-u UNIQUE_ID]"

    .line 30
    .line 31
    const-string v3, "    Return or override display density."

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    .line 37
    .line 38
    const-string v1, "    Return or override folded area."

    .line 39
    .line 40
    const-string v2, "  scaling [off|auto] [-d DISPLAY_ID]"

    .line 41
    .line 42
    const-string v3, "    Set display scaling mode."

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "  dismiss-keyguard"

    .line 48
    .line 49
    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    .line 50
    .line 51
    const-string v2, "  disable-blur [true|1|false|0]"

    .line 52
    .line 53
    const-string v3, "  user-rotation [-d DISPLAY_ID] [free|lock] [rotation]"

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "    Print or set user rotation mode and user rotation."

    .line 59
    .line 60
    const-string v1, "  dump-visible-window-views"

    .line 61
    .line 62
    const-string v2, "    Dumps the encoded view hierarchies of visible windows"

    .line 63
    .line 64
    const-string v3, "  fixed-to-user-rotation [-d DISPLAY_ID] [enabled|disabled|default"

    .line 65
    .line 66
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "      |enabled_if_no_auto_rotation]"

    .line 70
    .line 71
    const-string v1, "    Print or set rotating display for app requested orientation."

    .line 72
    .line 73
    const-string v2, "  set-ignore-orientation-request [-d DISPLAY_ID] [true|1|false|0]"

    .line 74
    .line 75
    const-string v3, "  get-ignore-orientation-request [-d DISPLAY_ID] "

    .line 76
    .line 77
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "    If app requested orientation should be ignored."

    .line 81
    .line 82
    const-string v1, "  set-sandbox-display-apis [true|1|false|0]"

    .line 83
    .line 84
    const-string v2, "    Sets override of Display APIs getRealSize / getRealMetrics to reflect "

    .line 85
    .line 86
    const-string v3, "    DisplayArea of the activity, or the window bounds if in letterbox or"

    .line 87
    .line 88
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "    Size Compat Mode."

    .line 92
    .line 93
    const-string v1, "  set-letterbox-style"

    .line 94
    .line 95
    const-string v2, "    Sets letterbox style using the following options:"

    .line 96
    .line 97
    const-string v3, "      --aspectRatio aspectRatio"

    .line 98
    .line 99
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v0, "        Aspect ratio of letterbox for fixed orientation. If aspectRatio <= 1.0"

    .line 103
    .line 104
    const-string v1, "        both it and R.dimen.config_fixedOrientationLetterboxAspectRatio will"

    .line 105
    .line 106
    const-string v2, "        be ignored and framework implementation will determine aspect ratio."

    .line 107
    .line 108
    const-string v3, "      --minAspectRatioForUnresizable aspectRatio"

    .line 109
    .line 110
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "        Default min aspect ratio for unresizable apps which is used when an"

    .line 114
    .line 115
    const-string v3, "        app is eligible for the size compat mode.  If aspectRatio <= 1.0"

    .line 116
    .line 117
    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "      --cornerRadius radius"

    .line 121
    .line 122
    const-string v1, "        Corners radius (in pixels) for activities in the letterbox mode."

    .line 123
    .line 124
    const-string v2, "        If radius < 0, both R.integer.config_letterboxActivityCornersRadius"

    .line 125
    .line 126
    const-string v3, "        and it will be ignored and corners of the activity won\'t be rounded."

    .line 127
    .line 128
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "      --backgroundType [reset|solid_color|app_color_background"

    .line 132
    .line 133
    const-string v1, "          |app_color_background_floating|wallpaper]"

    .line 134
    .line 135
    const-string v2, "        Type of background used in the letterbox mode."

    .line 136
    .line 137
    const-string v3, "      --backgroundColor color"

    .line 138
    .line 139
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "        Color of letterbox which is be used when letterbox background type"

    .line 143
    .line 144
    const-string v1, "        is \'solid-color\'. Use (set)get-letterbox-style to check and control"

    .line 145
    .line 146
    const-string v2, "        letterbox background type. See Color#parseColor for allowed color"

    .line 147
    .line 148
    const-string v3, "        formats (#RRGGBB and some colors by name, e.g. magenta or olive)."

    .line 149
    .line 150
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v0, "      --backgroundColorResource resource_name"

    .line 154
    .line 155
    const-string v1, "        Color resource name of letterbox background which is used when"

    .line 156
    .line 157
    const-string v2, "        background type is \'solid-color\'. Use (set)get-letterbox-style to"

    .line 158
    .line 159
    const-string v3, "        check and control background type. Parameter is a color resource"

    .line 160
    .line 161
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "        name, for example, @android:color/system_accent2_50."

    .line 165
    .line 166
    const-string v1, "      --wallpaperBlurRadius radius"

    .line 167
    .line 168
    const-string v2, "        Blur radius for \'wallpaper\' letterbox background. If radius <= 0"

    .line 169
    .line 170
    const-string v3, "        both it and R.dimen.config_letterboxBackgroundWallpaperBlurRadius"

    .line 171
    .line 172
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "        are ignored and 0 is used."

    .line 176
    .line 177
    const-string v1, "      --wallpaperDarkScrimAlpha alpha"

    .line 178
    .line 179
    const-string v2, "        Alpha of a black translucent scrim shown over \'wallpaper\'"

    .line 180
    .line 181
    const-string v3, "        letterbox background. If alpha < 0 or >= 1 both it and"

    .line 182
    .line 183
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "        R.dimen.config_letterboxBackgroundWallaperDarkScrimAlpha are ignored"

    .line 187
    .line 188
    const-string v1, "        and 0.0 (transparent) is used instead."

    .line 189
    .line 190
    const-string v2, "      --horizontalPositionMultiplier multiplier"

    .line 191
    .line 192
    const-string v3, "        Horizontal position of app window center. If multiplier < 0 or > 1,"

    .line 193
    .line 194
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v0, "        both it and R.dimen.config_letterboxHorizontalPositionMultiplier"

    .line 198
    .line 199
    const-string v1, "        are ignored and central position (0.5) is used."

    .line 200
    .line 201
    const-string v2, "      --verticalPositionMultiplier multiplier"

    .line 202
    .line 203
    const-string v3, "        Vertical position of app window center. If multiplier < 0 or > 1,"

    .line 204
    .line 205
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v0, "        both it and R.dimen.config_letterboxVerticalPositionMultiplier"

    .line 209
    .line 210
    const-string v2, "      --isHorizontalReachabilityEnabled [true|1|false|0]"

    .line 211
    .line 212
    const-string v3, "        Whether horizontal reachability repositioning is allowed for "

    .line 213
    .line 214
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v0, "        letterboxed fullscreen apps in landscape device orientation."

    .line 218
    .line 219
    const-string v1, "      --isVerticalReachabilityEnabled [true|1|false|0]"

    .line 220
    .line 221
    const-string v2, "        Whether vertical reachability repositioning is allowed for "

    .line 222
    .line 223
    const-string v3, "        letterboxed fullscreen apps in portrait device orientation."

    .line 224
    .line 225
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string v0, "      --defaultPositionForHorizontalReachability [left|center|right]"

    .line 229
    .line 230
    const-string v1, "        Default position of app window when horizontal reachability is."

    .line 231
    .line 232
    const-string v2, "        enabled."

    .line 233
    .line 234
    const-string v3, "      --defaultPositionForVerticalReachability [top|center|bottom]"

    .line 235
    .line 236
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v0, "        Default position of app window when vertical reachability is."

    .line 240
    .line 241
    const-string v1, "      --persistentPositionForHorizontalReachability [left|center|right]"

    .line 242
    .line 243
    const-string v3, "        Persistent position of app window when horizontal reachability is."

    .line 244
    .line 245
    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v0, "      --persistentPositionForVerticalReachability [top|center|bottom]"

    .line 249
    .line 250
    const-string v1, "        Persistent position of app window when vertical reachability is."

    .line 251
    .line 252
    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "      --isEducationEnabled [true|1|false|0]"

    .line 256
    .line 257
    const-string v1, "        Whether education is allowed for letterboxed fullscreen apps."

    .line 258
    .line 259
    const-string v2, "      --isSplitScreenAspectRatioForUnresizableAppsEnabled [true|1|false|0]"

    .line 260
    .line 261
    const-string v3, "        Whether using split screen aspect ratio as a default aspect ratio for"

    .line 262
    .line 263
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v0, "        unresizable apps."

    .line 267
    .line 268
    const-string v1, "      --isTranslucentLetterboxingEnabled [true|1|false|0]"

    .line 269
    .line 270
    const-string v2, "        Whether letterboxing for translucent activities is enabled."

    .line 271
    .line 272
    const-string v3, "      --isUserAppAspectRatioSettingsEnabled [true|1|false|0]"

    .line 273
    .line 274
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v0, "        Whether user aspect ratio settings are enabled."

    .line 278
    .line 279
    const-string v1, "      --isUserAppAspectRatioFullscreenEnabled [true|1|false|0]"

    .line 280
    .line 281
    const-string v2, "        Whether user aspect ratio fullscreen option is enabled."

    .line 282
    .line 283
    const-string v3, "      --isCameraCompatRefreshEnabled [true|1|false|0]"

    .line 284
    .line 285
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string v0, "        Whether camera compatibility refresh is enabled."

    .line 289
    .line 290
    const-string v1, "      --isCameraCompatRefreshCycleThroughStopEnabled [true|1|false|0]"

    .line 291
    .line 292
    const-string v2, "        Whether activity \"refresh\" in camera compatibility treatment should"

    .line 293
    .line 294
    const-string v3, "        happen using the \"stopped -> resumed\" cycle rather than"

    .line 295
    .line 296
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v0, "        \"paused -> resumed\" cycle."

    .line 300
    .line 301
    const-string v1, "  reset-letterbox-style [aspectRatio|cornerRadius|backgroundType"

    .line 302
    .line 303
    const-string v2, "      |backgroundColor|wallpaperBlurRadius|wallpaperDarkScrimAlpha"

    .line 304
    .line 305
    const-string v3, "      |horizontalPositionMultiplier|verticalPositionMultiplier"

    .line 306
    .line 307
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v0, "      |isHorizontalReachabilityEnabled|isVerticalReachabilityEnabled"

    .line 311
    .line 312
    const-string v1, "      |isEducationEnabled|defaultPositionMultiplierForHorizontalReachability"

    .line 313
    .line 314
    const-string v2, "      |isTranslucentLetterboxingEnabled|isUserAppAspectRatioSettingsEnabled"

    .line 315
    .line 316
    const-string v3, "      |persistentPositionMultiplierForHorizontalReachability"

    .line 317
    .line 318
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v0, "      |persistentPositionMultiplierForVerticalReachability"

    .line 322
    .line 323
    const-string v1, "      |defaultPositionMultiplierForVerticalReachability]"

    .line 324
    .line 325
    const-string v2, "    Resets overrides to default values for specified properties separated"

    .line 326
    .line 327
    const-string v3, "    by space, e.g. \'reset-letterbox-style aspectRatio cornerRadius\'."

    .line 328
    .line 329
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v0, "    If no arguments provided, all values will be reset."

    .line 333
    .line 334
    const-string v1, "  get-letterbox-style"

    .line 335
    .line 336
    const-string v2, "    Prints letterbox style configuration."

    .line 337
    .line 338
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string v0, "  set-multi-window-config"

    .line 342
    .line 343
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string v0, "    Sets options to determine if activity should be shown in multi window:"

    .line 347
    .line 348
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string v0, "      --supportsNonResizable [configValue]"

    .line 352
    .line 353
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v0, "        Whether the device supports non-resizable activity in multi window."

    .line 357
    .line 358
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v0, "        -1: The device doesn\'t support non-resizable in multi window."

    .line 362
    .line 363
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v0, "         0: The device supports non-resizable in multi window only if"

    .line 367
    .line 368
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v0, "            this is a large screen device."

    .line 372
    .line 373
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v0, "         1: The device always supports non-resizable in multi window."

    .line 377
    .line 378
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const-string v0, "      --respectsActivityMinWidthHeight [configValue]"

    .line 382
    .line 383
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const-string v0, "        Whether the device checks the activity min width/height to determine "

    .line 387
    .line 388
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string v0, "        if it can be shown in multi window."

    .line 392
    .line 393
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string v0, "        -1: The device ignores the activity min width/height when determining"

    .line 397
    .line 398
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v0, "            if it can be shown in multi window."

    .line 402
    .line 403
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const-string v0, "         0: If this is a small screen, the device compares the activity min"

    .line 407
    .line 408
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v0, "            width/height with the min multi window modes dimensions"

    .line 412
    .line 413
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string v0, "            the device supports to determine if the activity can be shown in"

    .line 417
    .line 418
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v0, "            multi window."

    .line 422
    .line 423
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const-string v0, "         1: The device always compare the activity min width/height with the"

    .line 427
    .line 428
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const-string v0, "            min multi window dimensions the device supports to determine if"

    .line 432
    .line 433
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    const-string v0, "            the activity can be shown in multi window."

    .line 437
    .line 438
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v0, "  get-multi-window-config"

    .line 442
    .line 443
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v0, "    Prints values of the multi window config options."

    .line 447
    .line 448
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string v0, "  reset-multi-window-config"

    .line 452
    .line 453
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const-string v0, "    Resets overrides to default values of the multi window config options."

    .line 457
    .line 458
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v0, "  reset [-d DISPLAY_ID]"

    .line 462
    .line 463
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string v0, "    Reset all override settings."

    .line 467
    .line 468
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 472
    .line 473
    if-nez v0, :cond_0

    .line 474
    .line 475
    const-string v0, "  tracing (start | stop)"

    .line 476
    .line 477
    const-string v1, "    Start or stop window tracing."

    .line 478
    .line 479
    const-string v2, "  logging (start | stop | enable | disable | enable-text | disable-text)"

    .line 480
    .line 481
    const-string v3, "    Logging settings."

    .line 482
    .line 483
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_0
    const-string v0, "  size-density [reset|WxH|WdpxHdp] [reset|DENSITY]"

    .line 487
    .line 488
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string v0, "    Return or override display size & density at once."

    .line 492
    .line 493
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    return-void
.end method

.method public final parseDimension(ILjava/lang/String;)I
    .locals 2

    .line 1
    const-string/jumbo v0, "px"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x2

    .line 16
    .line 17
    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const-string v0, "dp"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0xa0

    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplayDensity(I)I

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move p0, v0

    .line 44
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int/lit8 p1, p1, -0x2

    .line 49
    .line 50
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    mul-int/2addr p1, p0

    .line 59
    div-int/2addr p1, v0

    .line 60
    return p1

    .line 61
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0
.end method

.method public final printDisplayUserRotation(ILjava/io/PrintWriter;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayUserRotation(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "Error: check logcat for more details."

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p1, 0x0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "free"

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return p1

    .line 35
    :cond_1
    const-string p0, "lock "

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 41
    .line 42
    .line 43
    return p1
.end method

.method public final printFixedToUserRotation(ILjava/io/PrintWriter;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, -0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "WindowManager"

    .line 19
    .line 20
    const-string v2, "Trying to get fixed to user rotation for a missing display."

    .line 21
    .line 22
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    move p1, v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 34
    .line 35
    iget p1, p1, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 36
    .line 37
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-eq p1, v2, :cond_3

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    if-eq p1, v2, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    if-eq p1, v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "Error: check logcat for more details."

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :cond_1
    const-string p0, "enabled_if_no_auto_rotation"

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_2
    const-string p0, "enabled"

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_3
    const-string p0, "disabled"

    .line 76
    .line 77
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_4
    const-string p0, "default"

    .line 82
    .line 83
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final printInitialDisplayDensity(ILjava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Override density: "

    .line 2
    .line 3
    const-string v1, "Physical density: "

    .line 4
    .line 5
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DYNAMIC_RESOLUTION_CONTROL:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplayDensity(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eq v2, p0, :cond_1

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :goto_1
    const-string p1, "Remote exception: "

    .line 60
    .line 61
    invoke-static {p1, p0, p2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_2
    return-void
.end method

.method public final printInitialDisplaySize(ILjava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "x"

    .line 2
    .line 3
    .line 4
    const-string v1, "Override size: "

    .line 5
    .line 6
    const-string v2, "Physical size: "

    .line 7
    .line 8
    new-instance v3, Landroid/graphics/Point;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Landroid/graphics/Point;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    invoke-virtual {v5, p1, v3}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p1, v3, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p1, v3, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget p1, v4, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget p1, v4, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p1, "Remote exception: "

    .line 87
    .line 88
    invoke-static {p1, p0, p2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    :goto_0
    return-void
.end method

.method public final resetLetterboxStyle()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v3, 0x10500e7

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x10500f0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const v3, 0x10e00c3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 67
    .line 68
    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    .line 69
    .line 70
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const v3, 0x10500ee

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 86
    .line 87
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const v3, 0x10500ed

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 103
    .line 104
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const v3, 0x10500f1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const v3, 0x10500f5

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 135
    .line 136
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 137
    .line 138
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const v3, 0x11101cf

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 154
    .line 155
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const v3, 0x11101d2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 169
    .line 170
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 171
    .line 172
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const v3, 0x11101ca

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 186
    .line 187
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 188
    .line 189
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 199
    .line 200
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 209
    .line 210
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 217
    .line 218
    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    const/4 v2, 0x1

    .line 224
    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 232
    .line 233
    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v4, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    iget-object v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 240
    .line 241
    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 254
    .line 255
    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    const v5, 0x11101cd

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 269
    .line 270
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 271
    .line 272
    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    const v5, 0x11101d1

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 286
    .line 287
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 288
    .line 289
    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    const v5, 0x11101cb

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 303
    .line 304
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 305
    .line 306
    iput-boolean v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    .line 307
    .line 308
    iput-boolean v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    .line 309
    .line 310
    iput-boolean v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    .line 311
    .line 312
    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 313
    .line 314
    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 315
    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :catchall_0
    move-exception p0

    .line 322
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 324
    .line 325
    .line 326
    throw p0
.end method

.method public final runDisplayDensity(Ljava/io/PrintWriter;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "-d"

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const-string v5, "Error: bad number "

    .line 20
    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v4, "-u"

    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, v6, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "Error: the uniqueId is invalid "

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v6

    .line 81
    :cond_1
    :goto_0
    move v1, v7

    .line 82
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(ILjava/io/PrintWriter;)V

    .line 85
    .line 86
    .line 87
    return v7

    .line 88
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(ILjava/io/PrintWriter;)V

    .line 95
    .line 96
    .line 97
    return v7

    .line 98
    :cond_4
    const-string/jumbo p1, "reset"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    const/16 v0, 0x48

    .line 113
    .line 114
    if-ge p1, v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, "Error: density must be >= 72"

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v6

    .line 126
    :cond_6
    move v6, p1

    .line 127
    :goto_2
    const/4 p1, -0x2

    .line 128
    if-lez v6, :cond_7

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 131
    .line 132
    invoke-virtual {p0, v1, v6, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityForUser(III)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 137
    .line 138
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplayDensityForUser(II)V

    .line 139
    .line 140
    .line 141
    :goto_3
    return v7

    .line 142
    :catch_1
    move-exception p1

    .line 143
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v6
.end method

.method public final runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 29
    .line 30
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const-string p0, "Folded area: none"

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "Folded area: "

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ","

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ","

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ","

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 112
    .line 113
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    return v2

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_3
    const-string/jumbo p1, "reset"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const-string p1, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    .line 142
    .line 143
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-string p1, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 p0, -0x1

    .line 167
    return p0

    .line 168
    :cond_5
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/4 v3, 0x2

    .line 178
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    const/4 v4, 0x3

    .line 187
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const/4 v5, 0x4

    .line 196
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {v1, v0, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    .line 206
    .line 207
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 210
    .line 211
    .line 212
    return v2
.end method

.method public final runDisplaySize(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    const-string v3, "-d"

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    const-string/jumbo p1, "reset"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v3, -0x1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    move p1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/16 p1, 0x78

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/lit8 v4, v4, -0x1

    .line 53
    .line 54
    if-lt p1, v4, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :try_start_0
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    move p1, v3

    .line 76
    move v3, v0

    .line 77
    :goto_0
    if-ltz v3, :cond_4

    .line 78
    .line 79
    if-ltz p1, :cond_4

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySize(III)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySize(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return v2

    .line 93
    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "Error: bad number "

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return v3

    .line 116
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, "Error: bad size "

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return v3
.end method

.method public final runDisplaySizeDensity(Ljava/io/PrintWriter;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "Error: bad number "

    .line 10
    .line 11
    const-string/jumbo v3, "reset"

    .line 12
    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v6, "-d"

    .line 23
    .line 24
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move v6, v5

    .line 34
    :goto_1
    move v7, v6

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    move v6, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/16 v6, 0x78

    .line 45
    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-lez v6, :cond_b

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    add-int/lit8 v7, v7, -0x1

    .line 57
    .line 58
    if-lt v6, v7, :cond_3

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    :try_start_0
    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-nez v8, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(ILjava/io/PrintWriter;)V

    .line 93
    .line 94
    .line 95
    move p1, v5

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    if-eqz v8, :cond_6

    .line 98
    .line 99
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    const/16 v2, 0x48

    .line 111
    .line 112
    if-ge p1, v2, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string p1, "Error: density must be >= 72"

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return v4

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v4

    .line 145
    :cond_6
    :goto_3
    move p1, v4

    .line 146
    :cond_7
    :goto_4
    if-eqz v0, :cond_a

    .line 147
    .line 148
    if-nez v8, :cond_8

    .line 149
    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_8

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    if-ltz v7, :cond_9

    .line 158
    .line 159
    if-ltz v6, :cond_9

    .line 160
    .line 161
    if-lez p1, :cond_9

    .line 162
    .line 163
    :try_start_2
    new-instance v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    .line 164
    .line 165
    invoke-direct {v0, v5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v7}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setWidth(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, v6}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setHeight(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setDensity(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1, v5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setSaveToSettings(Z)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, v4}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setForcedHideCutout(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->build()Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 199
    .line 200
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySizeDensity(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .line 202
    .line 203
    :catch_1
    :cond_a
    :goto_5
    return v5

    .line 204
    :catch_2
    move-exception p1

    .line 205
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return v4

    .line 225
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-string p1, "Error: bad size "

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return v4
.end method

.method public final runDisplayUserRotation(Ljava/io/PrintWriter;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(ILjava/io/PrintWriter;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const-string v2, "-d"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v5, v2

    .line 34
    move v2, v0

    .line 35
    move-object v0, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v1

    .line 38
    :goto_0
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(ILjava/io/PrintWriter;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_2
    const-string p1, "free"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    const-string p1, "WindowManagerShellCommand#free"

    .line 56
    .line 57
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v1

    .line 61
    :cond_3
    const-string p1, "lock"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v0, -0x1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "Error: argument needs to be either -d, free or lock."

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    move p1, v0

    .line 94
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 95
    .line 96
    const-string v4, "WindowManagerShellCommand#lock"

    .line 97
    .line 98
    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Error: "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v0
.end method

.method public final runDumpVisibleWindowViews(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.DUMP"

    .line 4
    .line 5
    const-string/jumbo v2, "runDumpVisibleWindowViews()"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission$1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 34
    .line 35
    .line 36
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    iget v4, v4, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v4, -0x1

    .line 49
    :goto_0
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v5, p0, v4, v1}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;ILjava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    invoke-virtual {v3, v5, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 58
    .line 59
    .line 60
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :catch_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/util/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .line 80
    :try_start_4
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/android/internal/os/ByteTransferPipe;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    .line 85
    .line 86
    .line 87
    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :try_start_5
    new-instance v3, Ljava/util/zip/ZipEntry;

    .line 89
    .line 90
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {v3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :catch_1
    move-exception p0

    .line 111
    goto :goto_4

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 114
    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    .line 116
    .line 117
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 118
    :goto_2
    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 127
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "Error fetching dump "

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_5
    return-void

    .line 149
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 150
    .line 151
    const-string p1, "Requires DUMP permission"

    .line 152
    .line 153
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method public final runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "-d"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    const-string p0, "WindowManager"

    .line 41
    .line 42
    const-string v3, "Trying to getIgnoreOrientationRequest() for a missing display."

    .line 43
    .line 44
    invoke-static {p0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "ignoreOrientationRequest "

    .line 65
    .line 66
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, " for displayId="

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final runGetLetterboxStyle(Ljava/io/PrintWriter;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Is the fullscreen option in user aspect ratio settings enabled: "

    .line 6
    .line 7
    const-string v3, "Is the user aspect ratio settings enabled: "

    .line 8
    .line 9
    const-string v4, "Is letterboxing for translucent activities enabled: "

    .line 10
    .line 11
    const-string v5, "    Wallpaper dark scrim alpha: "

    .line 12
    .line 13
    const-string v6, "    Wallpaper blur radius: "

    .line 14
    .line 15
    const-string v7, "    Background color: "

    .line 16
    .line 17
    const-string v8, "Background type: "

    .line 18
    .line 19
    const-string v9, "    Refresh using \"stopped -> resumed\" cycle: "

    .line 20
    .line 21
    const-string v10, "    Is activity \"refresh\" in camera compatibility treatment enabled: "

    .line 22
    .line 23
    const-string v11, "Is using display aspect ratio as aspect ratio for all letterboxed apps: "

    .line 24
    .line 25
    const-string v12, "Is using split screen aspect ratio as aspect ratio for unresizable apps: "

    .line 26
    .line 27
    const-string v13, "Is education enabled: "

    .line 28
    .line 29
    const-string v14, "Current position for vertical reachability:"

    .line 30
    .line 31
    const-string v15, "Current position for horizontal reachability:"

    .line 32
    .line 33
    move-object/from16 v16, v2

    .line 34
    .line 35
    const-string v2, "Default position for vertical reachability: "

    .line 36
    .line 37
    move-object/from16 v17, v3

    .line 38
    .line 39
    const-string v3, "Default position for horizontal reachability: "

    .line 40
    .line 41
    move-object/from16 v18, v4

    .line 42
    .line 43
    const-string v4, "Is automatic reachability in book mode enabled: "

    .line 44
    .line 45
    move-object/from16 v19, v5

    .line 46
    .line 47
    const-string v5, "Is vertical reachability enabled: "

    .line 48
    .line 49
    move-object/from16 v20, v6

    .line 50
    .line 51
    const-string v6, "Is horizontal reachability enabled: "

    .line 52
    .line 53
    move-object/from16 v21, v7

    .line 54
    .line 55
    const-string v7, "Default min aspect ratio for unresizable apps: "

    .line 56
    .line 57
    move-object/from16 v22, v8

    .line 58
    .line 59
    const-string v8, "Aspect ratio: "

    .line 60
    .line 61
    move-object/from16 v23, v9

    .line 62
    .line 63
    const-string v9, "Vertical position multiplier for reachability: "

    .line 64
    .line 65
    move-object/from16 v24, v10

    .line 66
    .line 67
    const-string v10, "Horizontal position multiplier for reachability: "

    .line 68
    .line 69
    move-object/from16 v25, v11

    .line 70
    .line 71
    const-string v11, "Vertical position multiplier (tabletop mode): "

    .line 72
    .line 73
    move-object/from16 v26, v12

    .line 74
    .line 75
    const-string v12, "Horizontal position multiplier (book mode): "

    .line 76
    .line 77
    move-object/from16 v27, v13

    .line 78
    .line 79
    const-string v13, "Vertical position multiplier: "

    .line 80
    .line 81
    move-object/from16 v28, v14

    .line 82
    .line 83
    const-string v14, "Horizontal position multiplier: "

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    const-string v15, "Corner radius: "

    .line 88
    .line 89
    move-object/from16 v30, v2

    .line 90
    .line 91
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 94
    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 96
    .line 97
    .line 98
    monitor-enter v2

    .line 99
    move-object/from16 v31, v3

    .line 100
    .line 101
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v15, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 107
    .line 108
    iget v15, v15, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 109
    .line 110
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v14, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 126
    .line 127
    iget v14, v14, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 128
    .line 129
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 145
    .line 146
    iget v13, v13, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 147
    .line 148
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v12, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 164
    .line 165
    iget v12, v12, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    .line 166
    .line 167
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v11, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 183
    .line 184
    iget v11, v11, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    .line 185
    .line 186
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v10, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 202
    .line 203
    const/4 v11, 0x0

    .line 204
    invoke-virtual {v10, v11}, Lcom/android/server/wm/AppCompatConfiguration;->getHorizontalMultiplierForReachability(Z)F

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v9, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 224
    .line 225
    invoke-virtual {v9, v11}, Lcom/android/server/wm/AppCompatConfiguration;->getVerticalMultiplierForReachability(Z)F

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v8, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 245
    .line 246
    iget v8, v8, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 247
    .line 248
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 264
    .line 265
    iget v7, v7, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 266
    .line 267
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 283
    .line 284
    iget-boolean v6, v6, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 285
    .line 286
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 302
    .line 303
    iget-boolean v5, v5, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 304
    .line 305
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 321
    .line 322
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 323
    .line 324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 335
    .line 336
    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 337
    .line 338
    invoke-static {v3}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    move-object/from16 v4, v31

    .line 343
    .line 344
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 352
    .line 353
    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 354
    .line 355
    invoke-static {v3}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    move-object/from16 v4, v30

    .line 360
    .line 361
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 369
    .line 370
    iget-object v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 371
    .line 372
    iget v3, v3, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 373
    .line 374
    invoke-static {v3}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    move-object/from16 v4, v29

    .line 379
    .line 380
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 388
    .line 389
    iget-object v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 390
    .line 391
    iget v3, v3, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 392
    .line 393
    invoke-static {v3}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    move-object/from16 v4, v28

    .line 398
    .line 399
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    move-object/from16 v4, v27

    .line 409
    .line 410
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 414
    .line 415
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 416
    .line 417
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    move-object/from16 v4, v26

    .line 430
    .line 431
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 435
    .line 436
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 437
    .line 438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    move-object/from16 v4, v25

    .line 451
    .line 452
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 456
    .line 457
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 458
    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    move-object/from16 v4, v24

    .line 472
    .line 473
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 477
    .line 478
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    move-object/from16 v4, v23

    .line 493
    .line 494
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 498
    .line 499
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 500
    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    move-object/from16 v4, v22

    .line 514
    .line 515
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 519
    .line 520
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    invoke-static {v4}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    move-object/from16 v4, v21

    .line 541
    .line 542
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 546
    .line 547
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    move-object/from16 v4, v20

    .line 572
    .line 573
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 577
    .line 578
    iget v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 579
    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    move-object/from16 v4, v19

    .line 593
    .line 594
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 598
    .line 599
    iget v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 600
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    move-object/from16 v4, v18

    .line 614
    .line 615
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 619
    .line 620
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    move-object/from16 v4, v17

    .line 637
    .line 638
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 642
    .line 643
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    move-object/from16 v4, v16

    .line 660
    .line 661
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 665
    .line 666
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioFullscreenEnabled()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 682
    .line 683
    .line 684
    return-void

    .line 685
    :catchall_0
    move-exception v0

    .line 686
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 688
    .line 689
    .line 690
    throw v0
.end method

.method public final runGetMultiWindowConfig(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Respects activity min width/height in multi window: "

    .line 2
    .line 3
    const-string v1, "Supports non-resizable in multi window: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final runReset(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySize(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    const/4 v2, -0x2

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplayDensityForUser(II)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingMode(II)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    const-string v3, "WindowManagerShellCommand#runReset"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setFixedToUserRotation(II)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setIgnoreOrientationRequest(IZ)V

    .line 51
    .line 52
    .line 53
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setNullableIgnoreOrientationRequest(ILjava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->resetLetterboxStyle()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setSandboxDisplayApis(IZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()V

    .line 73
    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "Reset all settings for displayId="

    .line 78
    .line 79
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final runResetLetterboxStyle()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->resetLetterboxStyle()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, -0x1

    .line 35
    sparse-switch v3, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :sswitch_0
    const-string v3, "isUserAppAspectRatioFullscreenEnabled"

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const/16 v3, 0x14

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :sswitch_1
    const-string v3, "isUserAppAspectRatioSettingsEnabled"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    const/16 v3, 0x13

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :sswitch_2
    const-string v3, "isCameraCompatRefreshCycleThroughStopEnabled"

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    const/16 v3, 0x16

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :sswitch_3
    const-string v3, "isSplitScreenAspectRatioForUnresizableAppsEnabled"

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    const/16 v3, 0x10

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :sswitch_4
    const-string v3, "backgroundType"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    const/4 v3, 0x3

    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :sswitch_5
    const-string v3, "isCameraCompatRefreshEnabled"

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_1

    .line 109
    .line 110
    const/16 v3, 0x15

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_6
    const-string v3, "backgroundColor"

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_1

    .line 121
    .line 122
    const/4 v3, 0x4

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :sswitch_7
    const-string/jumbo v3, "verticalPositionMultiplier"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_1

    .line 133
    .line 134
    const/16 v3, 0x8

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_8
    const-string v3, "aspectRatio"

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_1

    .line 145
    .line 146
    move v3, v2

    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :sswitch_9
    const-string v3, "isTranslucentLetterboxingEnabled"

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_1

    .line 156
    .line 157
    const/16 v3, 0x12

    .line 158
    .line 159
    goto/16 :goto_2

    .line 160
    .line 161
    :sswitch_a
    const-string v3, "isVerticalReachabilityEnabled"

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_1

    .line 168
    .line 169
    const/16 v3, 0xa

    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :sswitch_b
    const-string/jumbo v3, "persistentPositionForVerticalReachability"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_1

    .line 181
    .line 182
    const/16 v3, 0xe

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :sswitch_c
    const-string v3, "cornerRadius"

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_1

    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :sswitch_d
    const-string v3, "defaultPositionForVerticalReachability"

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_1

    .line 204
    .line 205
    const/16 v3, 0xc

    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :sswitch_e
    const-string/jumbo v3, "wallpaperBlurRadius"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_1

    .line 217
    .line 218
    const/4 v3, 0x5

    .line 219
    goto :goto_2

    .line 220
    :sswitch_f
    const-string v3, "isHorizontalReachabilityEnabled"

    .line 221
    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_1

    .line 227
    .line 228
    const/16 v3, 0x9

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :sswitch_10
    const-string v3, "horizontalPositionMultiplier"

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_1

    .line 238
    .line 239
    const/4 v3, 0x7

    .line 240
    goto :goto_2

    .line 241
    :sswitch_11
    const-string/jumbo v3, "minAspectRatioForUnresizable"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_1

    .line 249
    .line 250
    move v3, v4

    .line 251
    goto :goto_2

    .line 252
    :sswitch_12
    const-string/jumbo v3, "persistentPositionForHorizontalReachability"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_1

    .line 260
    .line 261
    const/16 v3, 0xd

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :sswitch_13
    const-string v3, "isEducationEnabled"

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_1

    .line 271
    .line 272
    const/16 v3, 0xf

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :sswitch_14
    const-string v3, "defaultPositionForHorizontalReachability"

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_1

    .line 282
    .line 283
    const/16 v3, 0xb

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :sswitch_15
    const-string v3, "IsDisplayAspectRatioEnabledForFixedOrientationLetterbox"

    .line 287
    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-eqz v3, :cond_1

    .line 293
    .line 294
    const/16 v3, 0x11

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :sswitch_16
    const-string/jumbo v3, "wallpaperDarkScrimAlpha"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_1

    .line 305
    .line 306
    const/4 v3, 0x6

    .line 307
    goto :goto_2

    .line 308
    :cond_1
    :goto_1
    move v3, v5

    .line 309
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v3, "Error: Unrecognized letterbox style option: "

    .line 322
    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 338
    .line 339
    .line 340
    return v5

    .line 341
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 342
    .line 343
    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 348
    .line 349
    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 354
    .line 355
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 360
    .line 361
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    .line 362
    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 366
    .line 367
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 372
    .line 373
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 374
    .line 375
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const v3, 0x11101cb

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 391
    .line 392
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    const v3, 0x11101d1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 410
    .line 411
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    const v3, 0x11101cd

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 429
    .line 430
    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 431
    .line 432
    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    iget-object v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 437
    .line 438
    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 442
    .line 443
    invoke-static {v1, v4}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    invoke-virtual {v5, v1, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 453
    .line 454
    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 455
    .line 456
    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    iget-object v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 461
    .line 462
    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 466
    .line 467
    invoke-static {v1, v4}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-virtual {v5, v1, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_0

    .line 475
    .line 476
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 477
    .line 478
    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 479
    .line 480
    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 489
    .line 490
    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 491
    .line 492
    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 497
    .line 498
    goto/16 :goto_0

    .line 499
    .line 500
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 501
    .line 502
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 503
    .line 504
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    const v3, 0x11101d2

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 520
    .line 521
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 522
    .line 523
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    const v3, 0x11101cf

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 539
    .line 540
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 541
    .line 542
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    const v3, 0x10500f5

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :pswitch_f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 558
    .line 559
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 560
    .line 561
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    const v3, 0x10500f1

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :pswitch_10
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 577
    .line 578
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 579
    .line 580
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    const v3, 0x10500ed

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 592
    .line 593
    goto/16 :goto_0

    .line 594
    .line 595
    :pswitch_11
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 596
    .line 597
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 598
    .line 599
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    const v3, 0x10500ee

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 611
    .line 612
    goto/16 :goto_0

    .line 613
    .line 614
    :pswitch_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 615
    .line 616
    const/4 v2, 0x0

    .line 617
    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 618
    .line 619
    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    .line 620
    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :pswitch_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 624
    .line 625
    iput v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 626
    .line 627
    goto/16 :goto_0

    .line 628
    .line 629
    :pswitch_14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 630
    .line 631
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 632
    .line 633
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    const v3, 0x10e00c3

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 645
    .line 646
    goto/16 :goto_0

    .line 647
    .line 648
    :pswitch_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 649
    .line 650
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 651
    .line 652
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    const v3, 0x10500f0

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 664
    .line 665
    goto/16 :goto_0

    .line 666
    .line 667
    :pswitch_16
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 668
    .line 669
    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 670
    .line 671
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    const v3, 0x10500e7

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 679
    .line 680
    .line 681
    move-result v2

    .line 682
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 683
    .line 684
    goto/16 :goto_0

    .line 685
    .line 686
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 688
    .line 689
    .line 690
    return v2

    .line 691
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 693
    .line 694
    .line 695
    throw p0

    .line 696
    nop

    .line 697
    :sswitch_data_0
    .sparse-switch
        -0x7b105d10 -> :sswitch_16
        -0x494350ba -> :sswitch_15
        -0x43b458a6 -> :sswitch_14
        -0x4306f43d -> :sswitch_13
        -0x3da92e3c -> :sswitch_12
        -0x21cf3116 -> :sswitch_11
        -0x219aa4f2 -> :sswitch_10
        -0x215b74e4 -> :sswitch_f
        -0x258d085 -> :sswitch_e
        0xc6f3b6c -> :sswitch_d
        0x22c8f747 -> :sswitch_c
        0x2935f856 -> :sswitch_b
        0x3092c00a -> :sswitch_a
        0x34ac3255 -> :sswitch_9
        0x41194293 -> :sswitch_8
        0x421ec5e0 -> :sswitch_7
        0x4cb7f6d5 -> :sswitch_6
        0x53428397 -> :sswitch_5
        0x55161188 -> :sswitch_4
        0x6f68fc6f -> :sswitch_3
        0x6f7a48b6 -> :sswitch_2
        0x70d12177 -> :sswitch_1
        0x7d4b949f -> :sswitch_0
    .end sparse-switch

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final runResetMultiWindowConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x10e015c

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x10e0123

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 38
    .line 39
    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 46
    .line 47
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 48
    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final runSetAppCompatConfigurationPreset()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 18
    .line 19
    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Error: Preset should be provided as an argument "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Error: Preset format "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final runSetBlurDisabled(Ljava/io/PrintWriter;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Blur supported on device: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    .line 18
    .line 19
    const-string v2, "Blur enabled: "

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 30
    .line 31
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    :goto_0
    move p1, v1

    .line 43
    goto :goto_1

    .line 44
    :sswitch_0
    const-string p1, "false"

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x3

    .line 54
    goto :goto_1

    .line 55
    :sswitch_1
    const-string/jumbo p1, "true"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_2
    const-string p1, "1"

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move p1, v0

    .line 77
    goto :goto_1

    .line 78
    :sswitch_3
    const-string p1, "0"

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move p1, v3

    .line 88
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string p1, "Error: expected true, 1, false, 0, but got "

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v1

    .line 105
    :pswitch_0
    move v0, v3

    .line 106
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "disable_window_blurs"

    .line 115
    .line 116
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    .line 118
    .line 119
    return v3

    .line 120
    nop

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetBooleanFlag(Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "Error: expected true, 1, false, 0, but got empty input."

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v3, -0x1

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sparse-switch v4, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :sswitch_0
    const-string v4, "false"

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_1
    const-string/jumbo v4, "true"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x2

    .line 50
    goto :goto_0

    .line 51
    :sswitch_2
    const-string v4, "1"

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v3, v0

    .line 61
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v4, "0"

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v3, v1

    .line 72
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "Error: expected true, 1, false, 0, but got "

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_0
    move v0, v1

    .line 90
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 95
    .line 96
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    nop

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetFixedOrientationLetterboxAspectRatio()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 20
    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Error: aspect ratio should be provided as an argument "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Error: bad aspect ratio format "

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final runSetIgnoreOrientationRequest()I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "-d"

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v6, v3

    .line 29
    move v3, v2

    .line 30
    move-object v2, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v4

    .line 33
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sparse-switch v5, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    :goto_1
    move v5, v1

    .line 44
    goto :goto_2

    .line 45
    :sswitch_0
    const-string/jumbo v5, "reset"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v5, 0x4

    .line 56
    goto :goto_2

    .line 57
    :sswitch_1
    const-string v5, "false"

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v5, 0x3

    .line 67
    goto :goto_2

    .line 68
    :sswitch_2
    const-string/jumbo v5, "true"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v5, 0x2

    .line 79
    goto :goto_2

    .line 80
    :sswitch_3
    const-string v5, "1"

    .line 81
    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move v5, v0

    .line 90
    goto :goto_2

    .line 91
    :sswitch_4
    const-string v5, "0"

    .line 92
    .line 93
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    move v5, v4

    .line 101
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowManagerService;->setNullableIgnoreOrientationRequest(ILjava/lang/Boolean;)V

    .line 113
    .line 114
    .line 115
    return v4

    .line 116
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string v0, "Error: expecting true, 1, false, 0, but we get "

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return v1

    .line 130
    :pswitch_1
    move v0, v4

    .line 131
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    .line 132
    .line 133
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowManagerService;->setIgnoreOrientationRequest(IZ)V

    .line 134
    .line 135
    .line 136
    return v4

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_4
        0x31 -> :sswitch_3
        0x36758e -> :sswitch_2
        0x5cb1923 -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetLetterboxActivityCornersRadius()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 18
    .line 19
    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 20
    .line 21
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Error: corners radius should be provided as an argument "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Error: bad corners radius format "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final runSetLetterboxBackgroundColor()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 22
    .line 23
    iput-object v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 24
    .line 25
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Error: color in #RRGGBB format should be provided as an argument "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final runSetLetterboxBackgroundType()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string/jumbo v1, "wallpaper"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v4

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_3

    .line 30
    :sswitch_1
    const-string/jumbo v1, "solid_color"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    move v0, v5

    .line 40
    goto :goto_1

    .line 41
    :sswitch_2
    const-string v1, "app_color_background"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    move v0, v3

    .line 50
    goto :goto_1

    .line 51
    :sswitch_3
    const-string v1, "app_color_background_floating"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 62
    :goto_1
    if-eqz v0, :cond_3

    .line 63
    .line 64
    if-eq v0, v3, :cond_2

    .line 65
    .line 66
    if-eq v0, v2, :cond_4

    .line 67
    .line 68
    if-eq v0, v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "Error: \'solid_color\', \'app_color_background\' or \'wallpaper\' should be provided as an argument"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    move v2, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v2, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v2, v5

    .line 85
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 88
    .line 89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 90
    .line 91
    .line 92
    monitor-enter v0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 94
    .line 95
    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 96
    .line 97
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 102
    .line 103
    .line 104
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "Error: \'solid_color\', \'app_color_background\' or \'wallpaper\' should be provided as an argument"

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :sswitch_data_0
    .sparse-switch
        -0x655bff83 -> :sswitch_3
        -0xdc7a218 -> :sswitch_2
        0x48814ccf -> :sswitch_1
        0x57e60e02 -> :sswitch_0
    .end sparse-switch
.end method

.method public final runSetLetterboxBackgroundWallpaperBlurRadius()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    int-to-float v0, v0

    .line 18
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    float-to-int v0, v0

    .line 36
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 37
    .line 38
    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 39
    .line 40
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Error: blur radius should be provided as an argument "

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v2, "Error: blur radius format "

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final runSetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 18
    .line 19
    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 20
    .line 21
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Error: alpha should be provided as an argument "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Error: bad alpha format "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final runSetLetterboxDefaultPositionForHorizontalReachability()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, -0x514d33ab

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const v2, 0x32a007

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const v2, 0x677c21c

    .line 23
    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo v1, "right"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    move v0, v5

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    const-string v1, "left"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move v0, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v1, "center"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 62
    :goto_1
    if-eqz v0, :cond_5

    .line 63
    .line 64
    if-eq v0, v3, :cond_6

    .line 65
    .line 66
    if-eq v0, v5, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    move v3, v5

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move v3, v4

    .line 81
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 86
    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 90
    .line 91
    iput v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 92
    .line 93
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final runSetLetterboxDefaultPositionForVerticalReachability()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, -0x527265d5

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const v2, -0x514d33ab

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const v2, 0x1c155

    .line 23
    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo v1, "top"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    move v0, v5

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    const-string v1, "center"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move v0, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v1, "bottom"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 62
    :goto_1
    if-eqz v0, :cond_5

    .line 63
    .line 64
    if-eq v0, v4, :cond_4

    .line 65
    .line 66
    if-eq v0, v3, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    move v3, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move v3, v5

    .line 81
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 86
    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 90
    .line 91
    iput v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 92
    .line 93
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final runSetLetterboxStyle()I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v2, 0xa

    .line 4
    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x7

    .line 10
    const/4 v6, 0x6

    .line 11
    const/4 v7, 0x5

    .line 12
    const/4 v8, 0x4

    .line 13
    const/4 v9, 0x3

    .line 14
    const/4 v10, -0x1

    .line 15
    const/4 v11, 0x2

    .line 16
    const/4 v12, 0x1

    .line 17
    const/4 v13, 0x0

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v14, "Error: No arguments provided."

    .line 29
    .line 30
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_24

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    sparse-switch v14, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    :goto_1
    move v14, v10

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :sswitch_0
    const-string v14, "--isAutomaticReachabilityInBookModeEnabled"

    .line 57
    .line 58
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    if-nez v14, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/16 v14, 0x19

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :sswitch_1
    const-string v14, "--isUserAppAspectRatioSettingsEnabled"

    .line 70
    .line 71
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-nez v14, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/16 v14, 0x18

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :sswitch_2
    const-string v14, "--horizontalPositionMultiplier"

    .line 83
    .line 84
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-nez v14, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/16 v14, 0x17

    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :sswitch_3
    const-string v14, "--minAspectRatioForUnresizable"

    .line 96
    .line 97
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    if-nez v14, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/16 v14, 0x16

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :sswitch_4
    const-string v14, "--backgroundColorResource"

    .line 109
    .line 110
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    if-nez v14, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    const/16 v14, 0x15

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :sswitch_5
    const-string v14, "--isCameraCompatRefreshCycleThroughStopEnabled"

    .line 122
    .line 123
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-nez v14, :cond_6

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    const/16 v14, 0x14

    .line 131
    .line 132
    goto/16 :goto_2

    .line 133
    .line 134
    :sswitch_6
    const-string v14, "--persistentPositionForHorizontalReachability"

    .line 135
    .line 136
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-nez v14, :cond_7

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    const/16 v14, 0x13

    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :sswitch_7
    const-string v14, "--backgroundColor"

    .line 148
    .line 149
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-nez v14, :cond_8

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    const/16 v14, 0x12

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :sswitch_8
    const-string v14, "--isTranslucentLetterboxingEnabled"

    .line 161
    .line 162
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    if-nez v14, :cond_9

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_9
    const/16 v14, 0x11

    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :sswitch_9
    const-string v14, "--wallpaperDarkScrimAlpha"

    .line 174
    .line 175
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    if-nez v14, :cond_a

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_a
    const/16 v14, 0x10

    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :sswitch_a
    const-string v14, "--isVerticalReachabilityEnabled"

    .line 188
    .line 189
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    if-nez v14, :cond_b

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_b
    const/16 v14, 0xf

    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :sswitch_b
    const-string v14, "--isHorizontalReachabilityEnabled"

    .line 202
    .line 203
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    if-nez v14, :cond_c

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_c
    const/16 v14, 0xe

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :sswitch_c
    const-string v14, "--isUserAppAspectRatioFullscreenEnabled"

    .line 216
    .line 217
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    if-nez v14, :cond_d

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :cond_d
    const/16 v14, 0xd

    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :sswitch_d
    const-string v14, "--wallpaperBlurRadius"

    .line 230
    .line 231
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    if-nez v14, :cond_e

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_e
    const/16 v14, 0xc

    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :sswitch_e
    const-string v14, "--isSplitScreenAspectRatioForUnresizableAppsEnabled"

    .line 244
    .line 245
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-nez v14, :cond_f

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_f
    const/16 v14, 0xb

    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :sswitch_f
    const-string v14, "--backgroundType"

    .line 258
    .line 259
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    if-nez v14, :cond_10

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_10
    move v14, v2

    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :sswitch_10
    const-string v14, "--cornerRadius"

    .line 271
    .line 272
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    if-nez v14, :cond_11

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_11
    move v14, v3

    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :sswitch_11
    const-string v14, "--persistentPositionForVerticalReachability"

    .line 284
    .line 285
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-nez v14, :cond_12

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_12
    move v14, v4

    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :sswitch_12
    const-string v14, "--defaultPositionForHorizontalReachability"

    .line 297
    .line 298
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-nez v14, :cond_13

    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_13
    move v14, v5

    .line 307
    goto :goto_2

    .line 308
    :sswitch_13
    const-string v14, "--isCameraCompatRefreshEnabled"

    .line 309
    .line 310
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    if-nez v14, :cond_14

    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :cond_14
    move v14, v6

    .line 319
    goto :goto_2

    .line 320
    :sswitch_14
    const-string v14, "--isDisplayAspectRatioEnabledForFixedOrientationLetterbox"

    .line 321
    .line 322
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v14

    .line 326
    if-nez v14, :cond_15

    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :cond_15
    move v14, v7

    .line 331
    goto :goto_2

    .line 332
    :sswitch_15
    const-string v14, "--defaultPositionForVerticalReachability"

    .line 333
    .line 334
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    if-nez v14, :cond_16

    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :cond_16
    move v14, v8

    .line 343
    goto :goto_2

    .line 344
    :sswitch_16
    const-string v14, "--verticalPositionMultiplier"

    .line 345
    .line 346
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    if-nez v14, :cond_17

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_17
    move v14, v9

    .line 355
    goto :goto_2

    .line 356
    :sswitch_17
    const-string v14, "--isEducationEnabled"

    .line 357
    .line 358
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-nez v14, :cond_18

    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :cond_18
    move v14, v11

    .line 367
    goto :goto_2

    .line 368
    :sswitch_18
    const-string v14, "--appCompatConfigurationPreset"

    .line 369
    .line 370
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    if-nez v14, :cond_19

    .line 375
    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :cond_19
    move v14, v12

    .line 379
    goto :goto_2

    .line 380
    :sswitch_19
    const-string v14, "--aspectRatio"

    .line 381
    .line 382
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    if-nez v14, :cond_1a

    .line 387
    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :cond_1a
    move v14, v13

    .line 391
    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 392
    .line 393
    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v2, "Error: Unrecognized letterbox style option: "

    .line 399
    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    return v10

    .line 408
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 409
    .line 410
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    new-instance v14, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 414
    .line 415
    invoke-direct {v14, v0, v7}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_c

    .line 422
    .line 423
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 424
    .line 425
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    new-instance v14, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 429
    .line 430
    invoke-direct {v14, v0, v2}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_c

    .line 437
    .line 438
    :pswitch_2
    const-string v14, "Error: invalid multiplier value "

    .line 439
    .line 440
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 445
    .line 446
    .line 447
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    iget-object v15, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 449
    .line 450
    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 451
    .line 452
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 453
    .line 454
    .line 455
    monitor-enter v15

    .line 456
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 457
    .line 458
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    const-string/jumbo v7, "mLetterboxHorizontalPositionMultiplier"

    .line 462
    .line 463
    .line 464
    invoke-static {v0, v7}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .line 469
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_c

    .line 474
    .line 475
    :catchall_0
    move-exception v0

    .line 476
    goto :goto_3

    .line 477
    :catch_0
    move-exception v0

    .line 478
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_c

    .line 502
    .line 503
    :goto_3
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 505
    .line 506
    .line 507
    throw v0

    .line 508
    :catch_1
    move-exception v0

    .line 509
    goto :goto_4

    .line 510
    :catch_2
    move-exception v0

    .line 511
    goto :goto_5

    .line 512
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v14, "Error: multiplier should be provided as an argument "

    .line 519
    .line 520
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_c

    .line 534
    .line 535
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    new-instance v7, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    const-string v14, "Error: bad multiplier format "

    .line 542
    .line 543
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_c

    .line 557
    .line 558
    :pswitch_3
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 563
    .line 564
    .line 565
    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    .line 566
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 567
    .line 568
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 569
    .line 570
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 571
    .line 572
    .line 573
    monitor-enter v2

    .line 574
    :try_start_6
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 575
    .line 576
    iput v0, v7, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 577
    .line 578
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 579
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_c

    .line 583
    .line 584
    :catchall_1
    move-exception v0

    .line 585
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 586
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 587
    .line 588
    .line 589
    throw v0

    .line 590
    :catch_3
    move-exception v0

    .line 591
    goto :goto_6

    .line 592
    :catch_4
    move-exception v0

    .line 593
    goto :goto_7

    .line 594
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    new-instance v7, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    const-string v14, "Error: aspect ratio should be provided as an argument "

    .line 601
    .line 602
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_c

    .line 616
    .line 617
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    new-instance v7, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    const-string v14, "Error: bad aspect ratio format "

    .line 624
    .line 625
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    goto/16 :goto_c

    .line 639
    .line 640
    :pswitch_4
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 645
    .line 646
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 647
    .line 648
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    const-string v7, "color"

    .line 653
    .line 654
    const-string v14, "com.android.internal"

    .line 655
    .line 656
    invoke-virtual {v2, v0, v7, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    move-result v0
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    .line 660
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 661
    .line 662
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 663
    .line 664
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 665
    .line 666
    .line 667
    monitor-enter v2

    .line 668
    :try_start_9
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 669
    .line 670
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    iput-object v0, v7, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    .line 675
    .line 676
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 677
    .line 678
    if-eqz v0, :cond_1b

    .line 679
    .line 680
    invoke-virtual {v1, v13}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    .line 681
    .line 682
    .line 683
    :cond_1b
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 684
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_c

    .line 688
    .line 689
    :catchall_2
    move-exception v0

    .line 690
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 691
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 692
    .line 693
    .line 694
    throw v0

    .line 695
    :catch_5
    move-exception v0

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    new-instance v7, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string v14, "Error: color in \'@android:color/resource_name\' format should be provided as an argument "

    .line 703
    .line 704
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    goto/16 :goto_c

    .line 718
    .line 719
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 720
    .line 721
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 725
    .line 726
    invoke-direct {v2, v0, v9}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_c

    .line 733
    .line 734
    :pswitch_6
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    const v7, -0x514d33ab

    .line 743
    .line 744
    .line 745
    if-eq v2, v7, :cond_1e

    .line 746
    .line 747
    const v7, 0x32a007

    .line 748
    .line 749
    .line 750
    if-eq v2, v7, :cond_1d

    .line 751
    .line 752
    const v7, 0x677c21c

    .line 753
    .line 754
    .line 755
    if-eq v2, v7, :cond_1c

    .line 756
    .line 757
    goto :goto_8

    .line 758
    :cond_1c
    const-string/jumbo v2, "right"

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    if-eqz v0, :cond_1f

    .line 766
    .line 767
    move v0, v11

    .line 768
    goto :goto_9

    .line 769
    :catch_6
    move-exception v0

    .line 770
    goto :goto_b

    .line 771
    :cond_1d
    const-string v2, "left"

    .line 772
    .line 773
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-eqz v0, :cond_1f

    .line 778
    .line 779
    move v0, v13

    .line 780
    goto :goto_9

    .line 781
    :cond_1e
    const-string v2, "center"

    .line 782
    .line 783
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-eqz v0, :cond_1f

    .line 788
    .line 789
    move v0, v12

    .line 790
    goto :goto_9

    .line 791
    :cond_1f
    :goto_8
    move v0, v10

    .line 792
    :goto_9
    if-eqz v0, :cond_22

    .line 793
    .line 794
    if-eq v0, v12, :cond_21

    .line 795
    .line 796
    if-eq v0, v11, :cond_20

    .line 797
    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    const-string v2, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    .line 803
    .line 804
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6

    .line 805
    .line 806
    .line 807
    goto/16 :goto_c

    .line 808
    .line 809
    :cond_20
    move v0, v11

    .line 810
    goto :goto_a

    .line 811
    :cond_21
    move v0, v12

    .line 812
    goto :goto_a

    .line 813
    :cond_22
    move v0, v13

    .line 814
    :goto_a
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 815
    .line 816
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 817
    .line 818
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 819
    .line 820
    .line 821
    monitor-enter v2

    .line 822
    :try_start_c
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 823
    .line 824
    iget-object v7, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 825
    .line 826
    invoke-virtual {v7, v0, v13}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 827
    .line 828
    .line 829
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 830
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_c

    .line 834
    .line 835
    :catchall_3
    move-exception v0

    .line 836
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 837
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 838
    .line 839
    .line 840
    throw v0

    .line 841
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    const-string v14, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    .line 848
    .line 849
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_c

    .line 863
    .line 864
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundColor()V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_c

    .line 868
    .line 869
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 870
    .line 871
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 875
    .line 876
    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_c

    .line 883
    .line 884
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundWallpaperDarkScrimAlpha()V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_c

    .line 888
    .line 889
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 890
    .line 891
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 895
    .line 896
    invoke-direct {v2, v0, v8}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_c

    .line 903
    .line 904
    :pswitch_b
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 905
    .line 906
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 910
    .line 911
    invoke-direct {v2, v0, v13}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_c

    .line 918
    .line 919
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 920
    .line 921
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 925
    .line 926
    invoke-direct {v2, v0, v12}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 930
    .line 931
    .line 932
    goto :goto_c

    .line 933
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundWallpaperBlurRadius()V

    .line 934
    .line 935
    .line 936
    goto :goto_c

    .line 937
    :pswitch_e
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 938
    .line 939
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 943
    .line 944
    invoke-direct {v2, v0, v5}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 948
    .line 949
    .line 950
    goto :goto_c

    .line 951
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundType()V

    .line 952
    .line 953
    .line 954
    goto :goto_c

    .line 955
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxActivityCornersRadius()V

    .line 956
    .line 957
    .line 958
    goto :goto_c

    .line 959
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetPersistentLetterboxPositionForVerticalReachability()V

    .line 960
    .line 961
    .line 962
    goto :goto_c

    .line 963
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxDefaultPositionForHorizontalReachability()V

    .line 964
    .line 965
    .line 966
    goto :goto_c

    .line 967
    :pswitch_13
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 968
    .line 969
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 973
    .line 974
    invoke-direct {v2, v0, v11}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 978
    .line 979
    .line 980
    goto :goto_c

    .line 981
    :pswitch_14
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 982
    .line 983
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 987
    .line 988
    invoke-direct {v2, v0, v4}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 992
    .line 993
    .line 994
    goto :goto_c

    .line 995
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxDefaultPositionForVerticalReachability()V

    .line 996
    .line 997
    .line 998
    goto :goto_c

    .line 999
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxVerticalPositionMultiplier()V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_c

    .line 1003
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 1004
    .line 1005
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    new-instance v2, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    .line 1009
    .line 1010
    invoke-direct {v2, v0, v6}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_c

    .line 1017
    :pswitch_18
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 1018
    .line 1019
    if-eqz v0, :cond_23

    .line 1020
    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetAppCompatConfigurationPreset()V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_c

    .line 1025
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetFixedOrientationLetterboxAspectRatio()V

    .line 1026
    .line 1027
    .line 1028
    :cond_23
    :goto_c
    const/16 v2, 0xa

    .line 1029
    .line 1030
    const/4 v7, 0x5

    .line 1031
    goto/16 :goto_0

    .line 1032
    .line 1033
    :cond_24
    return v13

    .line 1034
    nop

    .line 1035
    :sswitch_data_0
    .sparse-switch
        -0x77a4870d -> :sswitch_19
        -0x6fe908ee -> :sswitch_18
        -0x64a1169d -> :sswitch_17
        -0x55e2fc80 -> :sswitch_16
        -0x4e21f6f4 -> :sswitch_15
        -0x4d26823a -> :sswitch_14
        -0x4b5826c9 -> :sswitch_13
        -0x3ec27306 -> :sswitch_12
        -0x3d7f394a -> :sswitch_11
        -0x3c327319 -> :sswitch_10
        -0x38b440d8 -> :sswitch_f
        -0x36509531 -> :sswitch_e
        -0x1402fa25 -> :sswitch_d
        -0x12036d01 -> :sswitch_c
        -0x11f42e84 -> :sswitch_b
        -0x427e196 -> :sswitch_a
        0xdb34950 -> :sswitch_9
        0x122db7f5 -> :sswitch_8
        0x2137fd35 -> :sswitch_7
        0x34278824 -> :sswitch_6
        0x37c05e56 -> :sswitch_5
        0x3d9c2063 -> :sswitch_4
        0x3f96248a -> :sswitch_3
        0x3fcab0ae -> :sswitch_2
        0x546e37d7 -> :sswitch_1
        0x67ad5ef8 -> :sswitch_0
    .end sparse-switch

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final runSetLetterboxVerticalPositionMultiplier()V
    .locals 5

    .line 1
    const-string v0, "Error: invalid multiplier value "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "mLetterboxVerticalPositionMultiplier"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v4}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput v1, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    goto :goto_1

    .line 71
    :catch_2
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Error: multiplier should be provided as an argument "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "Error: bad multiplier format "

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final runSetMultiWindowConfig()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Error: No arguments provided."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, -0x1

    .line 23
    if-eqz v2, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v4, "--supportsNonResizable"

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    const-string v4, "--respectsActivityMinWidthHeight"

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "Error: Unrecognized multi window option: "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v4, "-1"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    const-string v4, "0"

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    const-string v4, "1"

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v4, "Error: a config value of [-1, 0, 1] must be provided as an argument for respectsActivityMinWidthHeightMultiWindow"

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 105
    .line 106
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 107
    .line 108
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 109
    .line 110
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 111
    .line 112
    .line 113
    monitor-enter v4

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 115
    .line 116
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    .line 118
    iput v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 119
    .line 120
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 122
    .line 123
    .line 124
    :goto_1
    move v3, v0

    .line 125
    :goto_2
    add-int/2addr v1, v3

    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v4, "-1"

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_4

    .line 144
    .line 145
    const-string v4, "0"

    .line 146
    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_4

    .line 152
    .line 153
    const-string v4, "1"

    .line 154
    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_4

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v4, "Error: a config value of [-1, 0, 1] must be provided as an argument for supportsNonResizableMultiWindow"

    .line 166
    .line 167
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 176
    .line 177
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    .line 179
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 180
    .line 181
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 182
    .line 183
    .line 184
    monitor-enter v4

    .line 185
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 188
    .line 189
    iput v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 190
    .line 191
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_5
    if-nez v1, :cond_6

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_6
    move v0, v3

    .line 206
    :goto_3
    return v0
.end method

.method public final runSetPersistentLetterboxPositionForVerticalReachability()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, -0x527265d5

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const v2, -0x514d33ab

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const v2, 0x1c155

    .line 23
    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo v1, "top"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    move v0, v5

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    const-string v1, "center"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move v0, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v1, "bottom"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 62
    :goto_1
    if-eqz v0, :cond_5

    .line 63
    .line 64
    if-eq v0, v4, :cond_4

    .line 65
    .line 66
    if-eq v0, v3, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    move v3, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move v3, v5

    .line 81
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 86
    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 92
    .line 93
    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 94
    .line 95
    .line 96
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final runWmShellCommand(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const v4, -0x3f9f2f3e

    .line 12
    .line 13
    .line 14
    if-eq v3, v4, :cond_1

    .line 15
    .line 16
    const p0, 0x30cf41

    .line 17
    .line 18
    .line 19
    if-eq v3, p0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const-string p0, "help"

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_4

    .line 30
    :cond_1
    const-string/jumbo v3, "tracing"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_5

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sparse-switch v3, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    :goto_0
    move v3, v0

    .line 54
    goto :goto_1

    .line 55
    :sswitch_0
    const-string/jumbo v3, "start"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_1
    const-string/jumbo v3, "stop"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v3, 0x1

    .line 78
    goto :goto_1

    .line 79
    :sswitch_2
    const-string/jumbo v3, "save-for-bugreport"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v3, v1

    .line 90
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p1, "Error: expected \'start\' or \'stop\', but got \'"

    .line 98
    .line 99
    const-string v1, "\'"

    .line 100
    .line 101
    invoke-static {p0, p1, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 108
    .line 109
    invoke-interface {p0, p1}, Lcom/android/server/wm/TransitionTracer;->startTrace(Ljava/io/PrintWriter;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 116
    .line 117
    invoke-interface {p0, p1}, Lcom/android/server/wm/TransitionTracer;->stopTrace(Ljava/io/PrintWriter;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 124
    .line 125
    invoke-interface {p0, p1}, Lcom/android/server/wm/TransitionTracer;->saveForBugreport(Ljava/io/PrintWriter;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    move v0, v1

    .line 129
    :goto_3
    return v0

    .line 130
    :cond_5
    :goto_4
    const-string p0, "Window Manager Shell commands:"

    .line 131
    .line 132
    const-string v0, "  help"

    .line 133
    .line 134
    const-string v2, "    Print this help text."

    .line 135
    .line 136
    const-string v3, "  tracing <start/stop>"

    .line 137
    .line 138
    invoke-static {p1, p0, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p0, "    Start/stop shell transition tracing."

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v1

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x174ab7ac -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 148
    .line 149
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateAppCompatConfigurationPreset(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAppCompatConfigurationPreset(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
