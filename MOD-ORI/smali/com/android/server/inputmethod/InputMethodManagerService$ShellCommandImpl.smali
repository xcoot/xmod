.class public final Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final onCommandWithSystemIdentity(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v7, "tracing"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-nez v7, :cond_2e

    .line 23
    .line 24
    const-string/jumbo v7, "ime"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v7, -0x2

    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    sparse-switch v8, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    :goto_0
    move v8, v3

    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :sswitch_0
    const-string/jumbo v8, "disable"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/16 v8, 0x8

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_1
    const-string/jumbo v8, "reset"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-nez v8, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v8, 0x7

    .line 85
    goto :goto_1

    .line 86
    :sswitch_2
    const-string/jumbo v8, "list"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/4 v8, 0x6

    .line 97
    goto :goto_1

    .line 98
    :sswitch_3
    const-string/jumbo v8, "help"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_4

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    const/4 v8, 0x5

    .line 109
    goto :goto_1

    .line 110
    :sswitch_4
    const-string/jumbo v8, "set"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_5

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    const/4 v8, 0x4

    .line 121
    goto :goto_1

    .line 122
    :sswitch_5
    const-string v8, "-h"

    .line 123
    .line 124
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_6

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    move v8, v1

    .line 132
    goto :goto_1

    .line 133
    :sswitch_6
    const-string v8, ""

    .line 134
    .line 135
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_7

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    move v8, v2

    .line 143
    goto :goto_1

    .line 144
    :sswitch_7
    const-string/jumbo v8, "tracing"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_8

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_8
    move v8, v5

    .line 155
    goto :goto_1

    .line 156
    :sswitch_8
    const-string/jumbo v8, "enable"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-nez v8, :cond_9

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_9
    move v8, v4

    .line 167
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v1, "Unknown command: "

    .line 175
    .line 176
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return v3

    .line 184
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    .line 186
    invoke-static {v1, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    return v0

    .line 191
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-nez v2, :cond_a

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    const-string v6, "-u"

    .line 204
    .line 205
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-nez v6, :cond_b

    .line 210
    .line 211
    const-string v6, "--user"

    .line 212
    .line 213
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_b

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    :goto_3
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    .line 229
    .line 230
    monitor-enter v6

    .line 231
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 232
    .line 233
    .line 234
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    iget v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 236
    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    array-length v8, v7

    .line 246
    move v9, v4

    .line 247
    :goto_4
    if-ge v9, v8, :cond_15

    .line 248
    .line 249
    aget v10, v7, v9

    .line 250
    .line 251
    invoke-virtual {v1, v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-nez v11, :cond_c

    .line 256
    .line 257
    :goto_5
    move v11, v3

    .line 258
    goto/16 :goto_b

    .line 259
    .line 260
    :cond_c
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 261
    .line 262
    invoke-virtual {v11, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    if-eqz v11, :cond_d

    .line 267
    .line 268
    const-string v12, "android.os.usertype.system.HEADLESS"

    .line 269
    .line 270
    iget-object v11, v11, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-eqz v11, :cond_d

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    move-object v1, v0

    .line 281
    goto/16 :goto_d

    .line 282
    .line 283
    :cond_d
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    iget v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 288
    .line 289
    const/4 v13, 0x0

    .line 290
    if-ne v10, v12, :cond_13

    .line 291
    .line 292
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-eqz v12, :cond_e

    .line 297
    .line 298
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 299
    .line 300
    if-eqz v12, :cond_f

    .line 301
    .line 302
    iget-object v12, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 303
    .line 304
    if-eqz v12, :cond_f

    .line 305
    .line 306
    iget-object v12, v12, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 307
    .line 308
    if-eqz v12, :cond_f

    .line 309
    .line 310
    invoke-virtual {v12, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_e
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 315
    .line 316
    iget-object v12, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 317
    .line 318
    const/16 v14, 0xf

    .line 319
    .line 320
    invoke-virtual {v1, v14, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 321
    .line 322
    .line 323
    :cond_f
    :goto_6
    invoke-virtual {v1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    invoke-virtual {v12}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    iget-object v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 335
    .line 336
    iget-object v15, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 337
    .line 338
    invoke-static {v14, v15, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 343
    .line 344
    .line 345
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v15

    .line 353
    if-eqz v15, :cond_10

    .line 354
    .line 355
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v15

    .line 359
    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    .line 360
    .line 361
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v15

    .line 365
    invoke-virtual {v1, v15, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v14

    .line 377
    if-eqz v14, :cond_11

    .line 378
    .line 379
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v14

    .line 383
    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 384
    .line 385
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    invoke-virtual {v1, v14, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 390
    .line 391
    .line 392
    goto :goto_8

    .line 393
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    if-nez v12, :cond_12

    .line 398
    .line 399
    invoke-virtual {v1, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_12
    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 403
    .line 404
    .line 405
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    iget v14, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 408
    .line 409
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 410
    .line 411
    .line 412
    move-result-object v12

    .line 413
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 414
    .line 415
    .line 416
    move-result-object v14

    .line 417
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v12

    .line 424
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    move-object v14, v12

    .line 429
    move-object v12, v11

    .line 430
    move v11, v3

    .line 431
    goto :goto_a

    .line 432
    :cond_13
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 433
    .line 434
    iget-object v14, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 435
    .line 436
    invoke-static {v12, v14, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    .line 441
    .line 442
    .line 443
    move-result-object v14

    .line 444
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v14

    .line 448
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v15

    .line 452
    new-array v4, v15, [Ljava/lang/String;

    .line 453
    .line 454
    const/4 v3, 0x0

    .line 455
    :goto_9
    if-ge v3, v15, :cond_14

    .line 456
    .line 457
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v16

    .line 461
    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 462
    .line 463
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v16

    .line 467
    aput-object v16, v4, v3

    .line 468
    .line 469
    add-int/2addr v3, v5

    .line 470
    goto :goto_9

    .line 471
    :cond_14
    const-string v3, ""

    .line 472
    .line 473
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-virtual {v11, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v11, v14}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget v3, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 487
    .line 488
    invoke-static {v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    const-string/jumbo v4, "selected_input_method_subtype"

    .line 493
    .line 494
    .line 495
    const/4 v11, -0x1

    .line 496
    invoke-interface {v3, v11, v4}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    .line 497
    .line 498
    .line 499
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v4, "Reset current and enabled IMEs for user #"

    .line 505
    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    const-string v4, "  Selected: "

    .line 525
    .line 526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    .line 540
    .line 541
    const/4 v4, 0x0

    .line 542
    invoke-direct {v3, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-interface {v12, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    .line 547
    .line 548
    :goto_b
    add-int/2addr v9, v5

    .line 549
    move v3, v11

    .line 550
    const/4 v4, 0x0

    .line 551
    goto/16 :goto_4

    .line 552
    .line 553
    :cond_15
    if-eqz v2, :cond_16

    .line 554
    .line 555
    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 556
    .line 557
    .line 558
    goto :goto_c

    .line 559
    :catchall_1
    move-exception v0

    .line 560
    goto :goto_f

    .line 561
    :cond_16
    :goto_c
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 562
    const/4 v0, 0x0

    .line 563
    return v0

    .line 564
    :goto_d
    if-eqz v2, :cond_17

    .line 565
    .line 566
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 567
    .line 568
    .line 569
    goto :goto_e

    .line 570
    :catchall_2
    move-exception v0

    .line 571
    move-object v2, v0

    .line 572
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 573
    .line 574
    .line 575
    :cond_17
    :goto_e
    throw v1

    .line 576
    :goto_f
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 577
    throw v0

    .line 578
    :pswitch_2
    move v11, v3

    .line 579
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 580
    .line 581
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    const/4 v4, 0x0

    .line 585
    const/4 v6, 0x0

    .line 586
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    if-nez v8, :cond_1f

    .line 591
    .line 592
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    .line 593
    .line 594
    monitor-enter v9

    .line 595
    :try_start_5
    iget v1, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 596
    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-static {v7, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 606
    .line 607
    .line 608
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 609
    :try_start_6
    array-length v0, v1

    .line 610
    const/4 v7, 0x0

    .line 611
    :goto_11
    if-ge v7, v0, :cond_1c

    .line 612
    .line 613
    aget v8, v1, v7

    .line 614
    .line 615
    const/16 v10, 0x7d0

    .line 616
    .line 617
    if-eqz v4, :cond_18

    .line 618
    .line 619
    const/4 v11, 0x0

    .line 620
    invoke-virtual {v3, v8, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(III)Ljava/util/List;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    goto :goto_12

    .line 625
    :catchall_3
    move-exception v0

    .line 626
    move-object v1, v0

    .line 627
    goto :goto_15

    .line 628
    :cond_18
    invoke-virtual {v3, v8, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(II)Ljava/util/List;

    .line 629
    .line 630
    .line 631
    move-result-object v10

    .line 632
    :goto_12
    array-length v11, v1

    .line 633
    if-le v11, v5, :cond_19

    .line 634
    .line 635
    const-string v11, "User #"

    .line 636
    .line 637
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 641
    .line 642
    .line 643
    const-string v8, ":"

    .line 644
    .line 645
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    :cond_19
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v8

    .line 652
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 653
    .line 654
    .line 655
    move-result v10

    .line 656
    if-eqz v10, :cond_1b

    .line 657
    .line 658
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 663
    .line 664
    if-eqz v6, :cond_1a

    .line 665
    .line 666
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v10

    .line 670
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    goto :goto_13

    .line 674
    :cond_1a
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v11

    .line 678
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    const-string v11, ":"

    .line 682
    .line 683
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;

    .line 687
    .line 688
    invoke-direct {v11, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;-><init>(Ljava/io/PrintWriter;)V

    .line 689
    .line 690
    .line 691
    const-string v12, "  "

    .line 692
    .line 693
    invoke-virtual {v10, v11, v12}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 694
    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_1b
    add-int/2addr v7, v5

    .line 698
    goto :goto_11

    .line 699
    :cond_1c
    if-eqz v2, :cond_1d

    .line 700
    .line 701
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 702
    .line 703
    .line 704
    goto :goto_14

    .line 705
    :catchall_4
    move-exception v0

    .line 706
    goto :goto_17

    .line 707
    :cond_1d
    :goto_14
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 708
    const/4 v0, 0x0

    .line 709
    return v0

    .line 710
    :goto_15
    if-eqz v2, :cond_1e

    .line 711
    .line 712
    :try_start_8
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 713
    .line 714
    .line 715
    goto :goto_16

    .line 716
    :catchall_5
    move-exception v0

    .line 717
    move-object v2, v0

    .line 718
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 719
    .line 720
    .line 721
    :cond_1e
    :goto_16
    throw v1

    .line 722
    :goto_17
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 723
    throw v0

    .line 724
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 725
    .line 726
    .line 727
    move-result v9

    .line 728
    sparse-switch v9, :sswitch_data_1

    .line 729
    .line 730
    .line 731
    :goto_18
    move v8, v11

    .line 732
    goto :goto_19

    .line 733
    :sswitch_9
    const-string v9, "--user"

    .line 734
    .line 735
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v8

    .line 739
    if-nez v8, :cond_20

    .line 740
    .line 741
    goto :goto_18

    .line 742
    :cond_20
    move v8, v1

    .line 743
    goto :goto_19

    .line 744
    :sswitch_a
    const-string v9, "-u"

    .line 745
    .line 746
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v8

    .line 750
    if-nez v8, :cond_21

    .line 751
    .line 752
    goto :goto_18

    .line 753
    :cond_21
    move v8, v2

    .line 754
    goto :goto_19

    .line 755
    :sswitch_b
    const-string v9, "-s"

    .line 756
    .line 757
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v8

    .line 761
    if-nez v8, :cond_22

    .line 762
    .line 763
    goto :goto_18

    .line 764
    :cond_22
    move v8, v5

    .line 765
    goto :goto_19

    .line 766
    :sswitch_c
    const-string v9, "-a"

    .line 767
    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v8

    .line 772
    if-nez v8, :cond_23

    .line 773
    .line 774
    goto :goto_18

    .line 775
    :cond_23
    const/4 v8, 0x0

    .line 776
    :goto_19
    packed-switch v8, :pswitch_data_1

    .line 777
    .line 778
    .line 779
    goto/16 :goto_10

    .line 780
    .line 781
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v7

    .line 785
    invoke-static {v7}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    move-result v7

    .line 789
    goto/16 :goto_10

    .line 790
    .line 791
    :pswitch_4
    move v6, v5

    .line 792
    goto/16 :goto_10

    .line 793
    .line 794
    :pswitch_5
    move v4, v5

    .line 795
    goto/16 :goto_10

    .line 796
    .line 797
    :pswitch_6
    move v11, v3

    .line 798
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 799
    .line 800
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    if-nez v2, :cond_24

    .line 808
    .line 809
    goto :goto_1b

    .line 810
    :cond_24
    const-string v3, "-u"

    .line 811
    .line 812
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v3

    .line 816
    if-nez v3, :cond_25

    .line 817
    .line 818
    const-string v3, "--user"

    .line 819
    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    if-nez v2, :cond_25

    .line 825
    .line 826
    goto :goto_1a

    .line 827
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 832
    .line 833
    .line 834
    move-result v7

    .line 835
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 844
    .line 845
    .line 846
    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 847
    :try_start_b
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    .line 848
    .line 849
    monitor-enter v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 850
    :try_start_c
    iget v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 851
    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 853
    .line 854
    .line 855
    move-result-object v9

    .line 856
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 857
    .line 858
    .line 859
    move-result-object v7

    .line 860
    array-length v8, v7

    .line 861
    const/4 v9, 0x0

    .line 862
    const/4 v10, 0x0

    .line 863
    :goto_1c
    if-ge v9, v8, :cond_28

    .line 864
    .line 865
    aget v12, v7, v9

    .line 866
    .line 867
    invoke-virtual {v1, v12, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    .line 868
    .line 869
    .line 870
    move-result v13

    .line 871
    if-nez v13, :cond_26

    .line 872
    .line 873
    goto :goto_1e

    .line 874
    :cond_26
    invoke-virtual {v1, v12, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(ILjava/lang/String;)Z

    .line 875
    .line 876
    .line 877
    move-result v13

    .line 878
    xor-int/2addr v13, v5

    .line 879
    if-eqz v13, :cond_27

    .line 880
    .line 881
    const-string v14, "Unknown input method "

    .line 882
    .line 883
    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    const-string v14, " cannot be selected for user #"

    .line 890
    .line 891
    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 895
    .line 896
    .line 897
    const-string v14, "InputMethodManagerService"

    .line 898
    .line 899
    new-instance v15, Ljava/lang/StringBuilder;

    .line 900
    .line 901
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    .line 904
    const-string v11, "\"ime set "

    .line 905
    .line 906
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    const-string v11, "\" for user #"

    .line 913
    .line 914
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    const-string v11, " failed due to its unrecognized IME ID."

    .line 921
    .line 922
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v11

    .line 929
    invoke-static {v14, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .line 931
    .line 932
    goto :goto_1d

    .line 933
    :catchall_6
    move-exception v0

    .line 934
    goto :goto_21

    .line 935
    :cond_27
    const-string v11, "Input method "

    .line 936
    .line 937
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    const-string v11, " selected for user #"

    .line 944
    .line 945
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 949
    .line 950
    .line 951
    :goto_1d
    or-int/2addr v10, v13

    .line 952
    :goto_1e
    add-int/2addr v9, v5

    .line 953
    const/4 v11, -0x1

    .line 954
    goto :goto_1c

    .line 955
    :cond_28
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 956
    if-eqz v4, :cond_29

    .line 957
    .line 958
    :try_start_d
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 959
    .line 960
    .line 961
    goto :goto_1f

    .line 962
    :catchall_7
    move-exception v0

    .line 963
    move-object v1, v0

    .line 964
    goto :goto_23

    .line 965
    :cond_29
    :goto_1f
    if-eqz v3, :cond_2a

    .line 966
    .line 967
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 968
    .line 969
    .line 970
    :cond_2a
    if-eqz v10, :cond_2b

    .line 971
    .line 972
    const/4 v3, -0x1

    .line 973
    goto :goto_20

    .line 974
    :cond_2b
    const/4 v3, 0x0

    .line 975
    :goto_20
    return v3

    .line 976
    :goto_21
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 977
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 978
    :catchall_8
    move-exception v0

    .line 979
    move-object v1, v0

    .line 980
    if-eqz v4, :cond_2c

    .line 981
    .line 982
    :try_start_10
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 983
    .line 984
    .line 985
    goto :goto_22

    .line 986
    :catchall_9
    move-exception v0

    .line 987
    move-object v2, v0

    .line 988
    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 989
    .line 990
    .line 991
    :cond_2c
    :goto_22
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 992
    :goto_23
    if-eqz v3, :cond_2d

    .line 993
    .line 994
    :try_start_12
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 995
    .line 996
    .line 997
    goto :goto_24

    .line 998
    :catchall_a
    move-exception v0

    .line 999
    move-object v2, v0

    .line 1000
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1001
    .line 1002
    .line 1003
    :cond_2d
    :goto_24
    throw v1

    .line 1004
    :pswitch_7
    const-string v1, "--user <USER_ID>: Specify which user to enable."

    .line 1005
    .line 1006
    const-string v2, " Assumes the current user if not specified."

    .line 1007
    .line 1008
    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 1009
    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    const-string v4, "  "

    .line 1015
    .line 1016
    const/16 v5, 0x64

    .line 1017
    .line 1018
    invoke-direct {v3, v0, v4, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1019
    .line 1020
    .line 1021
    :try_start_13
    const-string/jumbo v0, "ime <command>:"

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1028
    .line 1029
    .line 1030
    const-string/jumbo v0, "list [-a] [-s]"

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1037
    .line 1038
    .line 1039
    const-string/jumbo v0, "prints all enabled input methods."

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1046
    .line 1047
    .line 1048
    const-string v0, "-a: see all input methods"

    .line 1049
    .line 1050
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    const-string v0, "-s: only a single summary line of each"

    .line 1054
    .line 1055
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1062
    .line 1063
    .line 1064
    const-string/jumbo v0, "enable [--user <USER_ID>] <ID>"

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1071
    .line 1072
    .line 1073
    const-string v0, "allows the given input method ID to be used."

    .line 1074
    .line 1075
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1091
    .line 1092
    .line 1093
    const-string/jumbo v0, "disable [--user <USER_ID>] <ID>"

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1100
    .line 1101
    .line 1102
    const-string/jumbo v0, "disallows the given input method ID to be used."

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1109
    .line 1110
    .line 1111
    const-string v0, "--user <USER_ID>: Specify which user to disable."

    .line 1112
    .line 1113
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1123
    .line 1124
    .line 1125
    const-string/jumbo v0, "set [--user <USER_ID>] <ID>"

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1132
    .line 1133
    .line 1134
    const-string/jumbo v0, "switches to the given input method ID."

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1153
    .line 1154
    .line 1155
    const-string/jumbo v0, "reset [--user <USER_ID>]"

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1162
    .line 1163
    .line 1164
    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1171
    .line 1172
    .line 1173
    const-string v0, "--user <USER_ID>: Specify which user to reset."

    .line 1174
    .line 1175
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V

    .line 1191
    .line 1192
    .line 1193
    const/4 v0, 0x0

    .line 1194
    return v0

    .line 1195
    :catchall_b
    move-exception v0

    .line 1196
    move-object v1, v0

    .line 1197
    :try_start_14
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 1198
    .line 1199
    .line 1200
    goto :goto_25

    .line 1201
    :catchall_c
    move-exception v0

    .line 1202
    move-object v2, v0

    .line 1203
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1204
    .line 1205
    .line 1206
    :goto_25
    throw v1

    .line 1207
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1208
    .line 1209
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    .line 1210
    .line 1211
    .line 1212
    move-result v0

    .line 1213
    return v0

    .line 1214
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1215
    .line 1216
    invoke-static {v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    return v0

    .line 1221
    :cond_2e
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1222
    .line 1223
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    .line 1224
    .line 1225
    .line 1226
    move-result v0

    .line 1227
    return v0

    .line 1228
    nop

    .line 1229
    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_8
        -0x3f9f2f3e -> :sswitch_7
        0x0 -> :sswitch_6
        0x5db -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x30cf41 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    :sswitch_data_1
    .sparse-switch
        0x5d4 -> :sswitch_c
        0x5e6 -> :sswitch_b
        0x5e8 -> :sswitch_a
        0x4f7b216b -> :sswitch_9
    .end sparse-switch

    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "InputMethodManagerService commands:"

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
    const-string v0, "  dump [options]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Synonym of dumpsys."

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "  ime <command> [options]"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "    Manipulate IMEs.  Run \"ime help\" for details."

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "  tracing <command>"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "    start: Start tracing."

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "    stop : Stop tracing."

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "    help : Show help."

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    throw v0
.end method
