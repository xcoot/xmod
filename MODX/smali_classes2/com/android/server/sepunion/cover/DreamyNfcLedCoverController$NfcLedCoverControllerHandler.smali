.class public final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

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
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto/16 :goto_9

    .line 11
    .line 12
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    if-ne p1, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v4, v3

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "fota_in_progress"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 37
    .line 38
    check-cast p0, Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    invoke-virtual {p0, v1, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 54
    .line 55
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    monitor-exit v0

    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0

    .line 66
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 67
    .line 68
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 69
    .line 70
    if-ne p1, v4, :cond_2

    .line 71
    .line 72
    move v3, v4

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v0, "fota_in_progress"

    .line 82
    .line 83
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 106
    .line 107
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 108
    .line 109
    if-ne v3, v2, :cond_3

    .line 110
    .line 111
    const/4 v3, 0x7

    .line 112
    invoke-virtual {v1, v3, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    monitor-exit v0

    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    throw p0

    .line 123
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 126
    .line 127
    monitor-enter v0

    .line 128
    :try_start_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .line 145
    .line 146
    const/4 v2, 0x6

    .line 147
    invoke-virtual {p1, v2, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 151
    .line 152
    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 153
    .line 154
    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catchall_2
    move-exception p0

    .line 160
    goto :goto_6

    .line 161
    :cond_5
    monitor-exit v0

    .line 162
    goto/16 :goto_9

    .line 163
    .line 164
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    throw p0

    .line 166
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p1, Ljava/lang/Long;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    goto/16 :goto_9

    .line 179
    .line 180
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 181
    .line 182
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Landroid/os/Bundle;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 187
    .line 188
    monitor-enter v0

    .line 189
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    :cond_6
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_7

    .line 200
    .line 201
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 206
    .line 207
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 208
    .line 209
    if-ne v3, v2, :cond_6

    .line 210
    .line 211
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_3
    move-exception p0

    .line 216
    goto :goto_8

    .line 217
    :cond_7
    monitor-exit v0

    .line 218
    goto :goto_9

    .line 219
    :goto_8
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 220
    throw p0

    .line 221
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 222
    .line 223
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Landroid/os/Bundle;

    .line 226
    .line 227
    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    .line 228
    .line 229
    .line 230
    goto :goto_9

    .line 231
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 232
    .line 233
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast p1, Landroid/os/Bundle;

    .line 236
    .line 237
    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 242
    .line 243
    if-ne p1, v4, :cond_8

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    const-string p1, "DreamyNfcLedCoverController"

    .line 252
    .line 253
    const-string v0, "handleCoverDetached()"

    .line 254
    .line 255
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    .line 265
    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    .line 270
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 271
    .line 272
    .line 273
    goto :goto_9

    .line 274
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 275
    .line 276
    invoke-static {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    .line 277
    .line 278
    .line 279
    goto :goto_9

    .line 280
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 281
    .line 282
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 283
    .line 284
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 285
    .line 286
    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 291
    .line 292
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 293
    .line 294
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p1, [B

    .line 297
    .line 298
    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V

    .line 299
    .line 300
    .line 301
    :goto_9
    return-void

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
