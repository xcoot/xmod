.class public final Lcom/android/server/usb/UsbHostRestrictor$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

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
    .locals 8

    .line 1
    iget p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "UsbHostRestrictor"

    .line 7
    .line 8
    const-string v0, "Subscription Receiver onReceive"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    const-string/jumbo v0, "ss"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "LOADED"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v1, "]"

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Subscription Receiver Card Count is ["

    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    if-lez p2, :cond_3

    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    sput-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "OFF"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    .line 113
    const-string p0, "Subscription Receiver USB is already UNBLOCKED"

    .line 114
    .line 115
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_1

    .line 124
    .line 125
    const-string p1, "ON_HOST_MDM"

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    :cond_1
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 143
    .line 144
    const/16 p1, 0x65

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const/4 p2, 0x1

    .line 154
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_5

    .line 170
    .line 171
    const-string p0, "Subscription Receiver Cannot write for USB DISABLE"

    .line 172
    .line 173
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    const-string p0, "Subscription Receiver SIM is not recognized properly : card count is 0"

    .line 178
    .line 179
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v0, "Subscription Receiver SIM is not recognized properly : SIM_STATE_LOADED ["

    .line 186
    .line 187
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    :cond_5
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const-string p1, "UsbHostRestrictor"

    .line 205
    .line 206
    const-string v0, "UsbHostRestrictionReceiver Receiver onReceive"

    .line 207
    .line 208
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v1, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_11

    .line 222
    .line 223
    const-string/jumbo v0, "reason"

    .line 224
    .line 225
    .line 226
    const/4 v1, 0x0

    .line 227
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    const-string v0, "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE"

    .line 232
    .line 233
    const-string v2, "UsbHostRestrictionReceiver UNBLOCK USB HOST"

    .line 234
    .line 235
    const-string v3, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    .line 236
    .line 237
    const-string v4, "ON_ALL"

    .line 238
    .line 239
    const-string v5, "OFF"

    .line 240
    .line 241
    if-nez p2, :cond_9

    .line 242
    .line 243
    const-string p2, "UsbHostRestrictionReceiver : reason - ALLOW"

    .line 244
    .line 245
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 249
    .line 250
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 251
    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_8

    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_6

    .line 281
    .line 282
    const-string p0, "UsbHostRestrictionReceiver USB is already UNBLOCKED"

    .line 283
    .line 284
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_7

    .line 300
    .line 301
    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_11

    .line 311
    .line 312
    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 316
    .line 317
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_8
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 323
    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    if-nez p0, :cond_11

    .line 332
    .line 333
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :cond_9
    const/4 v6, 0x1

    .line 339
    if-ne p2, v6, :cond_c

    .line 340
    .line 341
    const-string p2, "UsbHostRestrictionReceiver : reason - DISALLOW"

    .line 342
    .line 343
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    sput-boolean v6, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 347
    .line 348
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 349
    .line 350
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_b

    .line 367
    .line 368
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_a

    .line 379
    .line 380
    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_a
    const-string v0, "ON_HOST_MDM"

    .line 386
    .line 387
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_11

    .line 392
    .line 393
    const-string v0, "UsbHostRestrictionReceiver BLOCK USB HOST"

    .line 394
    .line 395
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 399
    .line 400
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_1

    .line 404
    .line 405
    :cond_b
    const-string p0, "UsbHostRestrictionReceiver Cannot write for USB HOST DISABLE"

    .line 406
    .line 407
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    goto :goto_1

    .line 411
    :cond_c
    const/4 v7, 0x2

    .line 412
    if-ne p2, v7, :cond_10

    .line 413
    .line 414
    const-string p2, "UsbHostRestrictionReceiver : reason - INIT"

    .line 415
    .line 416
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 420
    .line 421
    iget-object p2, p2, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 422
    .line 423
    invoke-static {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    if-eqz p2, :cond_11

    .line 428
    .line 429
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    if-eqz p2, :cond_11

    .line 434
    .line 435
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    .line 436
    .line 437
    .line 438
    move-result p2

    .line 439
    if-ne p2, v6, :cond_f

    .line 440
    .line 441
    sget-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 442
    .line 443
    if-eqz p2, :cond_f

    .line 444
    .line 445
    const-string/jumbo p2, "mUsbHostRestrictionReceiver : reason - INIT - UNBLOCK USB HOST"

    .line 446
    .line 447
    .line 448
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 452
    .line 453
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 454
    .line 455
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_e

    .line 472
    .line 473
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_d

    .line 484
    .line 485
    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    goto :goto_1

    .line 489
    :cond_d
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_11

    .line 494
    .line 495
    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 499
    .line 500
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto :goto_1

    .line 504
    :cond_e
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    goto :goto_1

    .line 508
    :cond_f
    const-string p0, "UsbHostRestrictionReceiver : reason - INIT - Ignore bacuese of Multi admin policy or same value as previos"

    .line 509
    .line 510
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    goto :goto_1

    .line 514
    :cond_10
    const-string p0, "UsbHostRestrictionReceiver reason is unknown."

    .line 515
    .line 516
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    :cond_11
    :goto_1
    return-void

    .line 520
    nop

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
