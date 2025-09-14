.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

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
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x5

    .line 7
    const/4 v4, 0x1

    .line 8
    const/16 v5, 0x12

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x4

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_12

    .line 18
    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 20
    .line 21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "lcd_off_disabled_by_cover"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 35
    .line 36
    if-eq v1, v0, :cond_0

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v5, v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 69
    .line 70
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 71
    .line 72
    if-ne v2, v9, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1, v9, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    monitor-exit v0

    .line 81
    goto/16 :goto_12

    .line 82
    .line 83
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 86
    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Landroid/os/Bundle;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 92
    .line 93
    monitor-enter v0

    .line 94
    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 111
    .line 112
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 113
    .line 114
    if-ne v2, v9, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1, v6, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    monitor-exit v0

    .line 123
    goto/16 :goto_12

    .line 124
    .line 125
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    throw p0

    .line 127
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 128
    .line 129
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Landroid/os/Bundle;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 134
    .line 135
    monitor-enter v0

    .line 136
    :try_start_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 153
    .line 154
    iget v3, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 155
    .line 156
    if-ne v3, v9, :cond_5

    .line 157
    .line 158
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :catchall_2
    move-exception p0

    .line 163
    goto :goto_5

    .line 164
    :cond_6
    monitor-exit v0

    .line 165
    goto/16 :goto_12

    .line 166
    .line 167
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 168
    throw p0

    .line 169
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 170
    .line 171
    if-ne p1, v4, :cond_7

    .line 172
    .line 173
    goto/16 :goto_12

    .line 174
    .line 175
    :cond_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const-string p1, "CoverManager_NfcLedCoverController"

    .line 181
    .line 182
    const-string v0, "handleCoverDetached()"

    .line 183
    .line 184
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    .line 191
    .line 192
    :try_start_3
    iput-boolean v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 195
    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 199
    .line 200
    .line 201
    iput-object v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 202
    .line 203
    iput-object v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_8
    const-string p1, "CoverManager_NfcLedCoverController"

    .line 207
    .line 208
    const-string v0, "Call duration should not be null in stop or was already stopped"

    .line 209
    .line 210
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :goto_6
    const-wide/16 v0, -0x1

    .line 214
    .line 215
    iput-wide v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 218
    .line 219
    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    .line 234
    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 240
    .line 241
    .line 242
    iput-boolean v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 243
    .line 244
    iput v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 245
    .line 246
    iput-object v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    if-eqz p1, :cond_9

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :catchall_3
    move-exception p1

    .line 262
    goto :goto_8

    .line 263
    :cond_9
    :goto_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_12

    .line 269
    .line 270
    :goto_8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 271
    .line 272
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 279
    .line 280
    monitor-enter v0

    .line 281
    :try_start_4
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    :cond_a
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_b

    .line 292
    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 298
    .line 299
    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 300
    .line 301
    if-ne v3, v9, :cond_a

    .line 302
    .line 303
    invoke-virtual {v2, v4, v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :catchall_4
    move-exception p0

    .line 308
    goto :goto_d

    .line 309
    :cond_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 310
    new-array p1, v4, [B

    .line 311
    .line 312
    aput-byte v7, p1, v7

    .line 313
    .line 314
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 315
    .line 316
    if-eqz v0, :cond_c

    .line 317
    .line 318
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 319
    .line 320
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v5, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_12

    .line 327
    .line 328
    :cond_c
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 331
    .line 332
    .line 333
    :try_start_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 334
    .line 335
    if-eqz p1, :cond_10

    .line 336
    .line 337
    iget v0, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    .line 338
    .line 339
    if-ne v0, v6, :cond_f

    .line 340
    .line 341
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 342
    .line 343
    if-eqz p1, :cond_e

    .line 344
    .line 345
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 346
    .line 347
    if-nez p1, :cond_d

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_d
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :catchall_5
    move-exception p1

    .line 354
    goto :goto_c

    .line 355
    :cond_e
    :goto_a
    const-string p1, "CoverManager_NfcLedCoverController"

    .line 356
    .line 357
    const-string v0, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    .line 358
    .line 359
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    iput-object v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 363
    .line 364
    invoke-virtual {p0, v1, v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 365
    .line 366
    .line 367
    goto :goto_b

    .line 368
    :cond_f
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    .line 369
    .line 370
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 371
    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_10
    invoke-virtual {p0, v1, v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 375
    .line 376
    .line 377
    :goto_b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 378
    .line 379
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_12

    .line 383
    .line 384
    :goto_c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 385
    .line 386
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :goto_d
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 391
    throw p0

    .line 392
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 393
    .line 394
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    const v1, 0xfffe

    .line 400
    .line 401
    .line 402
    if-ne p1, v1, :cond_11

    .line 403
    .line 404
    goto :goto_e

    .line 405
    :cond_11
    move v6, p1

    .line 406
    :goto_e
    if-eqz v6, :cond_12

    .line 407
    .line 408
    iget-object p1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 409
    .line 410
    if-eqz p1, :cond_13

    .line 411
    .line 412
    iget p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    .line 413
    .line 414
    if-ne p1, v6, :cond_13

    .line 415
    .line 416
    :cond_12
    iput-object v8, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 417
    .line 418
    :cond_13
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 419
    .line 420
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 421
    .line 422
    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-nez p1, :cond_1d

    .line 427
    .line 428
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 429
    .line 430
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 431
    .line 432
    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-nez p1, :cond_1d

    .line 437
    .line 438
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 439
    .line 440
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 441
    .line 442
    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-nez p1, :cond_1d

    .line 447
    .line 448
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 449
    .line 450
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 451
    .line 452
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_12

    .line 456
    .line 457
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 458
    .line 459
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 460
    .line 461
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 462
    .line 463
    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_12

    .line 467
    .line 468
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 469
    .line 470
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 471
    .line 472
    const-string v0, "CoverManager_NfcLedCoverController"

    .line 473
    .line 474
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 475
    .line 476
    if-nez v1, :cond_14

    .line 477
    .line 478
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 479
    .line 480
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_12

    .line 484
    .line 485
    :cond_14
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 486
    .line 487
    if-lez v1, :cond_15

    .line 488
    .line 489
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 490
    .line 491
    add-int/2addr v1, v4

    .line 492
    iput v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 493
    .line 494
    :cond_15
    new-array v1, v4, [B

    .line 495
    .line 496
    aput-byte v7, v1, v7

    .line 497
    .line 498
    const/16 v5, 0x11

    .line 499
    .line 500
    invoke-static {v5, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData$1(I[B)[B

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    :try_start_7
    iget v10, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 505
    .line 506
    if-nez v10, :cond_16

    .line 507
    .line 508
    iget-object v10, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 509
    .line 510
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    invoke-static {v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    .line 514
    .line 515
    .line 516
    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 517
    goto :goto_f

    .line 518
    :catch_0
    move-exception v1

    .line 519
    const-string v10, "Error sending data to NFC"

    .line 520
    .line 521
    invoke-static {v0, v10, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .line 523
    .line 524
    :cond_16
    :goto_f
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 525
    .line 526
    const/16 v10, -0x2f

    .line 527
    .line 528
    if-lez v1, :cond_19

    .line 529
    .line 530
    iget v11, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 531
    .line 532
    const/16 v12, 0x13

    .line 533
    .line 534
    if-le v11, v12, :cond_19

    .line 535
    .line 536
    new-array v8, v3, [B

    .line 537
    .line 538
    aput-byte v7, v8, v4

    .line 539
    .line 540
    aput-byte v7, v8, v7

    .line 541
    .line 542
    aput-byte v10, v8, v2

    .line 543
    .line 544
    aput-byte v5, v8, v6

    .line 545
    .line 546
    if-ne v1, v2, :cond_17

    .line 547
    .line 548
    aput-byte v4, v8, v9

    .line 549
    .line 550
    goto :goto_10

    .line 551
    :cond_17
    if-ne v1, v4, :cond_18

    .line 552
    .line 553
    aput-byte v2, v8, v9

    .line 554
    .line 555
    goto :goto_10

    .line 556
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v11, "Unknown test value: "

    .line 559
    .line 560
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget v11, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 564
    .line 565
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v11, ", reject by default"

    .line 569
    .line 570
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    aput-byte v2, v8, v9

    .line 581
    .line 582
    :cond_19
    :goto_10
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 583
    .line 584
    if-eqz v8, :cond_1b

    .line 585
    .line 586
    array-length v11, v8

    .line 587
    if-lt v11, v3, :cond_1b

    .line 588
    .line 589
    aget-byte v3, v8, v2

    .line 590
    .line 591
    if-ne v3, v10, :cond_1b

    .line 592
    .line 593
    aget-byte v3, v8, v6

    .line 594
    .line 595
    if-ne v3, v5, :cond_1b

    .line 596
    .line 597
    aget-byte v3, v8, v9

    .line 598
    .line 599
    if-eq v3, v4, :cond_1a

    .line 600
    .line 601
    if-ne v3, v2, :cond_1b

    .line 602
    .line 603
    :cond_1a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 604
    .line 605
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 606
    .line 607
    .line 608
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    iput v6, v0, Landroid/os/Message;->what:I

    .line 613
    .line 614
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 615
    .line 616
    aget-byte p1, v8, v9

    .line 617
    .line 618
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 619
    .line 620
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    .line 622
    .line 623
    iput-boolean v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 624
    .line 625
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 626
    .line 627
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 628
    .line 629
    .line 630
    goto :goto_12

    .line 631
    :cond_1b
    const-string p0, "No touch event from LED cover, keep listening"

    .line 632
    .line 633
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 637
    .line 638
    .line 639
    move-result-object p0

    .line 640
    iput v2, p0, Landroid/os/Message;->what:I

    .line 641
    .line 642
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 643
    .line 644
    const-wide/16 v2, 0x64

    .line 645
    .line 646
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 647
    .line 648
    .line 649
    goto :goto_12

    .line 650
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 651
    .line 652
    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    .line 653
    .line 654
    .line 655
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 656
    .line 657
    iget v0, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 658
    .line 659
    const/16 v2, 0xc

    .line 660
    .line 661
    if-ne v0, v2, :cond_1c

    .line 662
    .line 663
    invoke-virtual {p1, v1, v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 664
    .line 665
    .line 666
    goto :goto_11

    .line 667
    :cond_1c
    invoke-static {p1, v5, v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 668
    .line 669
    .line 670
    :goto_11
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 671
    .line 672
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 673
    .line 674
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 675
    .line 676
    .line 677
    goto :goto_12

    .line 678
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 679
    .line 680
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    .line 681
    .line 682
    .line 683
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 684
    .line 685
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 686
    .line 687
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast p1, [B

    .line 690
    .line 691
    invoke-static {v0, v1, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 692
    .line 693
    .line 694
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 695
    .line 696
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 697
    .line 698
    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    .line 699
    .line 700
    .line 701
    move-result p1

    .line 702
    if-nez p1, :cond_1d

    .line 703
    .line 704
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 705
    .line 706
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 707
    .line 708
    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    .line 709
    .line 710
    .line 711
    move-result p1

    .line 712
    if-nez p1, :cond_1d

    .line 713
    .line 714
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 715
    .line 716
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 717
    .line 718
    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 719
    .line 720
    .line 721
    move-result p1

    .line 722
    if-nez p1, :cond_1d

    .line 723
    .line 724
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 725
    .line 726
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 727
    .line 728
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 729
    .line 730
    .line 731
    :cond_1d
    :goto_12
    return-void

    .line 732
    nop

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
