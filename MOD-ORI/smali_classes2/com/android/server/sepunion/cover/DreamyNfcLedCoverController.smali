.class public final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCoverAuthCallbacks:Ljava/util/ArrayList;

.field public final mEnquedFactoryCommands:Ljava/util/ArrayDeque;

.field public final mFotaInProgressCallbacks:Ljava/util/Queue;

.field public final mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 21
    .line 22
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public static -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "DreamyNfcLedCoverController"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "HandleEventResponse: type: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " action: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    const/4 v1, 0x3

    .line 33
    if-eq p2, v0, :cond_10

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-eq p2, v0, :cond_c

    .line 37
    .line 38
    if-eq p2, v1, :cond_8

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    if-eq p2, v0, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    if-eq p2, v0, :cond_0

    .line 45
    .line 46
    const-string p1, "DreamyNfcLedCoverController"

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Unknown event action: "

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_0
    const-string p2, "DreamyNfcLedCoverController"

    .line 68
    .line 69
    const-string v0, "Event touch: tap right"

    .line 70
    .line 71
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 75
    .line 76
    monitor-enter p2

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 94
    .line 95
    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 96
    .line 97
    if-ne p1, v3, :cond_1

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 100
    .line 101
    const-string v3, "DreamyNfcLedCoverController"

    .line 102
    .line 103
    if-nez v2, :cond_2

    .line 104
    .line 105
    const-string/jumbo v2, "null listener received onCoverTapRight!"

    .line 106
    .line 107
    .line 108
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    invoke-interface {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapRight()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    :try_start_2
    const-string v4, "Failed onCoverTapRight callback"

    .line 124
    .line 125
    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    monitor-exit p2

    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    throw p0

    .line 136
    :cond_4
    const-string p2, "DreamyNfcLedCoverController"

    .line 137
    .line 138
    const-string v0, "Event touch: tap middle"

    .line 139
    .line 140
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 144
    .line 145
    monitor-enter p2

    .line 146
    :try_start_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_7

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 163
    .line 164
    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 165
    .line 166
    if-ne p1, v3, :cond_5

    .line 167
    .line 168
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 169
    .line 170
    const-string v3, "DreamyNfcLedCoverController"

    .line 171
    .line 172
    if-nez v2, :cond_6

    .line 173
    .line 174
    const-string/jumbo v2, "null listener received onCoverTapMid!"

    .line 175
    .line 176
    .line 177
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    :try_start_4
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    invoke-interface {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapMid()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catch_1
    move-exception v2

    .line 192
    :try_start_5
    const-string v4, "Failed onCoverTapMid callback"

    .line 193
    .line 194
    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catchall_1
    move-exception p0

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    monitor-exit p2

    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :goto_3
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    throw p0

    .line 205
    :cond_8
    const-string p2, "DreamyNfcLedCoverController"

    .line 206
    .line 207
    const-string v0, "Event touch: tap left"

    .line 208
    .line 209
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 213
    .line 214
    monitor-enter p2

    .line 215
    :try_start_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_b

    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 232
    .line 233
    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 234
    .line 235
    if-ne p1, v3, :cond_9

    .line 236
    .line 237
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 238
    .line 239
    const-string v3, "DreamyNfcLedCoverController"

    .line 240
    .line 241
    if-nez v2, :cond_a

    .line 242
    .line 243
    const-string/jumbo v2, "null listener received onCoverTapLeft!"

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_a
    :try_start_7
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    if-eqz v2, :cond_9

    .line 255
    .line 256
    invoke-interface {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapLeft()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :catch_2
    move-exception v2

    .line 261
    :try_start_8
    const-string v4, "Failed onCoverTapLeft callback"

    .line 262
    .line 263
    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :catchall_2
    move-exception p0

    .line 268
    goto :goto_5

    .line 269
    :cond_b
    monitor-exit p2

    .line 270
    goto/16 :goto_9

    .line 271
    .line 272
    :goto_5
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 273
    throw p0

    .line 274
    :cond_c
    const-string p2, "DreamyNfcLedCoverController"

    .line 275
    .line 276
    const-string v0, "Event touch: reject"

    .line 277
    .line 278
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 282
    .line 283
    monitor-enter p2

    .line 284
    :try_start_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_f

    .line 295
    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 301
    .line 302
    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 303
    .line 304
    if-ne p1, v3, :cond_d

    .line 305
    .line 306
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 307
    .line 308
    const-string v3, "DreamyNfcLedCoverController"

    .line 309
    .line 310
    if-nez v2, :cond_e

    .line 311
    .line 312
    const-string/jumbo v2, "null listener received TouchReject!"

    .line 313
    .line 314
    .line 315
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_e
    :try_start_a
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    if-eqz v2, :cond_d

    .line 324
    .line 325
    invoke-interface {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :catch_3
    move-exception v2

    .line 330
    :try_start_b
    const-string v4, "Failed onCoverTouchReject callback"

    .line 331
    .line 332
    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :catchall_3
    move-exception p0

    .line 337
    goto :goto_7

    .line 338
    :cond_f
    monitor-exit p2

    .line 339
    goto :goto_9

    .line 340
    :goto_7
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 341
    throw p0

    .line 342
    :cond_10
    const-string p2, "DreamyNfcLedCoverController"

    .line 343
    .line 344
    const-string v0, "Event touch: accept"

    .line 345
    .line 346
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 350
    .line 351
    monitor-enter p2

    .line 352
    :try_start_c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    :cond_11
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_13

    .line 363
    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 369
    .line 370
    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 371
    .line 372
    if-ne p1, v3, :cond_11

    .line 373
    .line 374
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 375
    .line 376
    const-string v3, "DreamyNfcLedCoverController"

    .line 377
    .line 378
    if-nez v2, :cond_12

    .line 379
    .line 380
    const-string/jumbo v2, "null listener received TouchAccept!"

    .line 381
    .line 382
    .line 383
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 384
    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_12
    :try_start_d
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    if-eqz v2, :cond_11

    .line 392
    .line 393
    invoke-interface {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 394
    .line 395
    .line 396
    goto :goto_8

    .line 397
    :catch_4
    move-exception v2

    .line 398
    :try_start_e
    const-string v4, "Failed onCoverTouchAccept callback"

    .line 399
    .line 400
    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    goto :goto_8

    .line 404
    :catchall_4
    move-exception p0

    .line 405
    goto :goto_a

    .line 406
    :cond_13
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 407
    :goto_9
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 408
    .line 409
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    if-nez p1, :cond_14

    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 416
    .line 417
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 418
    .line 419
    .line 420
    :cond_14
    return-void

    .line 421
    :goto_a
    :try_start_f
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 422
    throw p0
.end method

.method public static -$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 21
    .line 22
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public static -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "send_command_id"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "send_command_content"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter p2

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    move v3, v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 43
    .line 44
    iget v5, v4, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    if-ne v5, v6, :cond_0

    .line 48
    .line 49
    const/4 v3, 0x5

    .line 50
    invoke-virtual {v4, v3, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    const-string p2, "DreamyNfcLedCoverController"

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "LedCoverService did not finished initalizing, enqueue command "

    .line 65
    .line 66
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const/4 p2, 0x3

    .line 86
    if-lt p1, p2, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    .line 108
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void

    .line 112
    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw p0
.end method

.method public static -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 21
    .line 22
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    const/16 v3, 0xa

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p2, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    new-instance p2, Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 31
    .line 32
    new-instance p2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    const-string/jumbo v0, "send leddata"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    .line 57
    const-string/jumbo v1, "touchResponse ledcover"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "DreamyNfcLedCoverController"

    .line 2
    .line 3
    const-string v1, "addLedNotification"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "  Live callbacks ("

    .line 2
    .line 3
    const-string v1, " Current NfcLedCoverController state:"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "  mIsLEDCoverAttached="

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    .line 17
    .line 18
    const-string v1, "  "

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, " Current NFC Callback state:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "):"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "    "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " (pid="

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v3, v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " uid="

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v3, v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, " type="

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v0, v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ")"

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    const-string p0, "  "

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 144
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p0
.end method

.method public final notifyAuthenticationResponse()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-interface {p2, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string p0, "DreamyNfcLedCoverController"

    .line 33
    .line 34
    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v8, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    move-object v1, v8

    .line 55
    move-object v2, p0

    .line 56
    move-object v3, p2

    .line 57
    move-object v4, p3

    .line 58
    move v7, p1

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 60
    .line 61
    .line 62
    const/4 p3, 0x0

    .line 63
    invoke-interface {p2, v8, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const/4 p2, 0x4

    .line 72
    if-ne p1, p2, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/os/Bundle;

    .line 91
    .line 92
    const/4 p3, 0x5

    .line 93
    invoke-virtual {v8, p3, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 100
    .line 101
    .line 102
    :cond_3
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0
.end method

.method public final removeLedNotification(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "DreamyNfcLedCoverController"

    .line 2
    .line 3
    const-string/jumbo v1, "removeLedNotification"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-interface {p3, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string p0, "DreamyNfcLedCoverController"

    .line 34
    .line 35
    const-string/jumbo p1, "requestCoverAuthentication : duplicated listener handle"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v3

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/4 v10, 0x4

    .line 56
    move-object v4, v1

    .line 57
    move-object v5, p0

    .line 58
    move-object v6, p3

    .line 59
    move-object v7, p4

    .line 60
    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p3, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 73
    .line 74
    const/16 p3, 0xa

    .line 75
    .line 76
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x1

    .line 90
    return p0

    .line 91
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0
.end method

.method public final sendDataToNfcLedCover(I[B)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 2
    .line 3
    const-string v1, "DreamyNfcLedCoverController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "sendDataToLedCover : Not attached LED Cover"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v0, "CoverManager_BaseNfcLedCoverController"

    .line 39
    .line 40
    const-string v2, "Could not get NfcAdapter"

    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    const-string/jumbo p0, "sendDataToLedCover : Nfc Service not available"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    const/4 v0, -0x1

    .line 57
    if-eq p1, v0, :cond_5

    .line 58
    .line 59
    const/4 v0, -0x2

    .line 60
    if-ne p1, v0, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 73
    .line 74
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    iput p1, v0, Landroid/os/Message;->what:I

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    :goto_0
    const-string/jumbo p0, "sendDataToLedCover : command: -1 should not be sent, ignore"

    .line 86
    .line 87
    .line 88
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final sendPowerKeyToCover()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final sendSystemEvent(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "event_type"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    if-eq v0, p0, :cond_1

    .line 13
    .line 14
    const/16 p0, 0x8

    .line 15
    .line 16
    if-eq v0, p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "fota_in_progress"

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/16 p1, 0xd

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p0, 0x9

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "lcd_touch_listener_type"

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const-string v2, "lcd_touch_listener_respone"

    .line 63
    .line 64
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v0, 0x3

    .line 69
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 74
    .line 75
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-interface {p2, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string p0, "DreamyNfcLedCoverController"

    .line 34
    .line 35
    const-string/jumbo p1, "setFotaInProgress : duplicated listener handle"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v3

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/4 v10, 0x4

    .line 56
    move-object v4, v1

    .line 57
    move-object v5, p0

    .line 58
    move-object v6, p2

    .line 59
    move-object v7, p3

    .line 60
    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 67
    .line 68
    check-cast p2, Ljava/util/LinkedList;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 75
    .line 76
    const/16 p2, 0xc

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0
.end method

.method public final unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-interface {p1, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v1, "DreamyNfcLedCoverController"

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v5, "remove listener: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v5, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string p0, "DreamyNfcLedCoverController"

    .line 73
    .line 74
    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    .line 75
    .line 76
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final updateNfcLedCoverAttachStateLocked(IZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xe

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 14
    .line 15
    if-eq v0, p1, :cond_2

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    const-string p1, "DreamyNfcLedCoverController"

    .line 22
    .line 23
    const-string v0, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x5

    .line 29
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method
