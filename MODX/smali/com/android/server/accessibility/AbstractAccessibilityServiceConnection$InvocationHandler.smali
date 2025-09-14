.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsSoftKeyboardCallbackEnabled:Z

.field public final mMagnificationCallbackState:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 14
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 16
    iput-boolean p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "AbstractAccessibilityServiceConnection"

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 8
    if-eq v0, v1, :cond_11

    .line 10
    const/4 v3, 0x2

    .line 11
    const-string v4, ""

    .line 13
    if-eq v0, v3, :cond_f

    .line 15
    const/4 v3, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p1, "Unknown message: "

    .line 23
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 31
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 33
    if-eqz v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 41
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 43
    check-cast v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 45
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 47
    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 49
    const-string/jumbo v4, "editorInfo="

    .line 52
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_1

    .line 64
    const-string/jumbo v6, "startInput"

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, " restarting="

    .line 77
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p0, v6, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    :goto_1
    invoke-interface {v5, v0, v3, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_3

    .line 97
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "Error starting input to "

    .line 101
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 119
    goto/16 :goto_1b

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_14

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 133
    const-string/jumbo v0, "unbindInput"

    .line 136
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    goto :goto_4

    .line 140
    :catch_1
    move-exception p1

    .line 141
    goto :goto_5

    .line 142
    :cond_3
    :goto_4
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->unbindInput()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    goto/16 :goto_1b

    .line 147
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "Error unbinding input to "

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    goto/16 :goto_1b

    .line 168
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 171
    move-result-object p1

    .line 172
    if-eqz p1, :cond_14

    .line 174
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_4

    .line 180
    const-string v0, "bindInput"

    .line 182
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    goto :goto_6

    .line 186
    :catch_2
    move-exception p1

    .line 187
    goto :goto_7

    .line 188
    :cond_4
    :goto_6
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->bindInput()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    goto/16 :goto_1b

    .line 193
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "Error binding input to "

    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    goto/16 :goto_1b

    .line 214
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 216
    if-eqz v0, :cond_5

    .line 218
    goto :goto_8

    .line 219
    :cond_5
    move v1, v3

    .line 220
    :goto_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    check-cast p1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 224
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_14

    .line 230
    if-eqz p1, :cond_14

    .line 232
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_6

    .line 238
    const-string/jumbo v3, "createImeSession"

    .line 241
    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    goto :goto_9

    .line 245
    :catch_3
    move-exception p1

    .line 246
    goto :goto_a

    .line 247
    :cond_6
    :goto_9
    invoke-interface {v0, p1, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 250
    goto/16 :goto_1b

    .line 252
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    const-string v1, "Error requesting IME session from "

    .line 256
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 268
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    goto/16 :goto_1b

    .line 273
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionInternal()V

    .line 276
    goto/16 :goto_1b

    .line 278
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 281
    move-result-object p1

    .line 282
    if-eqz p1, :cond_14

    .line 284
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_7

    .line 290
    const-string/jumbo v0, "onSystemActionsChanged"

    .line 293
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    goto :goto_b

    .line 297
    :catch_4
    move-exception p1

    .line 298
    goto :goto_c

    .line 299
    :cond_7
    :goto_b
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSystemActionsChanged()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 302
    goto/16 :goto_1b

    .line 304
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "Error sending system actions change to "

    .line 308
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object p0

    .line 320
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    goto/16 :goto_1b

    .line 325
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 327
    if-eqz p1, :cond_8

    .line 329
    move v3, v1

    .line 330
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 332
    if-eqz p1, :cond_9

    .line 334
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 336
    if-ne p1, v3, :cond_9

    .line 338
    goto/16 :goto_1b

    .line 340
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 342
    iput-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 344
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 347
    move-result-object p1

    .line 348
    if-eqz p1, :cond_14

    .line 350
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_a

    .line 356
    const-string/jumbo v0, "onAccessibilityButtonAvailabilityChanged"

    .line 359
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    goto :goto_d

    .line 367
    :catch_5
    move-exception p1

    .line 368
    goto :goto_e

    .line 369
    :cond_a
    :goto_d
    invoke-interface {p1, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 372
    goto/16 :goto_1b

    .line 374
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    const-string v1, "Error sending accessibility button availability change to "

    .line 378
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 383
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object p0

    .line 390
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    goto/16 :goto_1b

    .line 395
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 397
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_14

    .line 403
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_b

    .line 409
    const-string/jumbo v1, "onAccessibilityButtonClicked"

    .line 412
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 415
    move-result-object v3

    .line 416
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    goto :goto_f

    .line 420
    :catch_6
    move-exception p1

    .line 421
    goto :goto_10

    .line 422
    :cond_b
    :goto_f
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 425
    goto/16 :goto_1b

    .line 427
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 429
    const-string v1, "Error sending accessibility button click to "

    .line 431
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 436
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    move-result-object p0

    .line 443
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    goto/16 :goto_1b

    .line 448
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 450
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 453
    move-result-object v0

    .line 454
    if-eqz v0, :cond_14

    .line 456
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_c

    .line 462
    const-string/jumbo v1, "onSoftKeyboardShowModeChanged"

    .line 465
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    goto :goto_11

    .line 473
    :catch_7
    move-exception p1

    .line 474
    goto :goto_12

    .line 475
    :cond_c
    :goto_11
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 478
    goto/16 :goto_1b

    .line 480
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 482
    const-string v1, "Error sending soft keyboard show mode changes to "

    .line 484
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    move-result-object p0

    .line 496
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    goto/16 :goto_1b

    .line 501
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 505
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 507
    check-cast v0, Landroid/graphics/Region;

    .line 509
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 511
    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    .line 513
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 515
    const-string v4, ", "

    .line 517
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 520
    move-result-object v5

    .line 521
    if-eqz v5, :cond_e

    .line 523
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 526
    move-result v6

    .line 527
    if-eqz v6, :cond_d

    .line 529
    const-string/jumbo v6, "onMagnificationChanged"

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    .line 534
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    .line 552
    move-result-object v4

    .line 553
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    move-result-object v4

    .line 560
    invoke-virtual {p0, v6, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    goto :goto_13

    .line 564
    :catch_8
    move-exception v0

    .line 565
    goto :goto_14

    .line 566
    :cond_d
    :goto_13
    invoke-interface {v5, v3, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 569
    goto :goto_15

    .line 570
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 572
    const-string v3, "Error sending magnification changes to "

    .line 574
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 579
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    move-result-object p0

    .line 586
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    :cond_e
    :goto_15
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 592
    goto :goto_1b

    .line 593
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 596
    move-result-object p1

    .line 597
    if-eqz p1, :cond_14

    .line 599
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_10

    .line 605
    const-string/jumbo v0, "clearAccessibilityCache"

    .line 608
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    goto :goto_16

    .line 612
    :catch_9
    move-exception p0

    .line 613
    goto :goto_17

    .line 614
    :cond_10
    :goto_16
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 617
    goto :goto_1b

    .line 618
    :goto_17
    const-string p1, "Error during requesting accessibility info cache to be cleared."

    .line 620
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    goto :goto_1b

    .line 624
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    instance-of v0, p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 628
    if-eqz v0, :cond_14

    .line 630
    check-cast p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 632
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 635
    move-result-object v0

    .line 636
    if-eqz v0, :cond_13

    .line 638
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_12

    .line 644
    const-string/jumbo v1, "onGesture"

    .line 647
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    .line 650
    move-result-object v3

    .line 651
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    goto :goto_18

    .line 655
    :catch_a
    move-exception v0

    .line 656
    goto :goto_19

    .line 657
    :cond_12
    :goto_18
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 660
    goto :goto_1a

    .line 661
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 663
    const-string v3, "Error during sending gesture "

    .line 665
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 671
    const-string v3, " to "

    .line 673
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 678
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object p0

    .line 685
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    :cond_13
    :goto_1a
    invoke-static {}, Landroid/view/accessibility/Flags;->copyEventsForGestureDetection()Z

    .line 691
    move-result p0

    .line 692
    if-eqz p0, :cond_14

    .line 694
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->recycle()V

    .line 697
    :cond_14
    :goto_1b
    return-void

    .line 698
    nop

    .line 699
    :pswitch_data_0
    .packed-switch 0x5
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
