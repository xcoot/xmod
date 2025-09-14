.class public final Lcom/android/server/usb/UsbUI$UsbUIHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final currentOngoings:Ljava/util/HashMap;

.field public final pendingJobs:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v2, :cond_c

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x3

    .line 12
    const-string v5, "UsbUI"

    .line 13
    .line 14
    if-eq v0, v3, :cond_8

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v0, v4, :cond_5

    .line 19
    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Unexpected message "

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v5, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_e

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 83
    .line 84
    const-string/jumbo v2, "update id="

    .line 85
    .line 86
    .line 87
    const-string v3, " title="

    .line 88
    .line 89
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->getTitle()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v5, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget-object v2, v1, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 108
    .line 109
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 110
    .line 111
    invoke-virtual {v2, v6, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v1, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, v6, v0, p1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/util/Deque;

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    move-object v0, v6

    .line 158
    :goto_1
    if-eqz v0, :cond_3

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v7, "cancelAsUser: "

    .line 163
    .line 164
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->getTitle()Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object v0, v1, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 182
    .line 183
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 184
    .line 185
    invoke-virtual {v0, v6, p1, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-lt v0, v2, :cond_4

    .line 193
    .line 194
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .line 202
    .line 203
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_e

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    goto/16 :goto_4

    .line 225
    .line 226
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 229
    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 241
    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Ljava/util/Deque;

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_6
    move-object v0, v6

    .line 260
    :goto_2
    if-eqz v0, :cond_e

    .line 261
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string/jumbo v4, "notifyAsUser: "

    .line 265
    .line 266
    .line 267
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->getTitle()Ljava/lang/CharSequence;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v5, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 291
    .line 292
    invoke-virtual {v1, v6, p1, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 293
    .line 294
    .line 295
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 296
    .line 297
    if-eqz v1, :cond_7

    .line 298
    .line 299
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 304
    .line 305
    const/16 v2, 0xbb8

    .line 306
    .line 307
    int-to-long v2, v2

    .line 308
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    .line 310
    .line 311
    :cond_7
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 312
    .line 313
    if-nez v1, :cond_e

    .line 314
    .line 315
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 316
    .line 317
    if-eqz v1, :cond_e

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    .line 320
    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 331
    .line 332
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p1, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 335
    .line 336
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 337
    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_9

    .line 347
    .line 348
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 349
    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    check-cast v1, Ljava/util/Deque;

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_9
    new-instance v1, Ljava/util/LinkedList;

    .line 362
    .line 363
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 364
    .line 365
    .line 366
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    :goto_3
    invoke-interface {v1, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    iget-boolean v1, p1, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 379
    .line 380
    if-nez v1, :cond_b

    .line 381
    .line 382
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-le v1, v2, :cond_b

    .line 387
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v2, "Remove last insertion: "

    .line 391
    .line 392
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->getTitle()Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-static {v5, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 410
    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-eqz p1, :cond_a

    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 422
    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    check-cast p0, Ljava/util/Deque;

    .line 432
    .line 433
    invoke-interface {p0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    check-cast p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 438
    .line 439
    :cond_a
    return-void

    .line 440
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-ne p1, v2, :cond_e

    .line 445
    .line 446
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 451
    .line 452
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_4

    .line 456
    :cond_c
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 457
    .line 458
    iget-object p1, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 459
    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 473
    .line 474
    .line 475
    goto :goto_4

    .line 476
    :cond_d
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 477
    .line 478
    iget-object p1, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 479
    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    const/4 v0, 0x0

    .line 489
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 494
    .line 495
    .line 496
    :cond_e
    :goto_4
    return-void
.end method

.method public final size(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/Deque;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, -0x1

    .line 31
    return p0
.end method
