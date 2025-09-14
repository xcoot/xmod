.class public final Lcom/android/server/alarm/GmsAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

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
    .locals 6

    .line 1
    const/4 p1, 0x7

    .line 2
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 3
    .line 4
    const-string v1, "ACTION***"

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const-string v3, "GmsAlarmManager"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget v5, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->$r8$classId:I

    .line 11
    .line 12
    packed-switch v5, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "android.intent.extra.user_handle"

    .line 20
    .line 21
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eq p2, v2, :cond_3

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 33
    .line 34
    .line 35
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 36
    .line 37
    const-string p2, "android.intent.action.USER_REMOVED"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    const-string p2, "android.intent.action.USER_ADDED"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/16 p1, 0x9

    .line 55
    .line 56
    iput p1, v0, Landroid/os/Message;->what:I

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/16 p1, 0x8

    .line 67
    .line 68
    iput p1, v0, Landroid/os/Message;->what:I

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_4
    const-string/jumbo v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 100
    .line 101
    iget-boolean p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 125
    .line 126
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 159
    .line 160
    iget-boolean p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 184
    .line 185
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 188
    .line 189
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 195
    .line 196
    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 202
    .line 203
    const/16 p1, 0xa

    .line 204
    .line 205
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_1
    return-void

    .line 209
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-nez p1, :cond_8

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_8
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    const/4 p2, 0x0

    .line 227
    if-eqz p1, :cond_b

    .line 228
    .line 229
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 230
    .line 231
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 232
    .line 233
    iget-boolean v0, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    iget-object v0, p1, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 238
    .line 239
    if-eqz v0, :cond_9

    .line 240
    .line 241
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 242
    .line 243
    if-eqz p1, :cond_9

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 246
    .line 247
    .line 248
    :cond_9
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 249
    .line 250
    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 251
    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 254
    .line 255
    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_a
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 259
    .line 260
    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_c

    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 269
    .line 270
    const-wide/32 p1, 0x36ee80

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_b
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 278
    .line 279
    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 280
    .line 281
    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 282
    .line 283
    :cond_c
    :goto_2
    return-void

    .line 284
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-nez v0, :cond_d

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_d
    const-string/jumbo v0, "sec.app.policy.UPDATE.gmsnet"

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_e

    .line 303
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 324
    .line 325
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 326
    .line 327
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    .line 329
    .line 330
    :cond_e
    :goto_3
    return-void

    .line 331
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    if-nez p1, :cond_f

    .line 336
    .line 337
    goto/16 :goto_5

    .line 338
    .line 339
    :cond_f
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 340
    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_15

    .line 350
    .line 351
    const-string p1, "CONNECTIVITY RECEIVER"

    .line 352
    .line 353
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 357
    .line 358
    const-string/jumbo v0, "networkInfo"

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Landroid/net/NetworkInfo;

    .line 366
    .line 367
    iput-object p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 368
    .line 369
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 370
    .line 371
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 372
    .line 373
    if-eqz p1, :cond_15

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    const p2, 0x9d08

    .line 380
    .line 381
    .line 382
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 383
    .line 384
    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v0, "NetworkInfo type = "

    .line 388
    .line 389
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v0, "  -- isConnected = "

    .line 396
    .line 397
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 401
    .line 402
    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 403
    .line 404
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    const/16 p2, 0x11

    .line 419
    .line 420
    if-eq p1, v2, :cond_10

    .line 421
    .line 422
    if-eq p1, v4, :cond_10

    .line 423
    .line 424
    if-eqz p1, :cond_10

    .line 425
    .line 426
    if-eq p1, p2, :cond_10

    .line 427
    .line 428
    const/16 v0, 0x10

    .line 429
    .line 430
    if-ne p1, v0, :cond_15

    .line 431
    .line 432
    :cond_10
    if-ne p1, p2, :cond_12

    .line 433
    .line 434
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 435
    .line 436
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 437
    .line 438
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-eqz p1, :cond_11

    .line 443
    .line 444
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 445
    .line 446
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 447
    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 449
    .line 450
    .line 451
    move-result-wide v0

    .line 452
    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    .line 453
    .line 454
    .line 455
    goto :goto_4

    .line 456
    :cond_11
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 457
    .line 458
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 459
    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 461
    .line 462
    .line 463
    move-result-wide v0

    .line 464
    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 465
    .line 466
    .line 467
    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 468
    .line 469
    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 470
    .line 471
    if-nez p2, :cond_13

    .line 472
    .line 473
    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 474
    .line 475
    if-nez p2, :cond_13

    .line 476
    .line 477
    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 478
    .line 479
    if-nez p2, :cond_13

    .line 480
    .line 481
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_13
    iget-object p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 485
    .line 486
    if-eqz p2, :cond_14

    .line 487
    .line 488
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 489
    .line 490
    if-eqz p1, :cond_14

    .line 491
    .line 492
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 493
    .line 494
    .line 495
    :cond_14
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 496
    .line 497
    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 498
    .line 499
    .line 500
    :cond_15
    :goto_5
    return-void

    .line 501
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    if-nez p1, :cond_16

    .line 506
    .line 507
    goto :goto_6

    .line 508
    :cond_16
    const-string p1, "android.os.action.CHARGING"

    .line 509
    .line 510
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p2

    .line 514
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    const-wide/16 v0, 0x2710

    .line 519
    .line 520
    if-eqz p1, :cond_17

    .line 521
    .line 522
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 523
    .line 524
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 525
    .line 526
    const/4 p2, 0x4

    .line 527
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    .line 529
    .line 530
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 531
    .line 532
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 533
    .line 534
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 535
    .line 536
    .line 537
    goto :goto_6

    .line 538
    :cond_17
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 539
    .line 540
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 541
    .line 542
    const/4 p2, 0x5

    .line 543
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    .line 545
    .line 546
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 547
    .line 548
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 549
    .line 550
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 551
    .line 552
    .line 553
    :goto_6
    return-void

    .line 554
    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    if-nez p1, :cond_18

    .line 559
    .line 560
    goto :goto_7

    .line 561
    :cond_18
    const-string/jumbo p1, "com.samsung.android.server.action_check_gms_network"

    .line 562
    .line 563
    .line 564
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    if-eqz p1, :cond_19

    .line 573
    .line 574
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 575
    .line 576
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 577
    .line 578
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    .line 580
    .line 581
    goto :goto_7

    .line 582
    :cond_19
    const-string/jumbo p1, "com.samsung.android.server.action_insert_log"

    .line 583
    .line 584
    .line 585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result p1

    .line 593
    if-eqz p1, :cond_1a

    .line 594
    .line 595
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 596
    .line 597
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 598
    .line 599
    const/4 p1, 0x6

    .line 600
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 601
    .line 602
    .line 603
    goto :goto_7

    .line 604
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    if-eqz p1, :cond_1b

    .line 613
    .line 614
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 615
    .line 616
    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 617
    .line 618
    .line 619
    :cond_1b
    :goto_7
    return-void

    .line 620
    nop

    .line 621
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
