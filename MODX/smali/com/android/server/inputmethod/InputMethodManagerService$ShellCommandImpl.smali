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

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    .line 8
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p0
.end method

.method public final onCommandWithSystemIdentity(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

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

    .line 11
    move-result-object v6

    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string/jumbo v7, "tracing"

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v7

    .line 22
    if-nez v7, :cond_2e

    .line 24
    const-string/jumbo v7, "ime"

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_0

    .line 33
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    const/4 v7, -0x2

    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 53
    move-result v8

    .line 54
    sparse-switch v8, :sswitch_data_0

    .line 57
    :goto_0
    move v8, v3

    .line 58
    goto/16 :goto_1

    .line 60
    :sswitch_0
    const-string/jumbo v8, "disable"

    .line 63
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/16 v8, 0x8

    .line 72
    goto/16 :goto_1

    .line 74
    :sswitch_1
    const-string/jumbo v8, "reset"

    .line 77
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v8

    .line 81
    if-nez v8, :cond_2

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

    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_3

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

    .line 101
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_4

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

    .line 113
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_5

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

    .line 124
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_6

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

    .line 135
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_7

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

    .line 147
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_8

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

    .line 159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v8

    .line 163
    if-nez v8, :cond_9

    .line 165
    goto :goto_0

    .line 166
    :cond_9
    move v8, v4

    .line 167
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 173
    move-result-object v0

    .line 174
    const-string v1, "Unknown command: "

    .line 176
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    return v3

    .line 184
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 186
    invoke-static {v1, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    .line 189
    move-result v0

    .line 190
    return v0

    .line 191
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 200
    if-nez v2, :cond_a

    .line 202
    goto :goto_3

    .line 203
    :cond_a
    const-string v6, "-u"

    .line 205
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v6

    .line 209
    if-nez v6, :cond_b

    .line 211
    const-string v6, "--user"

    .line 213
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_b

    .line 219
    goto :goto_2

    .line 220
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 227
    move-result v7

    .line 228
    :goto_3
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    .line 230
    monitor-enter v6

    .line 231
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 234
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    iget v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 240
    move-result-object v9

    .line 241
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 244
    move-result-object v7

    .line 245
    array-length v8, v7

    .line 246
    move v9, v4

    .line 247
    :goto_4
    if-ge v9, v8, :cond_15

    .line 249
    aget v10, v7, v9

    .line 251
    invoke-virtual {v1, v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    .line 254
    move-result v11

    .line 255
    if-nez v11, :cond_c

    .line 257
    :goto_5
    move v11, v3

    .line 258
    goto/16 :goto_b

    .line 260
    :cond_c
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 262
    invoke-virtual {v11, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 265
    move-result-object v11

    .line 266
    if-eqz v11, :cond_d

    .line 268
    const-string v12, "android.os.usertype.system.HEADLESS"

    .line 270
    iget-object v11, v11, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 272
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    move-result v11

    .line 276
    if-eqz v11, :cond_d

    .line 278
    goto :goto_5

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    move-object v1, v0

    .line 281
    goto/16 :goto_d

    .line 283
    :cond_d
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 286
    move-result-object v11

    .line 287
    iget v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 289
    const/4 v13, 0x0

    .line 290
    if-ne v10, v12, :cond_13

    .line 292
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 295
    move-result v12

    .line 296
    if-eqz v12, :cond_e

    .line 298
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 300
    if-eqz v12, :cond_f

    .line 302
    iget-object v12, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 304
    if-eqz v12, :cond_f

    .line 306
    iget-object v12, v12, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 308
    if-eqz v12, :cond_f

    .line 310
    invoke-virtual {v12, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 313
    goto :goto_6

    .line 314
    :cond_e
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 316
    iget-object v12, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 318
    const/16 v14, 0xf

    .line 320
    invoke-virtual {v1, v14, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 323
    :cond_f
    :goto_6
    invoke-virtual {v1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 326
    move-result-object v12

    .line 327
    invoke-virtual {v12}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 330
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 333
    move-result-object v12

    .line 334
    iget-object v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 336
    iget-object v15, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 338
    invoke-static {v14, v15, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 341
    move-result-object v14

    .line 342
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 345
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 348
    move-result-object v12

    .line 349
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    move-result v15

    .line 353
    if-eqz v15, :cond_10

    .line 355
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    move-result-object v15

    .line 359
    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    .line 361
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 364
    move-result-object v15

    .line 365
    invoke-virtual {v1, v15, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 368
    goto :goto_7

    .line 369
    :cond_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 372
    move-result-object v12

    .line 373
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    move-result v14

    .line 377
    if-eqz v14, :cond_11

    .line 379
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    move-result-object v14

    .line 383
    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 385
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 388
    move-result-object v14

    .line 389
    invoke-virtual {v1, v14, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 392
    goto :goto_8

    .line 393
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 396
    move-result v12

    .line 397
    if-nez v12, :cond_12

    .line 399
    invoke-virtual {v1, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 402
    :cond_12
    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 405
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 407
    iget v14, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 409
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 412
    move-result-object v12

    .line 413
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 416
    move-result-object v14

    .line 417
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 420
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 423
    move-result-object v12

    .line 424
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

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

    .line 434
    iget-object v14, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 436
    invoke-static {v12, v14, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 439
    move-result-object v12

    .line 440
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    .line 443
    move-result-object v14

    .line 444
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 447
    move-result-object v14

    .line 448
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 451
    move-result v15

    .line 452
    new-array v4, v15, [Ljava/lang/String;

    .line 454
    const/4 v3, 0x0

    .line 455
    :goto_9
    if-ge v3, v15, :cond_14

    .line 457
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 460
    move-result-object v16

    .line 461
    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 463
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 466
    move-result-object v16

    .line 467
    aput-object v16, v4, v3

    .line 469
    add-int/2addr v3, v5

    .line 470
    goto :goto_9

    .line 471
    :cond_14
    const-string v3, ""

    .line 473
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 476
    move-result-object v3

    .line 477
    invoke-virtual {v11, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v11, v14}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v11, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 486
    iget v3, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 488
    invoke-static {v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 491
    move-result-object v3

    .line 492
    const-string/jumbo v4, "selected_input_method_subtype"

    .line 495
    const/4 v11, -0x1

    .line 496
    invoke-interface {v3, v11, v4}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    .line 499
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 501
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    const-string v4, "Reset current and enabled IMEs for user #"

    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    .line 521
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    const-string v4, "  Selected: "

    .line 526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    .line 541
    const/4 v4, 0x0

    .line 542
    invoke-direct {v3, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 545
    invoke-interface {v12, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    :goto_b
    add-int/2addr v9, v5

    .line 549
    move v3, v11

    .line 550
    const/4 v4, 0x0

    .line 551
    goto/16 :goto_4

    .line 553
    :cond_15
    if-eqz v2, :cond_16

    .line 555
    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

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

    .line 566
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

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

    .line 581
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    const/4 v4, 0x0

    .line 585
    const/4 v6, 0x0

    .line 586
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 589
    move-result-object v8

    .line 590
    if-nez v8, :cond_1f

    .line 592
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    .line 594
    monitor-enter v9

    .line 595
    :try_start_5
    iget v1, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 600
    move-result-object v2

    .line 601
    invoke-static {v7, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 604
    move-result-object v1

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

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

    .line 613
    aget v8, v1, v7

    .line 615
    const/16 v10, 0x7d0

    .line 617
    if-eqz v4, :cond_18

    .line 619
    const/4 v11, 0x0

    .line 620
    invoke-virtual {v3, v8, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(III)Ljava/util/List;

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

    .line 631
    move-result-object v10

    .line 632
    :goto_12
    array-length v11, v1

    .line 633
    if-le v11, v5, :cond_19

    .line 635
    const-string v11, "User #"

    .line 637
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 643
    const-string v8, ":"

    .line 645
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    :cond_19
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 651
    move-result-object v8

    .line 652
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 655
    move-result v10

    .line 656
    if-eqz v10, :cond_1b

    .line 658
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 661
    move-result-object v10

    .line 662
    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 664
    if-eqz v6, :cond_1a

    .line 666
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 669
    move-result-object v10

    .line 670
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    goto :goto_13

    .line 674
    :cond_1a
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 677
    move-result-object v11

    .line 678
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    const-string v11, ":"

    .line 683
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;

    .line 688
    invoke-direct {v11, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;-><init>(Ljava/io/PrintWriter;)V

    .line 691
    const-string v12, "  "

    .line 693
    invoke-virtual {v10, v11, v12}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

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

    .line 701
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

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

    .line 712
    :try_start_8
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

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

    .line 727
    move-result v9

    .line 728
    sparse-switch v9, :sswitch_data_1

    .line 731
    :goto_18
    move v8, v11

    .line 732
    goto :goto_19

    .line 733
    :sswitch_9
    const-string v9, "--user"

    .line 735
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    move-result v8

    .line 739
    if-nez v8, :cond_20

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

    .line 746
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    move-result v8

    .line 750
    if-nez v8, :cond_21

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

    .line 757
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 760
    move-result v8

    .line 761
    if-nez v8, :cond_22

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

    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    move-result v8

    .line 772
    if-nez v8, :cond_23

    .line 774
    goto :goto_18

    .line 775
    :cond_23
    const/4 v8, 0x0

    .line 776
    :goto_19
    packed-switch v8, :pswitch_data_1

    .line 779
    goto/16 :goto_10

    .line 781
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 784
    move-result-object v7

    .line 785
    invoke-static {v7}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 788
    move-result v7

    .line 789
    goto/16 :goto_10

    .line 791
    :pswitch_4
    move v6, v5

    .line 792
    goto/16 :goto_10

    .line 794
    :pswitch_5
    move v4, v5

    .line 795
    goto/16 :goto_10

    .line 797
    :pswitch_6
    move v11, v3

    .line 798
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 800
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 806
    move-result-object v2

    .line 807
    if-nez v2, :cond_24

    .line 809
    goto :goto_1b

    .line 810
    :cond_24
    const-string v3, "-u"

    .line 812
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    move-result v3

    .line 816
    if-nez v3, :cond_25

    .line 818
    const-string v3, "--user"

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    move-result v2

    .line 824
    if-nez v2, :cond_25

    .line 826
    goto :goto_1a

    .line 827
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 830
    move-result-object v2

    .line 831
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 834
    move-result v7

    .line 835
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 838
    move-result-object v2

    .line 839
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 842
    move-result-object v3

    .line 843
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 846
    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 847
    :try_start_b
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    .line 849
    monitor-enter v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 850
    :try_start_c
    iget v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 855
    move-result-object v9

    .line 856
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

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

    .line 865
    aget v12, v7, v9

    .line 867
    invoke-virtual {v1, v12, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    .line 870
    move-result v13

    .line 871
    if-nez v13, :cond_26

    .line 873
    goto :goto_1e

    .line 874
    :cond_26
    invoke-virtual {v1, v12, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(ILjava/lang/String;)Z

    .line 877
    move-result v13

    .line 878
    xor-int/2addr v13, v5

    .line 879
    if-eqz v13, :cond_27

    .line 881
    const-string v14, "Unknown input method "

    .line 883
    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    const-string v14, " cannot be selected for user #"

    .line 891
    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 897
    const-string v14, "InputMethodManagerService"

    .line 899
    new-instance v15, Ljava/lang/StringBuilder;

    .line 901
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    const-string v11, "\"ime set "

    .line 906
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v11, "\" for user #"

    .line 914
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 920
    const-string v11, " failed due to its unrecognized IME ID."

    .line 922
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    move-result-object v11

    .line 929
    invoke-static {v14, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 937
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    const-string v11, " selected for user #"

    .line 945
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(I)V

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

    .line 958
    :try_start_d
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

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

    .line 967
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 970
    :cond_2a
    if-eqz v10, :cond_2b

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

    .line 982
    :try_start_10
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

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

    .line 991
    :cond_2c
    :goto_22
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 992
    :goto_23
    if-eqz v3, :cond_2d

    .line 994
    :try_start_12
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 997
    goto :goto_24

    .line 998
    :catchall_a
    move-exception v0

    .line 999
    move-object v2, v0

    .line 1000
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1003
    :cond_2d
    :goto_24
    throw v1

    .line 1004
    :pswitch_7
    const-string v1, "--user <USER_ID>: Specify which user to enable."

    .line 1006
    const-string v2, " Assumes the current user if not specified."

    .line 1008
    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 1010
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1013
    move-result-object v0

    .line 1014
    const-string v4, "  "

    .line 1016
    const/16 v5, 0x64

    .line 1018
    invoke-direct {v3, v0, v4, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1021
    :try_start_13
    const-string/jumbo v0, "ime <command>:"

    .line 1024
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1030
    const-string/jumbo v0, "list [-a] [-s]"

    .line 1033
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1039
    const-string/jumbo v0, "prints all enabled input methods."

    .line 1042
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1048
    const-string v0, "-a: see all input methods"

    .line 1050
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v0, "-s: only a single summary line of each"

    .line 1055
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1061
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1064
    const-string/jumbo v0, "enable [--user <USER_ID>] <ID>"

    .line 1067
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1073
    const-string v0, "allows the given input method ID to be used."

    .line 1075
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1081
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1090
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1093
    const-string/jumbo v0, "disable [--user <USER_ID>] <ID>"

    .line 1096
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1102
    const-string/jumbo v0, "disallows the given input method ID to be used."

    .line 1105
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1111
    const-string v0, "--user <USER_ID>: Specify which user to disable."

    .line 1113
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1122
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1125
    const-string/jumbo v0, "set [--user <USER_ID>] <ID>"

    .line 1128
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1134
    const-string/jumbo v0, "switches to the given input method ID."

    .line 1137
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1143
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1152
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1155
    const-string/jumbo v0, "reset [--user <USER_ID>]"

    .line 1158
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1164
    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    .line 1167
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1173
    const-string v0, "--user <USER_ID>: Specify which user to reset."

    .line 1175
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1184
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1187
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1190
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V

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

    .line 1200
    goto :goto_25

    .line 1201
    :catchall_c
    move-exception v0

    .line 1202
    move-object v2, v0

    .line 1203
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1206
    :goto_25
    throw v1

    .line 1207
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1209
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    .line 1212
    move-result v0

    .line 1213
    return v0

    .line 1214
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1216
    invoke-static {v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    .line 1219
    move-result v0

    .line 1220
    return v0

    .line 1221
    :cond_2e
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1223
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

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

    .line 1289
    :sswitch_data_1
    .sparse-switch
        0x5d4 -> :sswitch_c
        0x5e6 -> :sswitch_b
        0x5e8 -> :sswitch_a
        0x4f7b216b -> :sswitch_9
    .end sparse-switch

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

    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "InputMethodManagerService commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Prints this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  dump [options]"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Synonym of dumpsys."

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "  ime <command> [options]"

    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v0, "    Manipulate IMEs.  Run \"ime help\" for details."

    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    const-string v0, "  tracing <command>"

    .line 42
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    const-string v0, "    start: Start tracing."

    .line 47
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    const-string v0, "    stop : Stop tracing."

    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    const-string v0, "    help : Show help."

    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    if-eqz p0, :cond_0

    .line 67
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    :goto_0
    throw v0
.end method
