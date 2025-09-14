.class public final Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsBTConnect:Z

.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "InputMethodService onReceive() intentAction"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    const-string v3, ")"

    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x2

    .line 36
    if-eqz v0, :cond_2

    .line 38
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 40
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 43
    move-result p1

    .line 44
    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 46
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    move-result p2

    .line 50
    const-string v0, "[BT Setting State] state = "

    .line 52
    const-string v4, " prevState = "

    .line 54
    invoke-static {p1, p2, v0, v4, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 p2, 0xa

    .line 59
    const-string v0, ", KEYBOARD_BT("

    .line 61
    if-eq p1, p2, :cond_1

    .line 63
    const/16 p2, 0xc

    .line 65
    if-eq p1, p2, :cond_0

    .line 67
    const/16 p2, 0xd

    .line 69
    if-eq p1, p2, :cond_1

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    const-string p2, "[BT] mBTKeyboardCount ="

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 80
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 90
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 92
    and-int/2addr p0, v6

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    const-string p2, "[BT Setting off -> on] mBTKeyboardCount ="

    .line 112
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 117
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 127
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 129
    and-int/2addr p2, v6

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    const-string p2, "[BT Setting on -> off] mBTKeyboardCount ="

    .line 151
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 156
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 166
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 168
    and-int/2addr p2, v6

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 185
    iput-boolean v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 187
    goto/16 :goto_0

    .line 189
    :cond_2
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_8

    .line 197
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 199
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 202
    move-result p1

    .line 203
    const-string v0, "android.bluetooth.profile.extra.isKeyboard"

    .line 205
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 208
    move-result v0

    .line 209
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 211
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 214
    move-result p2

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v7, "onReceive() isKeyboard = "

    .line 220
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v4

    .line 230
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v0, :cond_8

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v4, "onReceive() state = "

    .line 240
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v4, ", prevState = "

    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-ne p1, v6, :cond_4

    .line 263
    iput-boolean v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 265
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 267
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 269
    if-gez p1, :cond_3

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    const-string p2, "[STATE_CONNECTED] change mBTKeyboardCount "

    .line 275
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 280
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string p2, "--> 0"

    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object p1

    .line 294
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 299
    iput v2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 301
    :cond_3
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 303
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 305
    add-int/2addr p2, v5

    .line 306
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    .line 310
    const-string p2, "[STATE_CONNECTED] mBTKeyboardCount[+] -->"

    .line 312
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 317
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 319
    invoke-static {p1, p2, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 324
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 326
    or-int/2addr p1, v6

    .line 327
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 329
    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 332
    goto :goto_0

    .line 333
    :cond_4
    if-ne p2, v6, :cond_8

    .line 335
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 337
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 339
    if-ge p1, v5, :cond_5

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    .line 343
    const-string p2, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    .line 345
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 350
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string p2, "--> 1"

    .line 357
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object p1

    .line 364
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 369
    iput v5, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 371
    :cond_5
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 373
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 375
    sub-int/2addr p2, v5

    .line 376
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 378
    if-eqz p2, :cond_6

    .line 380
    iget-boolean p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 382
    if-nez p2, :cond_7

    .line 384
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 386
    and-int/2addr p1, v6

    .line 387
    if-ne p1, v6, :cond_7

    .line 389
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 392
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 394
    const-string p2, "[prevState : STATE_CONNECTED] mBTKeyboardCount[-] -->"

    .line 396
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 401
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo p2, "keyboardState("

    .line 409
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 414
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object p0

    .line 426
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_8
    :goto_0
    return-void
.end method

.method public final resetBTKeyboardState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 3
    iget v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 5
    and-int/lit8 v2, v1, 0x2

    .line 7
    const/4 v3, 0x2

    .line 8
    if-ne v2, v3, :cond_0

    .line 10
    and-int/lit8 v1, v1, -0x3

    .line 12
    iput v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v1, "resetBTKeyboardState : keyboardState = "

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 27
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 29
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 31
    invoke-static {v0, p0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    return-void
.end method
