.class public final Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v1, -0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string v2, "expand-settings"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move v2, v0

    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :sswitch_1
    const-string v2, "expand-notifications"

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    move v2, v3

    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :sswitch_2
    const-string v2, "check-support"

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x7

    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :sswitch_3
    const-string v2, "disable-for-setup"

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    const/16 v2, 0x9

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :sswitch_4
    const-string v2, "help"

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    const/16 v2, 0xe

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :sswitch_5
    const-string v2, "dump"

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    const/16 v2, 0xf

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :sswitch_6
    const-string v2, "-h"

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    const/16 v2, 0xd

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :sswitch_7
    const-string/jumbo v2, "remove-tile"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_1

    .line 110
    .line 111
    const/4 v2, 0x4

    .line 112
    goto :goto_1

    .line 113
    :sswitch_8
    const-string/jumbo v2, "set-tiles"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    const/4 v2, 0x5

    .line 123
    goto :goto_1

    .line 124
    :sswitch_9
    const-string v2, "collapse"

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    const/4 v2, 0x2

    .line 133
    goto :goto_1

    .line 134
    :sswitch_a
    const-string v2, "click-tile"

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_1

    .line 141
    .line 142
    const/4 v2, 0x6

    .line 143
    goto :goto_1

    .line 144
    :sswitch_b
    const-string/jumbo v2, "run-gc"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_1

    .line 152
    .line 153
    const/16 v2, 0xc

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :sswitch_c
    const-string/jumbo v2, "send-disable-flag"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    .line 165
    const/16 v2, 0xa

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :sswitch_d
    const-string/jumbo v2, "tracing"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_1

    .line 176
    .line 177
    const/16 v2, 0xb

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :sswitch_e
    const-string v2, "get-status-icons"

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_1

    .line 187
    .line 188
    const/16 v2, 0x8

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :sswitch_f
    const-string v2, "add-tile"

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_1

    .line 198
    .line 199
    const/4 v2, 0x3

    .line 200
    goto :goto_1

    .line 201
    :cond_1
    :goto_0
    move v2, v1

    .line 202
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p1, v0, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 216
    .line 217
    .line 218
    return v3

    .line 219
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    return p0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    .line 225
    .line 226
    .line 227
    return v3

    .line 228
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 234
    .line 235
    if-eqz v0, :cond_3

    .line 236
    .line 237
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 238
    .line 239
    .line 240
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    if-eqz p0, :cond_2

    .line 243
    .line 244
    :try_start_1
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 245
    .line 246
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->runGcForTest()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    .line 248
    .line 249
    :catch_1
    :cond_2
    return v3

    .line 250
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 251
    .line 252
    const-string/jumbo v0, "runGcForTest requires a debuggable build"

    .line 253
    .line 254
    .line 255
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p1

    .line 259
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 264
    .line 265
    .line 266
    const-string/jumbo v0, "stop"

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_5

    .line 274
    .line 275
    const-string/jumbo v0, "start"

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_4

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->startTracing()V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_5
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->stopTracing()V

    .line 294
    .line 295
    .line 296
    :goto_2
    return v3

    .line 297
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()V

    .line 298
    .line 299
    .line 300
    return v3

    .line 301
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_6

    .line 316
    .line 317
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 318
    .line 319
    sget-object v2, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    .line 320
    .line 321
    const/high16 v4, 0x3a50000

    .line 322
    .line 323
    invoke-virtual {p1, v4, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 327
    .line 328
    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_6
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 333
    .line 334
    sget-object v2, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    .line 335
    .line 336
    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 340
    .line 341
    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_3
    return v3

    .line 345
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 350
    .line 351
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 352
    .line 353
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const v4, 0x1070166

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    array-length v4, v2

    .line 365
    move v5, v3

    .line 366
    :goto_4
    if-ge v5, v4, :cond_7

    .line 367
    .line 368
    aget-object v6, v2, v5

    .line 369
    .line 370
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    add-int/2addr v5, v0

    .line 374
    goto :goto_4

    .line 375
    :cond_7
    return v3

    .line 376
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return v3

    .line 392
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 393
    .line 394
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->clickTile(Landroid/content/ComponentName;)V

    .line 403
    .line 404
    .line 405
    return v3

    .line 406
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 407
    .line 408
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 413
    .line 414
    .line 415
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 416
    .line 417
    if-eqz p0, :cond_8

    .line 418
    .line 419
    :try_start_4
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 420
    .line 421
    const-string p1, ","

    .line 422
    .line 423
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setQsTiles([Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 428
    .line 429
    .line 430
    :catch_2
    :cond_8
    return v3

    .line 431
    :pswitch_a
    :try_start_5
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 432
    .line 433
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    .line 442
    .line 443
    .line 444
    return v3

    .line 445
    :pswitch_b
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 446
    .line 447
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->addTile(Landroid/content/ComponentName;)V

    .line 456
    .line 457
    .line 458
    return v3

    .line 459
    :pswitch_c
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 460
    .line 461
    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->collapsePanels()V

    .line 462
    .line 463
    .line 464
    return v3

    .line 465
    :pswitch_d
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 466
    .line 467
    const/4 v0, 0x0

    .line 468
    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    return v3

    .line 472
    :pswitch_e
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 473
    .line 474
    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->expandNotificationsPanel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 475
    .line 476
    .line 477
    return v3

    .line 478
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    const-string v0, "Remote exception: "

    .line 483
    .line 484
    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 485
    .line 486
    .line 487
    return v1

    .line 488
    nop

    .line 489
    :sswitch_data_0
    .sparse-switch
        -0x4c69c7a6 -> :sswitch_f
        -0x49dc556a -> :sswitch_e
        -0x3f9f2f3e -> :sswitch_d
        -0x3ebc9eaa -> :sswitch_c
        -0x36d414a2 -> :sswitch_b
        -0x310f1c2d -> :sswitch_a
        -0x25acdc53 -> :sswitch_9
        -0x1dba7da6 -> :sswitch_8
        -0x143fd1a9 -> :sswitch_7
        0x5db -> :sswitch_6
        0x2f39f4 -> :sswitch_5
        0x30cf41 -> :sswitch_4
        0x35c1e3d4 -> :sswitch_3
        0x6019c00a -> :sswitch_2
        0x611d4ef5 -> :sswitch_1
        0x63a92df6 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Status bar commands:"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  help"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "  expand-notifications"

    .line 26
    .line 27
    const-string v3, "    Open the notifications panel."

    .line 28
    .line 29
    const-string v4, "  expand-settings"

    .line 30
    .line 31
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "    Open the notifications panel and expand quick settings if present."

    .line 35
    .line 36
    const-string v3, "  collapse"

    .line 37
    .line 38
    const-string v4, "    Collapse the notifications and settings panel."

    .line 39
    .line 40
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "  add-tile COMPONENT"

    .line 44
    .line 45
    const-string v3, "    Add a TileService of the specified component"

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v2, "  remove-tile COMPONENT"

    .line 51
    .line 52
    const-string v3, "    Remove a TileService of the specified component"

    .line 53
    .line 54
    const-string v4, "  set-tiles LIST-OF-TILES"

    .line 55
    .line 56
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "    Sets the list of tiles as the current Quick Settings tiles"

    .line 60
    .line 61
    const-string v3, "  click-tile COMPONENT"

    .line 62
    .line 63
    const-string v4, "    Click on a TileService of the specified component"

    .line 64
    .line 65
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "  check-support"

    .line 69
    .line 70
    const-string v3, "    Check if this device supports QS + APIs"

    .line 71
    .line 72
    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "  get-status-icons"

    .line 76
    .line 77
    const-string v3, "    Print the list of status bar icons and the order they appear in"

    .line 78
    .line 79
    const-string v4, "  disable-for-setup DISABLE"

    .line 80
    .line 81
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    .line 85
    .line 86
    const-string v3, "  send-disable-flag FLAG..."

    .line 87
    .line 88
    const-string v4, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    .line 89
    .line 90
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v2, "    Valid options:"

    .line 94
    .line 95
    const-string v3, "        <blank>             - equivalent to \"none\""

    .line 96
    .line 97
    const-string v4, "        none                - re-enables all components"

    .line 98
    .line 99
    const-string v5, "        search              - disable search"

    .line 100
    .line 101
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v2, "        home                - disable naviagation home"

    .line 105
    .line 106
    const-string v3, "        recents             - disable recents/overview"

    .line 107
    .line 108
    const-string v4, "        notification-peek   - disable notification peeking"

    .line 109
    .line 110
    const-string v5, "        statusbar-expansion - disable status bar expansion"

    .line 111
    .line 112
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v2, "        system-icons        - disable system icons appearing in status bar"

    .line 116
    .line 117
    const-string v3, "        clock               - disable clock appearing in status bar"

    .line 118
    .line 119
    const-string v4, "        notification-icons  - disable notification icons from status bar"

    .line 120
    .line 121
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v2, "  tracing (start | stop)"

    .line 125
    .line 126
    const-string v3, "    Start or stop SystemUI tracing"

    .line 127
    .line 128
    const-string v4, "  NOTE: any command not listed here will be passed through to IStatusBar"

    .line 129
    .line 130
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "  Commands implemented in SystemUI:"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    new-array v1, v1, [Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final runSendDisableFlag()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Landroid/app/StatusBarManager$DisableInfo;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :goto_0
    if-eqz v3, :cond_8

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sparse-switch v5, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :sswitch_0
    const-string/jumbo v5, "notification-icons"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v4, 0x7

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string/jumbo v5, "recents"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v4, 0x6

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string/jumbo v5, "statusbar-expansion"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v4, 0x5

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v5, "clock"

    .line 66
    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v4, 0x4

    .line 75
    goto :goto_1

    .line 76
    :sswitch_4
    const-string v5, "home"

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const/4 v4, 0x3

    .line 86
    goto :goto_1

    .line 87
    :sswitch_5
    const-string/jumbo v5, "notification-alerts"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v4, 0x2

    .line 98
    goto :goto_1

    .line 99
    :sswitch_6
    const-string/jumbo v5, "search"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    move v4, v0

    .line 110
    goto :goto_1

    .line 111
    :sswitch_7
    const-string/jumbo v5, "system-icons"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    const/4 v4, 0x0

    .line 122
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :pswitch_0
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationIconsDisabled(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_1
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_2
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_3
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setClockDisabled(Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :pswitch_4
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :pswitch_5
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_6
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_7
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setSystemIconsDisabled(Z)V

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_8
    invoke-virtual {v2}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 168
    .line 169
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v3, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    sget-object v4, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    .line 178
    .line 179
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 183
    .line 184
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :sswitch_data_0
    .sparse-switch
        -0x6a7bc604 -> :sswitch_7
        -0x36059a58 -> :sswitch_6
        -0x2d0f4a47 -> :sswitch_5
        0x30f4df -> :sswitch_4
        0x5a5dc0e -> :sswitch_3
        0x3c4c98d3 -> :sswitch_2
        0x40828578 -> :sswitch_1
        0x518d53b8 -> :sswitch_0
    .end sparse-switch

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :pswitch_data_0
    .packed-switch 0x0
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
