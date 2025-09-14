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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "InputMethodService onReceive() intentAction"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    const-string v3, ")"

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x2

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 39
    .line 40
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 45
    .line 46
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const-string v0, "[BT Setting State] state = "

    .line 51
    .line 52
    const-string v4, " prevState = "

    .line 53
    .line 54
    invoke-static {p1, p2, v0, v4, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/16 p2, 0xa

    .line 58
    .line 59
    const-string v0, ", KEYBOARD_BT("

    .line 60
    .line 61
    if-eq p1, p2, :cond_1

    .line 62
    .line 63
    const/16 p2, 0xc

    .line 64
    .line 65
    if-eq p1, p2, :cond_0

    .line 66
    .line 67
    const/16 p2, 0xd

    .line 68
    .line 69
    if-eq p1, p2, :cond_1

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p2, "[BT] mBTKeyboardCount ="

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 79
    .line 80
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 91
    .line 92
    and-int/2addr p0, v6

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p2, "[BT Setting off -> on] mBTKeyboardCount ="

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 116
    .line 117
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 126
    .line 127
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 128
    .line 129
    and-int/2addr p2, v6

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iput-boolean v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string p2, "[BT Setting on -> off] mBTKeyboardCount ="

    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 155
    .line 156
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 165
    .line 166
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 167
    .line 168
    and-int/2addr p2, v6

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 183
    .line 184
    .line 185
    iput-boolean v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_2
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 198
    .line 199
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    const-string v0, "android.bluetooth.profile.extra.isKeyboard"

    .line 204
    .line 205
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 210
    .line 211
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string/jumbo v7, "onReceive() isKeyboard = "

    .line 218
    .line 219
    .line 220
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    if-eqz v0, :cond_8

    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v4, "onReceive() state = "

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v4, ", prevState = "

    .line 247
    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    if-ne p1, v6, :cond_4

    .line 262
    .line 263
    iput-boolean v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 264
    .line 265
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 266
    .line 267
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 268
    .line 269
    if-gez p1, :cond_3

    .line 270
    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string p2, "[STATE_CONNECTED] change mBTKeyboardCount "

    .line 274
    .line 275
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 279
    .line 280
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 281
    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p2, "--> 0"

    .line 286
    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 298
    .line 299
    iput v2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 300
    .line 301
    :cond_3
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 302
    .line 303
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 304
    .line 305
    add-int/2addr p2, v5

    .line 306
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 307
    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string p2, "[STATE_CONNECTED] mBTKeyboardCount[+] -->"

    .line 311
    .line 312
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 316
    .line 317
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 318
    .line 319
    invoke-static {p1, p2, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 323
    .line 324
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 325
    .line 326
    or-int/2addr p1, v6

    .line 327
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 328
    .line 329
    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 330
    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_4
    if-ne p2, v6, :cond_8

    .line 334
    .line 335
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 336
    .line 337
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 338
    .line 339
    if-ge p1, v5, :cond_5

    .line 340
    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string p2, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    .line 344
    .line 345
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 349
    .line 350
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 351
    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string p2, "--> 1"

    .line 356
    .line 357
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 368
    .line 369
    iput v5, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 370
    .line 371
    :cond_5
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 372
    .line 373
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 374
    .line 375
    sub-int/2addr p2, v5

    .line 376
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 377
    .line 378
    if-eqz p2, :cond_6

    .line 379
    .line 380
    iget-boolean p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 381
    .line 382
    if-nez p2, :cond_7

    .line 383
    .line 384
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 385
    .line 386
    and-int/2addr p1, v6

    .line 387
    if-ne p1, v6, :cond_7

    .line 388
    .line 389
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 390
    .line 391
    .line 392
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string p2, "[prevState : STATE_CONNECTED] mBTKeyboardCount[-] -->"

    .line 395
    .line 396
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 400
    .line 401
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 402
    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string/jumbo p2, "keyboardState("

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 413
    .line 414
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 415
    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    :cond_8
    :goto_0
    return-void
.end method

.method public final resetBTKeyboardState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    and-int/lit8 v1, v1, -0x3

    .line 11
    .line 12
    iput v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "resetBTKeyboardState : keyboardState = "

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 28
    .line 29
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
