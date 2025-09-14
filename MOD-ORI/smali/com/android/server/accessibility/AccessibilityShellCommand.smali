.class public final Lcom/android/server/accessibility/AccessibilityShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 9
    .line 10
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final acceptCustomAccessibilityCommand()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x7d0

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "Error : Wrong process"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v2, "eng"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const-string/jumbo v2, "userdebug"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "Error : Wrong binary"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 58
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    sparse-switch v6, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    :goto_0
    move v6, v3

    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :sswitch_0
    const-string/jumbo v6, "stop-trace"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v6, 0xc

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :sswitch_1
    const-string/jumbo v6, "call-system-action"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/16 v6, 0xb

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_2
    const-string/jumbo v6, "toggle-accessibility-sec-debug-log"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/16 v6, 0xa

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_3
    const-string/jumbo v6, "start-trace"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/16 v6, 0x9

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_4
    const-string/jumbo v6, "set-bind-instant-service-allowed"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/16 v6, 0x8

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_5
    const-string/jumbo v6, "send-touchevent-to-accessibilityinputfilter"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    const/4 v6, 0x7

    .line 107
    goto :goto_1

    .line 108
    :sswitch_6
    const-string/jumbo v6, "help"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_7

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    const/4 v6, 0x6

    .line 119
    goto :goto_1

    .line 120
    :sswitch_7
    const-string/jumbo v6, "get-bind-instant-service-allowed"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    const/4 v6, 0x5

    .line 131
    goto :goto_1

    .line 132
    :sswitch_8
    const-string/jumbo v6, "notify-gesture-to-accessibilityservice"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_9

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    const/4 v6, 0x4

    .line 143
    goto :goto_1

    .line 144
    :sswitch_9
    const-string/jumbo v6, "toggle-accessibilityservice"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_a

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_a
    const/4 v6, 0x3

    .line 156
    goto :goto_1

    .line 157
    :sswitch_a
    const-string/jumbo v6, "check-hidraw"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-nez v6, :cond_b

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_b
    move v6, v2

    .line 169
    goto :goto_1

    .line 170
    :sswitch_b
    const-string/jumbo v6, "notify-key-to-accessibilityservice"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_c

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_c
    move v6, v5

    .line 182
    goto :goto_1

    .line 183
    :sswitch_c
    const-string/jumbo v6, "notify-accessibilityevent-to-accessibilityservice"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-nez v6, :cond_d

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_d
    move v6, v4

    .line 195
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 196
    .line 197
    .line 198
    return v3

    .line 199
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_e

    .line 204
    .line 205
    const/16 v2, 0x3e8

    .line 206
    .line 207
    if-eq v1, v2, :cond_e

    .line 208
    .line 209
    const/16 v2, 0x7d0

    .line 210
    .line 211
    if-eq v1, v2, :cond_e

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_f

    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    .line 227
    .line 228
    .line 229
    move v3, v4

    .line 230
    :cond_f
    :goto_2
    return v3

    .line 231
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_15

    .line 236
    .line 237
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    sget-boolean v2, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 243
    .line 244
    xor-int/2addr v2, v5

    .line 245
    sput-boolean v2, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 246
    .line 247
    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 248
    .line 249
    monitor-enter v6

    .line 250
    :try_start_0
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 251
    .line 252
    if-eqz v3, :cond_11

    .line 253
    .line 254
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 255
    .line 256
    if-eqz v3, :cond_11

    .line 257
    .line 258
    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 259
    .line 260
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    move v8, v4

    .line 265
    :goto_3
    if-ge v8, v7, :cond_11

    .line 266
    .line 267
    iget-object v9, v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 268
    .line 269
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    check-cast v9, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 274
    .line 275
    if-eqz v9, :cond_10

    .line 276
    .line 277
    sput-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->SEC_DEBUG:Z

    .line 278
    .line 279
    :cond_10
    add-int/2addr v8, v5

    .line 280
    goto :goto_3

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    goto :goto_5

    .line 283
    :cond_11
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 284
    .line 285
    if-eqz v3, :cond_13

    .line 286
    .line 287
    sput-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    if-eqz v3, :cond_12

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    sput-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->SEC_DEBUG:Z

    .line 303
    .line 304
    :cond_12
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 305
    .line 306
    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    if-eqz v3, :cond_13

    .line 311
    .line 312
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    sput-boolean v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->SEC_DEBUG:Z

    .line 322
    .line 323
    :cond_13
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 334
    .line 335
    if-eqz v0, :cond_14

    .line 336
    .line 337
    const-string/jumbo v0, "enabled"

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_14
    const-string/jumbo v0, "disabled"

    .line 342
    .line 343
    .line 344
    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    move v3, v4

    .line 348
    goto :goto_6

    .line 349
    :goto_5
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    throw v0

    .line 351
    :cond_15
    :goto_6
    return v3

    .line 352
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 353
    .line 354
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    const-string/jumbo v5, "start-trace"

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-nez v5, :cond_17

    .line 367
    .line 368
    const-string/jumbo v0, "stop-trace"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_16

    .line 376
    .line 377
    goto :goto_a

    .line 378
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    .line 379
    .line 380
    .line 381
    :goto_7
    move v3, v4

    .line 382
    goto :goto_a

    .line 383
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-nez v1, :cond_18

    .line 388
    .line 389
    const-wide/16 v0, -0x1

    .line 390
    .line 391
    invoke-virtual {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .line 399
    .line 400
    :goto_8
    if-eqz v1, :cond_1b

    .line 401
    .line 402
    const-string v6, "-t"

    .line 403
    .line 404
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    if-nez v6, :cond_19

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    const-string v4, "Error: option not recognized "

    .line 415
    .line 416
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    .line 424
    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    :goto_9
    if-eqz v1, :cond_1a

    .line 432
    .line 433
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    goto :goto_9

    .line 441
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    goto :goto_8

    .line 446
    :cond_1b
    invoke-static {v5}, Landroid/accessibilityservice/AccessibilityTrace;->getLoggingFlagsFromNames(Ljava/util/List;)J

    .line 447
    .line 448
    .line 449
    move-result-wide v0

    .line 450
    invoke-virtual {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    .line 451
    .line 452
    .line 453
    goto :goto_7

    .line 454
    :goto_a
    return v3

    .line 455
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    if-nez v1, :cond_1c

    .line 460
    .line 461
    goto :goto_b

    .line 462
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    if-nez v2, :cond_1d

    .line 467
    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    const-string v1, "Error: no true/false specified"

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_1d
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 479
    .line 480
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 489
    .line 490
    const-string v5, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    .line 491
    .line 492
    const-string/jumbo v6, "setBindInstantServiceAllowed"

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 499
    .line 500
    monitor-enter v6

    .line 501
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 506
    .line 507
    if-eq v2, v3, :cond_1e

    .line 508
    .line 509
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 510
    .line 511
    invoke-virtual {v0, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 512
    .line 513
    .line 514
    :cond_1e
    monitor-exit v6

    .line 515
    move v3, v4

    .line 516
    :goto_b
    return v3

    .line 517
    :catchall_1
    move-exception v0

    .line 518
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    throw v0

    .line 520
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-eqz v1, :cond_22

    .line 525
    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    if-nez v1, :cond_1f

    .line 531
    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    const-string v1, "Error : need x value for MotionEvent"

    .line 537
    .line 538
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_d

    .line 542
    .line 543
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    if-nez v2, :cond_20

    .line 548
    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    const-string v1, "Error : need y value for MotionEvent"

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_d

    .line 559
    .line 560
    :cond_20
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    new-array v15, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 573
    .line 574
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    .line 575
    .line 576
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 577
    .line 578
    .line 579
    iput v4, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 580
    .line 581
    iput v5, v6, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 582
    .line 583
    new-array v5, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 584
    .line 585
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    .line 586
    .line 587
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 588
    .line 589
    .line 590
    iput v1, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 591
    .line 592
    iput v2, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 593
    .line 594
    const/high16 v1, 0x3f800000    # 1.0f

    .line 595
    .line 596
    iput v1, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 597
    .line 598
    iput v1, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 599
    .line 600
    aput-object v7, v5, v4

    .line 601
    .line 602
    aput-object v6, v15, v4

    .line 603
    .line 604
    const/high16 v1, 0x40000000    # 2.0f

    .line 605
    .line 606
    if-nez v3, :cond_21

    .line 607
    .line 608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 609
    .line 610
    .line 611
    move-result-wide v2

    .line 612
    const/16 v20, 0x1002

    .line 613
    .line 614
    const/16 v21, 0x0

    .line 615
    .line 616
    const/4 v10, 0x0

    .line 617
    const/4 v11, 0x1

    .line 618
    const/4 v14, 0x0

    .line 619
    const/16 v16, 0x0

    .line 620
    .line 621
    const/high16 v17, 0x3f800000    # 1.0f

    .line 622
    .line 623
    const/high16 v18, 0x3f800000    # 1.0f

    .line 624
    .line 625
    const/16 v19, 0x5

    .line 626
    .line 627
    const/16 v22, 0x0

    .line 628
    .line 629
    move-wide v6, v2

    .line 630
    move-wide v8, v2

    .line 631
    move-object v12, v15

    .line 632
    move-object v13, v5

    .line 633
    move-object/from16 v23, v15

    .line 634
    .line 635
    move/from16 v15, v16

    .line 636
    .line 637
    move/from16 v16, v17

    .line 638
    .line 639
    move/from16 v17, v18

    .line 640
    .line 641
    move/from16 v18, v19

    .line 642
    .line 643
    move/from16 v19, v22

    .line 644
    .line 645
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 650
    .line 651
    invoke-virtual {v7, v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semInjectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    .line 652
    .line 653
    .line 654
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 655
    .line 656
    .line 657
    move-result-wide v8

    .line 658
    const/4 v10, 0x1

    .line 659
    const/4 v15, 0x0

    .line 660
    const/high16 v16, 0x3f800000    # 1.0f

    .line 661
    .line 662
    const/high16 v17, 0x3f800000    # 1.0f

    .line 663
    .line 664
    const/16 v18, 0x5

    .line 665
    .line 666
    const/16 v19, 0x0

    .line 667
    .line 668
    move-wide v6, v2

    .line 669
    move-object/from16 v12, v23

    .line 670
    .line 671
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 676
    .line 677
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semInjectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    .line 678
    .line 679
    .line 680
    goto :goto_c

    .line 681
    :cond_21
    move-object/from16 v23, v15

    .line 682
    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    move-result v10

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 688
    .line 689
    .line 690
    move-result-wide v8

    .line 691
    const/16 v20, 0x1002

    .line 692
    .line 693
    const/16 v21, 0x0

    .line 694
    .line 695
    const/4 v11, 0x1

    .line 696
    const/4 v14, 0x0

    .line 697
    const/4 v15, 0x0

    .line 698
    const/high16 v16, 0x3f800000    # 1.0f

    .line 699
    .line 700
    const/high16 v17, 0x3f800000    # 1.0f

    .line 701
    .line 702
    const/16 v18, 0x5

    .line 703
    .line 704
    const/16 v19, 0x0

    .line 705
    .line 706
    move-wide v6, v8

    .line 707
    move-object/from16 v12, v23

    .line 708
    .line 709
    move-object v13, v5

    .line 710
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 715
    .line 716
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semInjectInputEventToInputFilter(Landroid/view/InputEvent;I)V

    .line 717
    .line 718
    .line 719
    :goto_c
    move v3, v4

    .line 720
    :cond_22
    :goto_d
    return v3

    .line 721
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->onHelp()V

    .line 722
    .line 723
    .line 724
    return v4

    .line 725
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    if-nez v1, :cond_23

    .line 730
    .line 731
    goto :goto_e

    .line 732
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 737
    .line 738
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 743
    .line 744
    monitor-enter v6

    .line 745
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 750
    .line 751
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 752
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    move v3, v4

    .line 760
    :goto_e
    return v3

    .line 761
    :catchall_2
    move-exception v0

    .line 762
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 763
    throw v0

    .line 764
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-eqz v1, :cond_27

    .line 769
    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    if-nez v1, :cond_24

    .line 775
    .line 776
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    const-string v1, "Error : need gesture id"

    .line 781
    .line 782
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    goto :goto_12

    .line 786
    :cond_24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    if-eqz v2, :cond_25

    .line 795
    .line 796
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    goto :goto_f

    .line 801
    :cond_25
    move v2, v4

    .line 802
    :goto_f
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 803
    .line 804
    new-instance v3, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 805
    .line 806
    invoke-direct {v3, v1, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    .line 807
    .line 808
    .line 809
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 810
    .line 811
    monitor-enter v1

    .line 812
    :try_start_5
    invoke-virtual {v0, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    if-nez v2, :cond_26

    .line 817
    .line 818
    invoke-virtual {v0, v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    .line 819
    .line 820
    .line 821
    goto :goto_10

    .line 822
    :catchall_3
    move-exception v0

    .line 823
    goto :goto_11

    .line 824
    :cond_26
    :goto_10
    monitor-exit v1

    .line 825
    move v3, v4

    .line 826
    goto :goto_12

    .line 827
    :goto_11
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 828
    throw v0

    .line 829
    :cond_27
    :goto_12
    return v3

    .line 830
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    if-eqz v1, :cond_2f

    .line 835
    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    if-nez v1, :cond_28

    .line 845
    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    const-string v1, "Error : need package name"

    .line 851
    .line 852
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    goto/16 :goto_16

    .line 856
    .line 857
    :cond_28
    if-nez v2, :cond_29

    .line 858
    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    const-string v1, "Error : need class name"

    .line 864
    .line 865
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_16

    .line 869
    .line 870
    :cond_29
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 871
    .line 872
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 873
    .line 874
    new-instance v3, Landroid/content/ComponentName;

    .line 875
    .line 876
    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    new-instance v1, Landroid/util/ArraySet;

    .line 880
    .line 881
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 885
    .line 886
    .line 887
    move-result-object v2

    .line 888
    const-string/jumbo v6, "enabled_accessibility_services"

    .line 889
    .line 890
    .line 891
    invoke-static {v2, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 896
    .line 897
    .line 898
    move-result v7

    .line 899
    const-string v8, ":"

    .line 900
    .line 901
    if-nez v7, :cond_2b

    .line 902
    .line 903
    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    array-length v7, v2

    .line 908
    move v9, v4

    .line 909
    :goto_13
    if-ge v9, v7, :cond_2b

    .line 910
    .line 911
    aget-object v10, v2, v9

    .line 912
    .line 913
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 914
    .line 915
    .line 916
    move-result-object v10

    .line 917
    if-eqz v10, :cond_2a

    .line 918
    .line 919
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    :cond_2a
    add-int/2addr v9, v5

    .line 923
    goto :goto_13

    .line 924
    :cond_2b
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    if-eqz v2, :cond_2c

    .line 929
    .line 930
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    goto :goto_14

    .line 934
    :cond_2c
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 938
    .line 939
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    if-eqz v3, :cond_2d

    .line 951
    .line 952
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    check-cast v3, Landroid/content/ComponentName;

    .line 957
    .line 958
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    goto :goto_15

    .line 969
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-lez v1, :cond_2e

    .line 974
    .line 975
    sub-int/2addr v1, v5

    .line 976
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    :cond_2e
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    invoke-static {v0, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 988
    .line 989
    .line 990
    move v3, v4

    .line 991
    :cond_2f
    :goto_16
    return v3

    .line 992
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mContext:Landroid/content/Context;

    .line 993
    .line 994
    const-string v6, "android.permission.MANAGE_ACCESSIBILITY"

    .line 995
    .line 996
    const-string v7, "Missing MANAGE_ACCESSIBILITY permission"

    .line 997
    .line 998
    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    new-instance v6, Ljava/io/File;

    .line 1006
    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v7

    .line 1011
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1018
    .line 1019
    .line 1020
    move-result v7

    .line 1021
    sparse-switch v7, :sswitch_data_1

    .line 1022
    .line 1023
    .line 1024
    :goto_17
    move v2, v3

    .line 1025
    goto :goto_18

    .line 1026
    :sswitch_d
    const-string/jumbo v5, "write"

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v5

    .line 1033
    if-nez v5, :cond_32

    .line 1034
    .line 1035
    goto :goto_17

    .line 1036
    :sswitch_e
    const-string/jumbo v2, "read"

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v2

    .line 1043
    if-nez v2, :cond_30

    .line 1044
    .line 1045
    goto :goto_17

    .line 1046
    :cond_30
    move v2, v5

    .line 1047
    goto :goto_18

    .line 1048
    :sswitch_f
    const-string/jumbo v2, "descriptor"

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    if-nez v2, :cond_31

    .line 1056
    .line 1057
    goto :goto_17

    .line 1058
    :cond_31
    move v2, v4

    .line 1059
    :cond_32
    :goto_18
    packed-switch v2, :pswitch_data_1

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    const-string v2, "Unknown subcommand "

    .line 1067
    .line 1068
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_1a

    .line 1076
    .line 1077
    :pswitch_a
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v1

    .line 1081
    if-nez v1, :cond_33

    .line 1082
    .line 1083
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    const-string v2, "Unable to write to "

    .line 1090
    .line 1091
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v1

    .line 1101
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_1a

    .line 1105
    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    :goto_19
    move v3, v4

    .line 1117
    goto :goto_1a

    .line 1118
    :pswitch_b
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v1

    .line 1122
    if-nez v1, :cond_34

    .line 1123
    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    const-string v2, "Unable to read from "

    .line 1131
    .line 1132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_1a

    .line 1146
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    goto :goto_19

    .line 1158
    :pswitch_c
    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;

    .line 1159
    .line 1160
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1161
    .line 1162
    .line 1163
    invoke-static {v1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v2

    .line 1171
    invoke-interface {v1, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceReportDescriptor(Ljava/nio/file/Path;)[B

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    if-nez v1, :cond_35

    .line 1176
    .line 1177
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    const-string v2, "Unable to read descriptor for "

    .line 1184
    .line 1185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_1a

    .line 1199
    :cond_35
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1204
    .line 1205
    .line 1206
    goto :goto_19

    .line 1207
    :goto_1a
    return v3

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1210
    .line 1211
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1212
    .line 1213
    .line 1214
    throw v1

    .line 1215
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v1

    .line 1219
    if-eqz v1, :cond_38

    .line 1220
    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    if-nez v1, :cond_36

    .line 1226
    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    const-string v1, "Error : need key code"

    .line 1232
    .line 1233
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    goto :goto_1c

    .line 1237
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v2

    .line 1241
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-nez v2, :cond_37

    .line 1246
    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v2

    .line 1251
    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1252
    .line 1253
    new-instance v14, Landroid/view/KeyEvent;

    .line 1254
    .line 1255
    const/4 v10, 0x0

    .line 1256
    const/4 v12, 0x0

    .line 1257
    move-object v5, v14

    .line 1258
    move-wide v6, v2

    .line 1259
    move-wide v8, v2

    .line 1260
    move v11, v1

    .line 1261
    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v13, v14, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 1265
    .line 1266
    .line 1267
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1268
    .line 1269
    new-instance v13, Landroid/view/KeyEvent;

    .line 1270
    .line 1271
    const-wide/16 v5, 0xa

    .line 1272
    .line 1273
    add-long v8, v2, v5

    .line 1274
    .line 1275
    const/4 v10, 0x1

    .line 1276
    move-object v5, v13

    .line 1277
    move-wide v6, v2

    .line 1278
    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v0, v13, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 1282
    .line 1283
    .line 1284
    goto :goto_1b

    .line 1285
    :cond_37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    move-result v10

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1290
    .line 1291
    .line 1292
    move-result-wide v8

    .line 1293
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1294
    .line 1295
    new-instance v2, Landroid/view/KeyEvent;

    .line 1296
    .line 1297
    const/4 v12, 0x0

    .line 1298
    move-object v5, v2

    .line 1299
    move-wide v6, v8

    .line 1300
    move v11, v1

    .line 1301
    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v0, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 1305
    .line 1306
    .line 1307
    :goto_1b
    move v3, v4

    .line 1308
    :cond_38
    :goto_1c
    return v3

    .line 1309
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->acceptCustomAccessibilityCommand()Z

    .line 1310
    .line 1311
    .line 1312
    move-result v1

    .line 1313
    if-eqz v1, :cond_3b

    .line 1314
    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    if-nez v1, :cond_39

    .line 1320
    .line 1321
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    const-string v1, "Error : need event type"

    .line 1326
    .line 1327
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_1d

    .line 1331
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v2

    .line 1335
    new-instance v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 1336
    .line 1337
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1338
    .line 1339
    .line 1340
    move-result v1

    .line 1341
    invoke-direct {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 1342
    .line 1343
    .line 1344
    if-eqz v2, :cond_3a

    .line 1345
    .line 1346
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1347
    .line 1348
    .line 1349
    :cond_3a
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1350
    .line 1351
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1352
    .line 1353
    .line 1354
    move v3, v4

    .line 1355
    :cond_3b
    :goto_1d
    return v3

    .line 1356
    nop

    .line 1357
    :sswitch_data_0
    .sparse-switch
        -0x72fb5204 -> :sswitch_c
        -0x700f1039 -> :sswitch_b
        -0x62eee1d6 -> :sswitch_a
        -0x5d5ee580 -> :sswitch_9
        -0x58280d4f -> :sswitch_8
        -0x333457d5 -> :sswitch_7
        0x30cf41 -> :sswitch_6
        0x4d20699 -> :sswitch_5
        0x2f0ea69f -> :sswitch_4
        0x4fec781a -> :sswitch_3
        0x5d83cd16 -> :sswitch_2
        0x683ce265 -> :sswitch_1
        0x6ebe83ba -> :sswitch_0
    .end sparse-switch

    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
    .end packed-switch

    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    :sswitch_data_1
    .sparse-switch
        -0x2c9b2c91 -> :sswitch_f
        0x355996 -> :sswitch_e
        0x6c257df -> :sswitch_d
    .end sparse-switch

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Accessibility service (accessibility) commands:"

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
    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    Set whether binding to services provided by instant apps is allowed."

    .line 26
    .line 27
    const-string v2, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    .line 28
    .line 29
    const-string v3, "    Get whether binding to services provided by instant apps is allowed."

    .line 30
    .line 31
    const-string v4, "  call-system-action <ACTION_ID>"

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "    Calls the system action with the given action id."

    .line 37
    .line 38
    const-string v2, "  check-hidraw [read|write|descriptor] <HIDRAW_NODE_PATH>"

    .line 39
    .line 40
    const-string v3, "    Checks if the system can perform various actions on the HIDRAW node."

    .line 41
    .line 42
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string p0, "  start-trace [-t LOGGING_TYPE [LOGGING_TYPE...]]"

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "    Start the debug tracing. If no option is present, full trace will be"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "    generated. Options are:"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "      -t: Only generate tracing for the logging type(s) specified here."

    .line 68
    .line 69
    const-string v1, "          LOGGING_TYPE can be any one of below:"

    .line 70
    .line 71
    const-string v2, "            IAccessibilityServiceConnection"

    .line 72
    .line 73
    const-string v3, "            IAccessibilityServiceClient"

    .line 74
    .line 75
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string p0, "            IAccessibilityManager"

    .line 79
    .line 80
    const-string v1, "            IAccessibilityManagerClient"

    .line 81
    .line 82
    const-string v2, "            IAccessibilityInteractionConnection"

    .line 83
    .line 84
    const-string v3, "            IAccessibilityInteractionConnectionCallback"

    .line 85
    .line 86
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p0, "            IRemoteMagnificationAnimationCallback"

    .line 90
    .line 91
    const-string v1, "            IMagnificationConnection"

    .line 92
    .line 93
    const-string v2, "            IMagnificationConnectionCallback"

    .line 94
    .line 95
    const-string v3, "            WindowManagerInternal"

    .line 96
    .line 97
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "            WindowsForAccessibilityCallback"

    .line 101
    .line 102
    const-string v1, "            MagnificationCallbacks"

    .line 103
    .line 104
    const-string v2, "            InputFilter"

    .line 105
    .line 106
    const-string v3, "            Gesture"

    .line 107
    .line 108
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p0, "            AccessibilityService"

    .line 112
    .line 113
    const-string v1, "            PMBroadcastReceiver"

    .line 114
    .line 115
    const-string v2, "            UserBroadcastReceiver"

    .line 116
    .line 117
    const-string v3, "            FingerprintGesture"

    .line 118
    .line 119
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p0, "  stop-trace"

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string p0, "    Stop the debug tracing."

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 133
    .line 134
    const-string/jumbo v1, "eng"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_0

    .line 142
    .line 143
    const-string/jumbo v1, "userdebug"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_1

    .line 151
    .line 152
    :cond_0
    const-string p0, "  notify-gesture-to-accessibilityservice <GESTURE_ID>"

    .line 153
    .line 154
    const-string v1, "    Notifys the gesture event with the given gesture id."

    .line 155
    .line 156
    const-string v2, "  notify-key-to-accessibilityservice <KEY_CODE> <(optional) ACTION>"

    .line 157
    .line 158
    const-string v3, "    Notifys the key event with the given key code."

    .line 159
    .line 160
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string p0, "    If the ACTION is empty, down and up key event will be notified"

    .line 164
    .line 165
    const-string v1, "  notify-accessibilityevent-to-accessibilityservice <EVENT_TYPE> <(optional) PACKAGE_NAME>"

    .line 166
    .line 167
    const-string v2, "    Notifys the accessibility event with given event type"

    .line 168
    .line 169
    const-string v3, "  toggle-accessibilityservice <PACKAGE_NAME> <CLASS_NAME>"

    .line 170
    .line 171
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string p0, "    Toggles the given AccessibilityService"

    .line 175
    .line 176
    const-string v1, "    for example, talkback"

    .line 177
    .line 178
    const-string v2, "      PACKAGE NAME : com.google.android.marvin.talkback"

    .line 179
    .line 180
    const-string v3, "      CLASS_NAME : com.google.android.marvin.talkback.TalkBackService"

    .line 181
    .line 182
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string p0, "  toggle-accessibility-sec-debug-log"

    .line 186
    .line 187
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string p0, "    Toggles sec debug log of Accessibility framework"

    .line 191
    .line 192
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_1
    return-void
.end method

.method public final parseUserId()Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v1, "--user"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "Unknown option: "

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
