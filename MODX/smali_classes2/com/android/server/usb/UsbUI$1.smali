.class public final Lcom/android/server/usb/UsbUI$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUI;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbUI$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

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
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/usb/UsbUI$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "mEmergencyModeReceiver ("

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ")"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "UsbUI"

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "reason"

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 p2, 0x3

    .line 39
    if-ne p1, p2, :cond_1

    .line 40
    .line 41
    const-string p1, "EmergencyMode enabled"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 50
    .line 51
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 56
    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 p2, 0x5

    .line 68
    if-ne p1, p2, :cond_3

    .line 69
    .line 70
    const-string p1, "EmergencyMode disabled"

    .line 71
    .line 72
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 78
    .line 79
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 84
    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    :cond_2
    const/16 p1, 0x6b

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 98
    .line 99
    iget-boolean v0, p1, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 100
    .line 101
    const-string/jumbo v1, "misc_event"

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    and-int/lit8 p2, p2, 0x20

    .line 110
    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    :cond_4
    iput-boolean v2, p1, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 117
    .line 118
    iget-boolean p1, p1, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 119
    .line 120
    if-eq v0, p1, :cond_6

    .line 121
    .line 122
    const-string/jumbo p1, "oldHiccupState="

    .line 123
    .line 124
    .line 125
    const-string p2, " mIsHiccupState="

    .line 126
    .line 127
    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 132
    .line 133
    iget-boolean p2, p2, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string p2, "UsbUI"

    .line 143
    .line 144
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 148
    .line 149
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    const-string p1, "CD"

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    const-string p1, "CR"

    .line 157
    .line 158
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    return-void

    .line 162
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string/jumbo v0, "mPortReceiver ("

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, ")"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "UsbUI"

    .line 183
    .line 184
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 188
    .line 189
    iget-boolean p1, p1, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 190
    .line 191
    const-string/jumbo v1, "portStatus"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    if-nez p2, :cond_7

    .line 202
    .line 203
    const-string p2, "UsbPortStatus is null"

    .line 204
    .line 205
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 209
    .line 210
    iput-boolean v1, p2, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_7
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    const/4 v3, 0x1

    .line 220
    if-ne p2, v3, :cond_8

    .line 221
    .line 222
    move v1, v3

    .line 223
    :cond_8
    iput-boolean v1, v2, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 224
    .line 225
    :goto_2
    const-string/jumbo p2, "oldSourcePower="

    .line 226
    .line 227
    .line 228
    const-string v1, " mSourcePower="

    .line 229
    .line 230
    invoke-static {p2, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 235
    .line 236
    iget-boolean v1, v1, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 237
    .line 238
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 249
    .line 250
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 251
    .line 252
    if-eq p1, p2, :cond_9

    .line 253
    .line 254
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 255
    .line 256
    if-eqz p1, :cond_9

    .line 257
    .line 258
    invoke-static {p0, p2}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    .line 259
    .line 260
    .line 261
    :cond_9
    return-void

    .line 262
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string/jumbo v0, "mUsbWetStateReceiver ("

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p2, ")"

    .line 274
    .line 275
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    const-string p2, "UsbUI"

    .line 283
    .line 284
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 288
    .line 289
    iget-object p1, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    new-instance p2, Landroid/content/Intent;

    .line 292
    .line 293
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 294
    .line 295
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 299
    .line 300
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 304
    .line 305
    iget-object p1, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    const p2, 0x1040fe3

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 315
    .line 316
    iget-object p2, p2, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    const v0, 0x1040feb

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 326
    .line 327
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    .line 328
    .line 329
    const v2, 0x1040fec

    .line 330
    .line 331
    .line 332
    if-eqz v1, :cond_a

    .line 333
    .line 334
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 335
    .line 336
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_a
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 341
    .line 342
    const v1, 0x1040fea

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    :goto_3
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 349
    .line 350
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const-string v1, "\\n"

    .line 357
    .line 358
    const-string v2, "\n"

    .line 359
    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 377
    .line 378
    and-int/lit8 v1, v1, 0x30

    .line 379
    .line 380
    const/16 v2, 0x20

    .line 381
    .line 382
    if-ne v1, v2, :cond_b

    .line 383
    .line 384
    const/4 v1, 0x4

    .line 385
    goto :goto_4

    .line 386
    :cond_b
    const/4 v1, 0x5

    .line 387
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 388
    .line 389
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 390
    .line 391
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 392
    .line 393
    invoke-direct {v2, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 394
    .line 395
    .line 396
    const/4 p0, 0x0

    .line 397
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    .line 405
    .line 406
    new-instance p0, Lcom/android/server/usb/UsbUI$2$1;

    .line 407
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    const/16 p2, 0x7d8

    .line 423
    .line 424
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string/jumbo v0, "mLocalechangedReceiver ("

    .line 434
    .line 435
    .line 436
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string p2, ")"

    .line 443
    .line 444
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    const-string p2, "UsbUI"

    .line 452
    .line 453
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 457
    .line 458
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 459
    .line 460
    const/4 p1, 0x5

    .line 461
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
