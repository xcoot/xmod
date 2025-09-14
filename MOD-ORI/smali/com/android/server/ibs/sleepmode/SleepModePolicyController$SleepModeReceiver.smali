.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const/4 p1, 0x5

    .line 2
    const/4 v0, 0x6

    .line 3
    if-eqz p2, :cond_9

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "action is >> "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "SleepModePolicyController"

    .line 32
    .line 33
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v3, "sendCheckStatusMessage"

    .line 44
    .line 45
    .line 46
    const/16 v4, 0x9

    .line 47
    .line 48
    const-string/jumbo v5, "sendExitSleepModeMessage"

    .line 49
    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    sparse-switch v7, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :sswitch_0
    const-string v7, "android.intent.action.REBOOT"

    .line 62
    .line 63
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v6, 0x7

    .line 71
    goto :goto_0

    .line 72
    :sswitch_1
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    .line 73
    .line 74
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v6, v0

    .line 82
    goto :goto_0

    .line 83
    :sswitch_2
    const-string v7, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 84
    .line 85
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v6, p1

    .line 93
    goto :goto_0

    .line 94
    :sswitch_3
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const/4 v6, 0x4

    .line 104
    goto :goto_0

    .line 105
    :sswitch_4
    const-string v7, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 106
    .line 107
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    const/4 v6, 0x3

    .line 115
    goto :goto_0

    .line 116
    :sswitch_5
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 117
    .line 118
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    const/4 v6, 0x2

    .line 126
    goto :goto_0

    .line 127
    :sswitch_6
    const-string v7, "android.intent.action.TIME_SET"

    .line 128
    .line 129
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_7
    const/4 v6, 0x1

    .line 137
    goto :goto_0

    .line 138
    :sswitch_7
    const-string v7, "android.intent.action.SCREEN_ON"

    .line 139
    .line 140
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_8

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_8
    const/4 v6, 0x0

    .line 148
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 149
    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 162
    .line 163
    if-eqz p0, :cond_9

    .line 164
    .line 165
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string/jumbo p2, "reason_reboot"

    .line 170
    .line 171
    .line 172
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 188
    .line 189
    if-eqz p0, :cond_9

    .line 190
    .line 191
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string/jumbo p2, "reason_shutdown"

    .line 196
    .line 197
    .line 198
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    new-instance p2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;

    .line 219
    .line 220
    invoke-direct {p2, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 237
    .line 238
    if-eqz p0, :cond_9

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    const-string/jumbo p2, "reason_charging"

    .line 245
    .line 246
    .line 247
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 254
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    const-string/jumbo p2, "sendIdleChangedMessage"

    .line 259
    .line 260
    .line 261
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 265
    .line 266
    if-eqz p0, :cond_9

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 277
    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    const-string/jumbo p1, "sendBootCompleteMessage"

    .line 282
    .line 283
    .line 284
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 288
    .line 289
    if-eqz p0, :cond_9

    .line 290
    .line 291
    const/16 p1, 0xe

    .line 292
    .line 293
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    const-string/jumbo p1, "sendTimeChangedMessage"

    .line 307
    .line 308
    .line 309
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 313
    .line 314
    if-eqz p0, :cond_9

    .line 315
    .line 316
    const/16 p1, 0x8

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 327
    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 335
    .line 336
    if-eqz p0, :cond_9

    .line 337
    .line 338
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    const-string/jumbo p2, "reason_screen_on"

    .line 343
    .line 344
    .line 345
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    .line 347
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    .line 349
    .line 350
    :cond_9
    :goto_1
    return-void

    .line 351
    :sswitch_data_0
    .sparse-switch
        -0x56ac2893 -> :sswitch_7
        0x1e1f7f95 -> :sswitch_6
        0x2f94f923 -> :sswitch_5
        0x33e5d967 -> :sswitch_4
        0x3cbf870b -> :sswitch_3
        0x5e33a4ad -> :sswitch_2
        0x741706da -> :sswitch_1
        0x79950caa -> :sswitch_0
    .end sparse-switch

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :pswitch_data_0
    .packed-switch 0x0
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
