.class public final Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "VZWResetSettingReceiver : onReceive() intentAction"

    .line 14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    const-string v0, "InputMethodManagerService"

    .line 26
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string/jumbo p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 38
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 40
    sget-object p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 51
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 54
    move-result-object p1

    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result p2

    .line 64
    if-lez p2, :cond_2

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result p2

    .line 70
    move v2, v1

    .line 71
    :goto_0
    if-ge v2, p2, :cond_2

    .line 73
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 79
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    const-string/jumbo v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    sput-object v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    :try_start_0
    sget-object p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 108
    if-eqz p1, :cond_3

    .line 110
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 112
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 115
    move-result-object p1

    .line 116
    sget-object p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 118
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception p0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo p2, "changeKeyboardForVZWResetSetting "

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    :goto_2
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 148
    const-string/jumbo v1, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 151
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 161
    const-string p0, "InputMethodManagerService"

    .line 163
    const-string/jumbo p1, "screen off receiver return because of using writing toolkit"

    .line 166
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    goto :goto_3

    .line 170
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 173
    move-result-object p2

    .line 174
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_5

    .line 182
    const-string/jumbo p2, "keyguard"

    .line 185
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Landroid/app/KeyguardManager;

    .line 191
    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_5

    .line 199
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 201
    monitor-enter p1

    .line 202
    :try_start_1
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 204
    const/4 v0, 0x0

    .line 205
    const/16 v6, 0x3b

    .line 207
    invoke-virtual {p2, v6, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 210
    move-result-object v3

    .line 211
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 213
    iget-object p0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 215
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 217
    const/4 v4, 0x0

    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 222
    monitor-exit p1

    .line 223
    goto :goto_3

    .line 224
    :catchall_0
    move-exception p0

    .line 225
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    throw p0

    .line 227
    :cond_5
    :goto_3
    return-void

    .line 228
    :pswitch_1
    const-string p1, "Unbind service when Desktop disconnected and Keyboard not in default display: "

    .line 230
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 232
    monitor-enter v0

    .line 233
    if-eqz p2, :cond_d

    .line 235
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_d

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 244
    move-result-object p2

    .line 245
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 247
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 249
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->semComputeImeDisplayIdForTarget(I)I

    .line 252
    move-result v1

    .line 253
    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    .line 255
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_7

    .line 261
    const-string p1, "InputMethodManagerService"

    .line 263
    const-string p2, "KnoxDesktop Connected"

    .line 265
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 270
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    .line 273
    move-result p1

    .line 274
    if-nez p1, :cond_6

    .line 276
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 278
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_d

    .line 284
    goto :goto_4

    .line 285
    :catchall_1
    move-exception p0

    .line 286
    goto/16 :goto_7

    .line 288
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 290
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z

    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_d

    .line 296
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 298
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 300
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 302
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 305
    move-result-object p1

    .line 306
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 308
    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 313
    move-result-object p2

    .line 314
    const-string/jumbo v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    .line 317
    invoke-static {p2, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 322
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 325
    goto/16 :goto_6

    .line 327
    :cond_7
    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    .line 329
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result p2

    .line 333
    if-eqz p2, :cond_d

    .line 335
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 337
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 340
    move-result p2

    .line 341
    const/4 v2, 0x1

    .line 342
    if-nez p2, :cond_8

    .line 344
    if-eqz v1, :cond_8

    .line 346
    const-string p2, "InputMethodManagerService"

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object p1

    .line 360
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 365
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 367
    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->onChange(Z)V

    .line 370
    :cond_8
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 372
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z

    .line 375
    move-result p1

    .line 376
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 378
    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 380
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 383
    move-result-object p2

    .line 384
    const-string/jumbo v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    .line 387
    invoke-static {p2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    move-result-object p2

    .line 391
    const-string v1, "-1"

    .line 393
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    move-result v1

    .line 397
    const/4 v3, 0x0

    .line 398
    if-nez v1, :cond_a

    .line 400
    if-nez p2, :cond_9

    .line 402
    goto :goto_5

    .line 403
    :cond_9
    move v2, v3

    .line 404
    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    .line 406
    if-eqz v2, :cond_b

    .line 408
    const-string p1, "InputMethodManagerService"

    .line 410
    const-string p2, "KnoxDesktop Disconnected startInputInnerLocked"

    .line 412
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 417
    const/16 p2, 0x1e

    .line 419
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 422
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 424
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 427
    goto :goto_6

    .line 428
    :cond_b
    if-nez v2, :cond_c

    .line 430
    const-string p1, "InputMethodManagerService"

    .line 432
    const-string p2, "KnoxDesktop Disconnected Restore previous inputmethod"

    .line 434
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->restorePreviousUsedInputMethod()V

    .line 440
    :cond_c
    const-string p0, "InputMethodManagerService"

    .line 442
    const-string p1, "KnoxDesktop Disconnected it do not need to unbind service"

    .line 444
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_d
    :goto_6
    monitor-exit v0

    .line 448
    return-void

    .line 449
    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    throw p0

    .line 451
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 454
    move-result-object p1

    .line 455
    const-string/jumbo v0, "com.sec.android.inputmethod.Subtype"

    .line 458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    move-result p1

    .line 462
    if-eqz p1, :cond_f

    .line 464
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 467
    move-result-object p1

    .line 468
    const-string p2, "SamsungIME.Subtype"

    .line 470
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 473
    move-result-object p1

    .line 474
    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 476
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 478
    iget p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 480
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 483
    move-result-object p2

    .line 484
    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 486
    const-string/jumbo v0, "selected_input_method_subtype"

    .line 489
    const/4 v1, -0x1

    .line 490
    invoke-static {v1, p2, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 493
    move-result p2

    .line 494
    if-eq p2, v1, :cond_e

    .line 496
    goto :goto_8

    .line 497
    :cond_e
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 499
    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    .line 502
    :goto_8
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 507
    goto :goto_9

    .line 508
    :catch_1
    move-exception p0

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    .line 511
    const-string p2, "KeyboardSubTypeReceiver : "

    .line 513
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    move-result-object p0

    .line 523
    const-string p1, "InputMethodManagerService"

    .line 525
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_f
    :goto_9
    return-void

    .line 529
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 532
    move-result-object p1

    .line 533
    const-string/jumbo v0, "com.samsung.systemui.statusbar.ANIMATING"

    .line 536
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v0

    .line 540
    const-string v1, "InputMethodManagerService"

    .line 542
    if-nez v0, :cond_11

    .line 544
    const-string/jumbo v0, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_10

    .line 553
    goto :goto_a

    .line 554
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 556
    const-string p1, "Unexpected intent "

    .line 558
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    move-result-object p0

    .line 568
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    goto :goto_b

    .line 572
    :cond_11
    :goto_a
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 574
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 577
    move-result p2

    .line 578
    if-eqz p2, :cond_12

    .line 580
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 582
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 585
    move-result p2

    .line 586
    if-eqz p2, :cond_12

    .line 588
    const-string p2, "Status-bar Animating : Hide Keyboard action="

    .line 590
    invoke-static {p2, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 595
    const/4 p2, 0x0

    .line 596
    const/16 v5, 0x39

    .line 598
    invoke-virtual {p1, v5, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 601
    move-result-object v2

    .line 602
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 604
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 606
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 608
    const/4 v3, 0x0

    .line 609
    const/4 v4, 0x0

    .line 610
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 613
    :cond_12
    :goto_b
    return-void

    .line 614
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 617
    move-result-object p1

    .line 618
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 620
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    move-result p1

    .line 624
    if-eqz p1, :cond_16

    .line 626
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    .line 629
    move-result-object p1

    .line 630
    if-nez p1, :cond_13

    .line 632
    goto :goto_e

    .line 633
    :cond_13
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->getSendingUserId()I

    .line 636
    move-result p1

    .line 637
    const/4 p2, -0x1

    .line 638
    if-eq p1, p2, :cond_15

    .line 640
    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    .line 642
    monitor-enter p2

    .line 643
    :try_start_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 645
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 647
    if-eq p1, v0, :cond_14

    .line 649
    monitor-exit p2

    .line 650
    goto :goto_e

    .line 651
    :catchall_2
    move-exception p0

    .line 652
    goto :goto_c

    .line 653
    :cond_14
    monitor-exit p2

    .line 654
    goto :goto_d

    .line 655
    :goto_c
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 656
    throw p0

    .line 657
    :cond_15
    :goto_d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 659
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 666
    monitor-enter p1

    .line 667
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 670
    monitor-exit p1

    .line 671
    goto :goto_e

    .line 672
    :catchall_3
    move-exception p0

    .line 673
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 674
    throw p0

    .line 675
    :cond_16
    const-string p0, "InputMethodManagerService"

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    .line 679
    const-string v0, "Unexpected intent "

    .line 681
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    move-result-object p1

    .line 691
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_e
    return-void

    .line 695
    :pswitch_5
    const-string/jumbo p1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 698
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 701
    move-result-object p2

    .line 702
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    move-result p1

    .line 706
    if-eqz p1, :cond_19

    .line 708
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 710
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 712
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 715
    move-result-object p1

    .line 716
    const-string/jumbo p2, "shopdemo"

    .line 719
    const/4 v0, 0x0

    .line 720
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 723
    move-result p1

    .line 724
    const/4 p2, 0x1

    .line 725
    if-ne p1, p2, :cond_19

    .line 727
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 730
    move-result-object p1

    .line 731
    const-string p2, "SEC_FLOATING_FEATURE_SIP_CONFIG_ADDTIONAL_INPUT_METHOD"

    .line 733
    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 736
    move-result-object p1

    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 740
    move-result p2

    .line 741
    if-nez p2, :cond_17

    .line 743
    const-string p2, "SOGOU_CUSTOMIZED"

    .line 745
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 748
    move-result p1

    .line 749
    if-eqz p1, :cond_17

    .line 751
    const-string/jumbo p1, "com.sohu.inputmethod.sogou.samsung/.SogouIME"

    .line 754
    goto :goto_f

    .line 755
    :cond_17
    const-string/jumbo p1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 758
    :goto_f
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    .line 763
    move-result p2

    .line 764
    const-string v1, "InputMethodManagerService"

    .line 766
    if-nez p2, :cond_18

    .line 768
    const-string/jumbo p0, "setDefaultIMEForKeyboard, IME not installed: "

    .line 771
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    move-result-object p0

    .line 775
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    goto :goto_10

    .line 779
    :cond_18
    :try_start_6
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 781
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 784
    move-result-object p2

    .line 785
    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 788
    move-result p2

    .line 789
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    .line 792
    goto :goto_10

    .line 793
    :catch_2
    move-exception p0

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    .line 796
    const-string/jumbo p2, "setDefaultIMEForKeyboard "

    .line 799
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 808
    move-result-object p0

    .line 809
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_19
    :goto_10
    return-void

    .line 813
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restorePreviousUsedInputMethod()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    .line 12
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v2, "InputMethodManagerService"

    .line 18
    if-eqz v0, :cond_3

    .line 20
    const-string v3, "-1"

    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 31
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 37
    const-string p0, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 49
    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 51
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-static {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_2

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 67
    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 69
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 72
    move-result-object v4

    .line 73
    const-string v5, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    .line 75
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 80
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 90
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    :cond_2
    return-void

    .line 100
    :cond_3
    :goto_0
    const-string p0, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    .line 102
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
