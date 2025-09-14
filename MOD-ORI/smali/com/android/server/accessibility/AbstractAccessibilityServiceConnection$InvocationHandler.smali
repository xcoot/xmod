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

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/util/SparseArray;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "AbstractAccessibilityServiceConnection"

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 7
    .line 8
    if-eq v0, v1, :cond_11

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const-string v4, ""

    .line 12
    .line 13
    if-eq v0, v3, :cond_f

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "Unknown message: "

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 48
    .line 49
    const-string/jumbo v4, "editorInfo="

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    const-string/jumbo v6, "startInput"

    .line 65
    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, " restarting="

    .line 76
    .line 77
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p0, v6, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
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

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "Error starting input to "

    .line 100
    .line 101
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1b

    .line 120
    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_14

    .line 126
    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    const-string/jumbo v0, "unbindInput"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
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

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1b

    .line 146
    .line 147
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v1, "Error unbinding input to "

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_1b

    .line 167
    .line 168
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-eqz p1, :cond_14

    .line 173
    .line 174
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    const-string v0, "bindInput"

    .line 181
    .line 182
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
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

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1b

    .line 192
    .line 193
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "Error binding input to "

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 201
    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1b

    .line 213
    .line 214
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 215
    .line 216
    if-eqz v0, :cond_5

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_5
    move v1, v3

    .line 220
    :goto_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_14

    .line 229
    .line 230
    if-eqz p1, :cond_14

    .line 231
    .line 232
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_6

    .line 237
    .line 238
    const-string/jumbo v3, "createImeSession"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
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

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1b

    .line 251
    .line 252
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v1, "Error requesting IME session from "

    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 260
    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .line 270
    .line 271
    goto/16 :goto_1b

    .line 272
    .line 273
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionInternal()V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_1b

    .line 277
    .line 278
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-eqz p1, :cond_14

    .line 283
    .line 284
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_7

    .line 289
    .line 290
    const-string/jumbo v0, "onSystemActionsChanged"

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
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

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1b

    .line 303
    .line 304
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v1, "Error sending system actions change to "

    .line 307
    .line 308
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 312
    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .line 322
    .line 323
    goto/16 :goto_1b

    .line 324
    .line 325
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 326
    .line 327
    if-eqz p1, :cond_8

    .line 328
    .line 329
    move v3, v1

    .line 330
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 331
    .line 332
    if-eqz p1, :cond_9

    .line 333
    .line 334
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 335
    .line 336
    if-ne p1, v3, :cond_9

    .line 337
    .line 338
    goto/16 :goto_1b

    .line 339
    .line 340
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 341
    .line 342
    iput-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    if-eqz p1, :cond_14

    .line 349
    .line 350
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_a

    .line 355
    .line 356
    const-string/jumbo v0, "onAccessibilityButtonAvailabilityChanged"

    .line 357
    .line 358
    .line 359
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
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

    .line 370
    .line 371
    .line 372
    goto/16 :goto_1b

    .line 373
    .line 374
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v1, "Error sending accessibility button availability change to "

    .line 377
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 382
    .line 383
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .line 392
    .line 393
    goto/16 :goto_1b

    .line 394
    .line 395
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_14

    .line 402
    .line 403
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_b

    .line 408
    .line 409
    const-string/jumbo v1, "onAccessibilityButtonClicked"

    .line 410
    .line 411
    .line 412
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
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

    .line 423
    .line 424
    .line 425
    goto/16 :goto_1b

    .line 426
    .line 427
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v1, "Error sending accessibility button click to "

    .line 430
    .line 431
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 435
    .line 436
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .line 445
    .line 446
    goto/16 :goto_1b

    .line 447
    .line 448
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 449
    .line 450
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-eqz v0, :cond_14

    .line 455
    .line 456
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_c

    .line 461
    .line 462
    const-string/jumbo v1, "onSoftKeyboardShowModeChanged"

    .line 463
    .line 464
    .line 465
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
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

    .line 476
    .line 477
    .line 478
    goto/16 :goto_1b

    .line 479
    .line 480
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string v1, "Error sending soft keyboard show mode changes to "

    .line 483
    .line 484
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 488
    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .line 498
    .line 499
    goto/16 :goto_1b

    .line 500
    .line 501
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 504
    .line 505
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v0, Landroid/graphics/Region;

    .line 508
    .line 509
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    .line 512
    .line 513
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 514
    .line 515
    const-string v4, ", "

    .line 516
    .line 517
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    if-eqz v5, :cond_e

    .line 522
    .line 523
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    if-eqz v6, :cond_d

    .line 528
    .line 529
    const-string/jumbo v6, "onMagnificationChanged"

    .line 530
    .line 531
    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-virtual {p0, v6, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
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

    .line 567
    .line 568
    .line 569
    goto :goto_15

    .line 570
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    const-string v3, "Error sending magnification changes to "

    .line 573
    .line 574
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 578
    .line 579
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    .line 588
    .line 589
    :cond_e
    :goto_15
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 590
    .line 591
    .line 592
    goto :goto_1b

    .line 593
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    if-eqz p1, :cond_14

    .line 598
    .line 599
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_10

    .line 604
    .line 605
    const-string/jumbo v0, "clearAccessibilityCache"

    .line 606
    .line 607
    .line 608
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .line 610
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

    .line 615
    .line 616
    .line 617
    goto :goto_1b

    .line 618
    :goto_17
    const-string p1, "Error during requesting accessibility info cache to be cleared."

    .line 619
    .line 620
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .line 622
    .line 623
    goto :goto_1b

    .line 624
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    .line 626
    instance-of v0, p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 627
    .line 628
    if-eqz v0, :cond_14

    .line 629
    .line 630
    check-cast p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 631
    .line 632
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    if-eqz v0, :cond_13

    .line 637
    .line 638
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_12

    .line 643
    .line 644
    const-string/jumbo v1, "onGesture"

    .line 645
    .line 646
    .line 647
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .line 653
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

    .line 658
    .line 659
    .line 660
    goto :goto_1a

    .line 661
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    const-string v3, "Error during sending gesture "

    .line 664
    .line 665
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    const-string v3, " to "

    .line 672
    .line 673
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 677
    .line 678
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .line 687
    .line 688
    :cond_13
    :goto_1a
    invoke-static {}, Landroid/view/accessibility/Flags;->copyEventsForGestureDetection()Z

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    if-eqz p0, :cond_14

    .line 693
    .line 694
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->recycle()V

    .line 695
    .line 696
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
