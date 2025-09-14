.class public final Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "device"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    move v1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    const-string/jumbo v2, "onReceive() USBK interfaceCount : "

    .line 29
    .line 30
    .line 31
    const-string v3, "InputMethodManagerServicePhysicalKey"

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move v2, v0

    .line 37
    :goto_1
    const/4 v4, 0x1

    .line 38
    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 39
    .line 40
    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 41
    .line 42
    if-ge v2, v1, :cond_6

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v7, :cond_1

    .line 49
    .line 50
    const-string/jumbo v4, "onReceive() usbInterface is null, index : "

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v4, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v9, 0x3

    .line 66
    if-ne v8, v9, :cond_5

    .line 67
    .line 68
    if-ne v7, v4, :cond_5

    .line 69
    .line 70
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 77
    .line 78
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 79
    .line 80
    if-gez p2, :cond_2

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "[ACTION_USB_DEVICE_ATTACHED] change mUSBKeyboardCount "

    .line 85
    .line 86
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 90
    .line 91
    iget v1, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 92
    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, "--> 0"

    .line 97
    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 109
    .line 110
    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 111
    .line 112
    :cond_2
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 113
    .line 114
    iget v1, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 115
    .line 116
    add-int/2addr v1, v4

    .line 117
    iput v1, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_6

    .line 125
    .line 126
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 127
    .line 128
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 129
    .line 130
    if-ge p2, v4, :cond_4

    .line 131
    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v1, "[ACTION_USB_DEVICE_DETACHED] change mUSBKeyboardCount "

    .line 135
    .line 136
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 140
    .line 141
    iget v1, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 142
    .line 143
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, "--> 1"

    .line 147
    .line 148
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 159
    .line 160
    iput v4, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 161
    .line 162
    :cond_4
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 163
    .line 164
    iget v1, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 165
    .line 166
    sub-int/2addr v1, v4

    .line 167
    iput v1, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 175
    .line 176
    iget v1, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    .line 177
    .line 178
    iget v2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 179
    .line 180
    if-eq v1, v2, :cond_7

    .line 181
    .line 182
    move v0, v4

    .line 183
    :cond_7
    iput v2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    .line 184
    .line 185
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-eqz p2, :cond_8

    .line 190
    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 194
    .line 195
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 196
    .line 197
    or-int/lit8 p2, p2, 0x4

    .line 198
    .line 199
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 200
    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string/jumbo p2, "onReceive() USBK Connect C : "

    .line 204
    .line 205
    .line 206
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 210
    .line 211
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 212
    .line 213
    invoke-static {p1, p2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 217
    .line 218
    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_9

    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 229
    .line 230
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 231
    .line 232
    if-nez p2, :cond_9

    .line 233
    .line 234
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 235
    .line 236
    and-int/lit8 p2, p2, -0x5

    .line 237
    .line 238
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 239
    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string/jumbo p2, "onReceive() USBK DisConnect C : "

    .line 243
    .line 244
    .line 245
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 249
    .line 250
    iget p2, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 251
    .line 252
    invoke-static {p1, p2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string/jumbo p2, "onReceive() keyboardState : "

    .line 263
    .line 264
    .line 265
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 269
    .line 270
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 271
    .line 272
    invoke-static {p1, p0, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v1, "PSSKeyboardReceiver : onReceive() intentAction"

    .line 283
    .line 284
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 295
    .line 296
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    const-string/jumbo v0, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-eqz p1, :cond_b

    .line 307
    .line 308
    const-string/jumbo p1, "device_state"

    .line 309
    .line 310
    .line 311
    const/4 v0, -0x1

    .line 312
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    const-string p2, "PSSKeyboardReceiver : onReceive(), getIntExtra - "

    .line 317
    .line 318
    invoke-static {p1, p2, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/4 p2, 0x1

    .line 322
    if-ne p1, p2, :cond_a

    .line 323
    .line 324
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 325
    .line 326
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 327
    .line 328
    or-int/lit8 p2, p2, 0x10

    .line 329
    .line 330
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 331
    .line 332
    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_a
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 337
    .line 338
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 339
    .line 340
    and-int/lit8 p2, p2, -0x11

    .line 341
    .line 342
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 343
    .line 344
    :cond_b
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string p2, "PSSKeyboardReceiver :  onReceive(), keyboardState - "

    .line 347
    .line 348
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 352
    .line 353
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 354
    .line 355
    invoke-static {p1, p0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v1, "KMSKeyboardReceiver :  onReceive() intentAction"

    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 378
    .line 379
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    const-string/jumbo v0, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-eqz p1, :cond_d

    .line 390
    .line 391
    const-string/jumbo p1, "device_state"

    .line 392
    .line 393
    .line 394
    const/4 v0, -0x1

    .line 395
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    const-string p2, "KMSKeyboardReceiver : onReceive(), getIntExtra "

    .line 400
    .line 401
    invoke-static {p1, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const/4 p2, 0x1

    .line 405
    if-ne p1, p2, :cond_c

    .line 406
    .line 407
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 408
    .line 409
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 410
    .line 411
    or-int/lit8 p2, p2, 0x20

    .line 412
    .line 413
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 414
    .line 415
    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_c
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 420
    .line 421
    iget p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 422
    .line 423
    and-int/lit8 p2, p2, -0x21

    .line 424
    .line 425
    iput p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 426
    .line 427
    :cond_d
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string p2, "KMSKeyboardReceiver : onReceive(), keyboardState - "

    .line 430
    .line 431
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 435
    .line 436
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 437
    .line 438
    invoke-static {p1, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
