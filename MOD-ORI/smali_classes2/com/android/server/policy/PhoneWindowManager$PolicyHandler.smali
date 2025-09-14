.class public final Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    goto/16 :goto_b

    .line 15
    .line 16
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->getActionsBufferWithLazyCleanUp(IJ)Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-boolean v6, v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mExecutable:Z

    .line 35
    .line 36
    sget-boolean v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 41
    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v2, "setExecutable: execute actions for key "

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mKeyCode:I

    .line 59
    .line 60
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "DeferredKeyAction"

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v1, v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 77
    .line 78
    check-cast v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/Runnable;

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 101
    .line 102
    check-cast v0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_b

    .line 108
    .line 109
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 110
    .line 111
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 112
    .line 113
    sget-object v3, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VALUE_TO_ENUM_MAP:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 120
    .line 121
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Landroid/view/KeyEvent;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    filled-new-array {v4}, [I

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;I[I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_b

    .line 154
    .line 155
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 160
    .line 161
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->keyEvent:Landroid/view/KeyEvent;

    .line 162
    .line 163
    iget v3, v1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_2

    .line 172
    .line 173
    const-string v0, "WindowManager"

    .line 174
    .line 175
    const-string v1, "Ignoring switching keyboard layout - device not setup."

    .line 176
    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto/16 :goto_b

    .line 181
    .line 182
    :cond_2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getTargetWindowTokenFromInputToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSwitchKeyboardLayoutShortcut(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_b

    .line 198
    .line 199
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 200
    .line 201
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 202
    .line 203
    if-nez v1, :cond_3

    .line 204
    .line 205
    goto/16 :goto_b

    .line 206
    .line 207
    :cond_3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 211
    .line 212
    if-nez v1, :cond_4

    .line 213
    .line 214
    const-class v1, Landroid/media/AudioManagerInternal;

    .line 215
    .line 216
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Landroid/media/AudioManagerInternal;

    .line 221
    .line 222
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    goto :goto_2

    .line 227
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 228
    .line 229
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    const-string/jumbo v2, "volume_hush"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-string v2, "hush_gesture_used"

    .line 243
    .line 244
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 248
    .line 249
    const/16 v2, 0x5a0

    .line 250
    .line 251
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 252
    .line 253
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_b

    .line 257
    .line 258
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    throw v0

    .line 260
    :pswitch_5
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 261
    .line 262
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v1, Ljava/lang/Long;

    .line 265
    .line 266
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 269
    .line 270
    .line 271
    move-result-wide v6

    .line 272
    const/4 v5, 0x7

    .line 273
    const/4 v8, 0x0

    .line 274
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_b

    .line 278
    .line 279
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_b

    .line 285
    .line 286
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v1, Landroid/view/KeyEvent;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_5

    .line 297
    .line 298
    :try_start_2
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    .line 300
    .line 301
    :catch_0
    :cond_5
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 307
    .line 308
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManagerInternal;->onBackKeyPressed()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_b

    .line 314
    .line 315
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 316
    .line 317
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 318
    .line 319
    invoke-virtual {v1, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_1e

    .line 324
    .line 325
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    const-string v1, "WindowManager"

    .line 331
    .line 332
    const-string v2, "Accessibility Shortcut Volup + Voldown is performed"

    .line 333
    .line 334
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 340
    .line 341
    .line 342
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 343
    .line 344
    if-eqz v1, :cond_1e

    .line 345
    .line 346
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    const-string v0, "HWB1011"

    .line 352
    .line 353
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_b

    .line 357
    .line 358
    :pswitch_a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_1e

    .line 372
    .line 373
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 378
    .line 379
    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :catch_1
    move-exception v0

    .line 383
    const-string v1, "WindowManager"

    .line 384
    .line 385
    const-string v2, "Error taking bugreport"

    .line 386
    .line 387
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .line 389
    .line 390
    goto/16 :goto_b

    .line 391
    .line 392
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    const-string v1, "WindowManager"

    .line 398
    .line 399
    const-string v2, "Accessibility Shortcut Volup + Voldown is performed"

    .line 400
    .line 401
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 407
    .line 408
    .line 409
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 410
    .line 411
    if-eqz v1, :cond_1e

    .line 412
    .line 413
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    const-string v0, "HWB1011"

    .line 419
    .line 420
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_b

    .line 424
    .line 425
    :pswitch_c
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 426
    .line 427
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 430
    .line 431
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 432
    .line 433
    if-eqz v2, :cond_1e

    .line 434
    .line 435
    new-instance v2, Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 436
    .line 437
    invoke-direct {v2, v6, v1}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 445
    .line 446
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 447
    .line 448
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_b

    .line 452
    .line 453
    :pswitch_d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    if-eqz v0, :cond_1e

    .line 460
    .line 461
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 462
    .line 463
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 464
    .line 465
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 466
    .line 467
    if-eqz v1, :cond_1e

    .line 468
    .line 469
    :try_start_4
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 470
    .line 471
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 472
    .line 473
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 474
    .line 475
    .line 476
    goto/16 :goto_b

    .line 477
    .line 478
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 479
    .line 480
    const-string v1, "assist"

    .line 481
    .line 482
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 483
    .line 484
    invoke-static {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_6

    .line 492
    .line 493
    new-instance v1, Landroid/content/Intent;

    .line 494
    .line 495
    const-string v2, "android.speech.action.WEB_SEARCH"

    .line 496
    .line 497
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    goto :goto_3

    .line 501
    :cond_6
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 502
    .line 503
    const-class v2, Landroid/os/DeviceIdleManager;

    .line 504
    .line 505
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    check-cast v1, Landroid/os/DeviceIdleManager;

    .line 510
    .line 511
    if-eqz v1, :cond_7

    .line 512
    .line 513
    const-string/jumbo v2, "voice-search"

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v2}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :cond_7
    new-instance v1, Landroid/content/Intent;

    .line 520
    .line 521
    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    .line 522
    .line 523
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const-string v2, "android.speech.extras.EXTRA_SECURE"

    .line 527
    .line 528
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    .line 530
    .line 531
    :goto_3
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 532
    .line 533
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 534
    .line 535
    .line 536
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 537
    .line 538
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_b

    .line 542
    .line 543
    :pswitch_f
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 544
    .line 545
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 546
    .line 547
    monitor-enter v2

    .line 548
    :try_start_5
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 549
    .line 550
    if-nez v1, :cond_8

    .line 551
    .line 552
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 553
    .line 554
    monitor-exit v2

    .line 555
    goto/16 :goto_b

    .line 556
    .line 557
    :catchall_1
    move-exception v0

    .line 558
    goto :goto_5

    .line 559
    :cond_8
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 560
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 561
    .line 562
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-eqz v2, :cond_9

    .line 573
    .line 574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    check-cast v2, Landroid/app/ProgressDialog;

    .line 579
    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    const-string v4, "dismissBootDialogs: dismissing d"

    .line 583
    .line 584
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    const-string v4, "PhoneWindowManagerExt"

    .line 603
    .line 604
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 608
    .line 609
    .line 610
    goto :goto_4

    .line 611
    :cond_9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_b

    .line 617
    .line 618
    :goto_5
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 619
    throw v0

    .line 620
    :pswitch_10
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_GLOBAL_ACTION:Z

    .line 621
    .line 622
    if-eqz v2, :cond_b

    .line 623
    .line 624
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 625
    .line 626
    if-ne v1, v6, :cond_a

    .line 627
    .line 628
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 629
    .line 630
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 631
    .line 632
    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    .line 633
    .line 634
    const-string v2, "Power - Long Press - Show Global Actions"

    .line 635
    .line 636
    invoke-virtual {v1, v5, v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 637
    .line 638
    .line 639
    move v4, v6

    .line 640
    :cond_a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 641
    .line 642
    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_b

    .line 646
    .line 647
    :cond_b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 648
    .line 649
    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_b

    .line 653
    .line 654
    :pswitch_11
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 655
    .line 656
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_b

    .line 660
    .line 661
    :pswitch_12
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 662
    .line 663
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 664
    .line 665
    if-eqz v2, :cond_c

    .line 666
    .line 667
    const-string v2, "WindowManager"

    .line 668
    .line 669
    const-string v7, "All windows drawn on display "

    .line 670
    .line 671
    invoke-static {v1, v7, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :cond_c
    const-string/jumbo v2, "waitForAllWindowsDrawn"

    .line 675
    .line 676
    .line 677
    const-wide/16 v7, 0x20

    .line 678
    .line 679
    invoke-static {v7, v8, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 680
    .line 681
    .line 682
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    if-eqz v1, :cond_d

    .line 688
    .line 689
    if-eq v1, v4, :cond_d

    .line 690
    .line 691
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 692
    .line 693
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    check-cast v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 698
    .line 699
    if-eqz v0, :cond_1e

    .line 700
    .line 701
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->onScreenOn()V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_b

    .line 705
    .line 706
    :cond_d
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 707
    .line 708
    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 709
    .line 710
    monitor-enter v2

    .line 711
    :try_start_7
    iget-boolean v4, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 712
    .line 713
    if-eqz v4, :cond_15

    .line 714
    .line 715
    iget-boolean v4, v1, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 716
    .line 717
    if-eqz v4, :cond_e

    .line 718
    .line 719
    goto/16 :goto_9

    .line 720
    .line 721
    :cond_e
    iput-boolean v6, v1, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 722
    .line 723
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 724
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 725
    .line 726
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 727
    .line 728
    .line 729
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 730
    .line 731
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 732
    .line 733
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 734
    .line 735
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 736
    .line 737
    monitor-enter v4

    .line 738
    :try_start_8
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:[Z

    .line 739
    .line 740
    aget-boolean v9, v9, v5

    .line 741
    .line 742
    if-eqz v9, :cond_f

    .line 743
    .line 744
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 745
    .line 746
    iget-boolean v10, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 747
    .line 748
    iget-boolean v11, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 749
    .line 750
    iget-boolean v12, v2, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 751
    .line 752
    iget-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 753
    .line 754
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 755
    .line 756
    const-string v18, "finishScreenTurningOn: mAwake=%b, mScreenOnEarly=%b, mScreenOnFully=%b, mKeyguardDrawComplete=%b, mWindowManagerDrawComplete=%b"

    .line 757
    .line 758
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 759
    .line 760
    .line 761
    move-result-object v9

    .line 762
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 763
    .line 764
    .line 765
    move-result-object v10

    .line 766
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 767
    .line 768
    .line 769
    move-result-object v11

    .line 770
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 771
    .line 772
    .line 773
    move-result-object v12

    .line 774
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 775
    .line 776
    .line 777
    move-result-object v13

    .line 778
    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v19

    .line 782
    const-wide v15, 0x2c512e2cbf6b3cccL    # 3.217317335218175E-95

    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    const/16 v17, 0x3ff

    .line 788
    .line 789
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    goto :goto_6

    .line 793
    :catchall_2
    move-exception v0

    .line 794
    goto/16 :goto_8

    .line 795
    .line 796
    :cond_f
    :goto_6
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 797
    .line 798
    if-nez v9, :cond_14

    .line 799
    .line 800
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 801
    .line 802
    if-eqz v9, :cond_14

    .line 803
    .line 804
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 805
    .line 806
    if-eqz v9, :cond_14

    .line 807
    .line 808
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 809
    .line 810
    if-eqz v9, :cond_10

    .line 811
    .line 812
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 813
    .line 814
    if-nez v9, :cond_10

    .line 815
    .line 816
    goto :goto_7

    .line 817
    :cond_10
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    .line 818
    .line 819
    const/4 v10, 0x2

    .line 820
    aget-boolean v9, v9, v10

    .line 821
    .line 822
    if-eqz v9, :cond_11

    .line 823
    .line 824
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 825
    .line 826
    const/4 v14, 0x0

    .line 827
    const/4 v15, 0x0

    .line 828
    const-wide v11, -0x53a7e01d7e89c72aL    # -4.517733403274509E-95

    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    const/4 v13, 0x0

    .line 834
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    :cond_11
    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 838
    .line 839
    iput-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 840
    .line 841
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 842
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 843
    .line 844
    if-eqz v3, :cond_13

    .line 845
    .line 846
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 847
    .line 848
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 849
    .line 850
    if-eqz v3, :cond_13

    .line 851
    .line 852
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 853
    .line 854
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 855
    .line 856
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 857
    .line 858
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 859
    .line 860
    if-eqz v3, :cond_13

    .line 861
    .line 862
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 863
    .line 864
    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 865
    .line 866
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 867
    .line 868
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    .line 869
    .line 870
    .line 871
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 872
    .line 873
    if-eqz v3, :cond_13

    .line 874
    .line 875
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 876
    .line 877
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 878
    .line 879
    iget-object v2, v2, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 880
    .line 881
    const/4 v3, 0x3

    .line 882
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 883
    .line 884
    .line 885
    move-result v4

    .line 886
    if-eqz v4, :cond_12

    .line 887
    .line 888
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 889
    .line 890
    .line 891
    :cond_12
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 896
    .line 897
    .line 898
    :cond_13
    const-string/jumbo v2, "screenTurningOn"

    .line 899
    .line 900
    .line 901
    invoke-static {v7, v8, v2, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v0, v1, v6}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V

    .line 905
    .line 906
    .line 907
    goto/16 :goto_b

    .line 908
    .line 909
    :cond_14
    :goto_7
    :try_start_9
    monitor-exit v4

    .line 910
    goto/16 :goto_b

    .line 911
    .line 912
    :goto_8
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 913
    throw v0

    .line 914
    :catchall_3
    move-exception v0

    .line 915
    goto :goto_a

    .line 916
    :cond_15
    :goto_9
    :try_start_a
    monitor-exit v2

    .line 917
    goto/16 :goto_b

    .line 918
    .line 919
    :goto_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 920
    throw v0

    .line 921
    :pswitch_13
    const-string v1, "WindowManager"

    .line 922
    .line 923
    const-string v2, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    .line 924
    .line 925
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .line 927
    .line 928
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 929
    .line 930
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 931
    .line 932
    .line 933
    goto/16 :goto_b

    .line 934
    .line 935
    :pswitch_14
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 936
    .line 937
    if-eqz v1, :cond_16

    .line 938
    .line 939
    const-string v1, "WindowManager"

    .line 940
    .line 941
    const-string v2, "Setting mKeyguardDrawComplete"

    .line 942
    .line 943
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .line 945
    .line 946
    :cond_16
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 947
    .line 948
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 949
    .line 950
    .line 951
    goto/16 :goto_b

    .line 952
    .line 953
    :pswitch_15
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 954
    .line 955
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast v1, Landroid/view/KeyEvent;

    .line 958
    .line 959
    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 960
    .line 961
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 962
    .line 963
    .line 964
    move-result-wide v2

    .line 965
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    .line 966
    .line 967
    .line 968
    move-result v4

    .line 969
    or-int/lit16 v4, v4, 0x80

    .line 970
    .line 971
    invoke-static {v1, v2, v3, v6, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 976
    .line 977
    if-eqz v2, :cond_17

    .line 978
    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    const-string v3, "dispatchMediaKeyRepeatWithWakeLock: "

    .line 982
    .line 983
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    const-string v3, "WindowManager"

    .line 994
    .line 995
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .line 997
    .line 998
    :cond_17
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 999
    .line 1000
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-eqz v2, :cond_18

    .line 1005
    .line 1006
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1007
    .line 1008
    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-virtual {v2, v1, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 1013
    .line 1014
    .line 1015
    :cond_18
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1016
    .line 1017
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_b

    .line 1021
    :pswitch_16
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1022
    .line 1023
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast v1, Landroid/view/KeyEvent;

    .line 1026
    .line 1027
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 1028
    .line 1029
    const-string v3, "WindowManager"

    .line 1030
    .line 1031
    if-eqz v2, :cond_19

    .line 1032
    .line 1033
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    const-string v7, "dispatchMediaKeyWithWakeLock: "

    .line 1039
    .line 1040
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v4

    .line 1050
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    :cond_19
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 1054
    .line 1055
    const/4 v7, 0x4

    .line 1056
    if-eqz v4, :cond_1b

    .line 1057
    .line 1058
    if-eqz v2, :cond_1a

    .line 1059
    .line 1060
    const-string v2, "dispatchMediaKeyWithWakeLock: canceled repeat"

    .line 1061
    .line 1062
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .line 1064
    .line 1065
    :cond_1a
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1066
    .line 1067
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    .line 1069
    .line 1070
    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 1071
    .line 1072
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1073
    .line 1074
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1075
    .line 1076
    .line 1077
    :cond_1b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1078
    .line 1079
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v2

    .line 1083
    if-eqz v2, :cond_1c

    .line 1084
    .line 1085
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1086
    .line 1087
    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-virtual {v2, v1, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 1092
    .line 1093
    .line 1094
    :cond_1c
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    .line 1095
    .line 1096
    .line 1097
    move-result v2

    .line 1098
    if-nez v2, :cond_1d

    .line 1099
    .line 1100
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    if-nez v2, :cond_1d

    .line 1105
    .line 1106
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 1107
    .line 1108
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1109
    .line 1110
    invoke-virtual {v2, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v1

    .line 1114
    invoke-virtual {v1, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1118
    .line 1119
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    .line 1120
    .line 1121
    .line 1122
    move-result v2

    .line 1123
    int-to-long v2, v2

    .line 1124
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1125
    .line 1126
    .line 1127
    goto :goto_b

    .line 1128
    :cond_1d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1129
    .line 1130
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1131
    .line 1132
    .line 1133
    :catch_2
    :cond_1e
    :goto_b
    return-void

    .line 1134
    nop

    .line 1135
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method
