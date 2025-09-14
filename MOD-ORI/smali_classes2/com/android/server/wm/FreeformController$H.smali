.class public final Lcom/android/server/wm/FreeformController$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v2, v3, :cond_6

    .line 10
    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch v2, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    goto/16 :goto_10

    .line 18
    .line 19
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 27
    .line 28
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Landroid/os/IRemoteCallback;

    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 35
    .line 36
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    :goto_0
    if-ge v4, v5, :cond_0

    .line 43
    .line 44
    iget-object v6, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 45
    .line 46
    iget-object v6, v6, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 47
    .line 48
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    :try_start_1
    invoke-interface {v6, v3, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    :try_start_2
    const-string v6, "FreeformController"

    .line 61
    .line 62
    const-string/jumbo v7, "onTaskMoveEnded, RemoteException occurred"

    .line 63
    .line 64
    .line 65
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 76
    .line 77
    .line 78
    monitor-exit v2

    .line 79
    goto/16 :goto_10

    .line 80
    .line 81
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw v0

    .line 83
    :pswitch_1
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 86
    .line 87
    monitor-enter v2

    .line 88
    :try_start_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 91
    .line 92
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Landroid/graphics/Point;

    .line 97
    .line 98
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 101
    .line 102
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    :goto_3
    if-ge v4, v5, :cond_1

    .line 107
    .line 108
    iget-object v6, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 109
    .line 110
    iget-object v6, v6, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 111
    .line 112
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    .line 118
    :try_start_4
    invoke-interface {v6, v3, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveStarted(ILandroid/graphics/Point;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    goto :goto_5

    .line 124
    :catch_1
    :try_start_5
    const-string v6, "FreeformController"

    .line 125
    .line 126
    const-string/jumbo v7, "onTaskMoveStarted, RemoteException occurred"

    .line 127
    .line 128
    .line 129
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    .line 141
    .line 142
    monitor-exit v2

    .line 143
    goto/16 :goto_10

    .line 144
    .line 145
    :goto_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    throw v0

    .line 147
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 148
    .line 149
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 150
    .line 151
    monitor-enter v2

    .line 152
    :try_start_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 155
    .line 156
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 157
    .line 158
    iget-object v3, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 159
    .line 160
    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    :goto_6
    if-ge v4, v3, :cond_2

    .line 167
    .line 168
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 169
    .line 170
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 171
    .line 172
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    check-cast v5, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 177
    .line 178
    :try_start_7
    invoke-interface {v5, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimizeAnimationEnd(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :catchall_2
    move-exception v0

    .line 183
    goto :goto_8

    .line 184
    :catch_2
    :try_start_8
    const-string v5, "FreeformController"

    .line 185
    .line 186
    const-string/jumbo v6, "onMinimizeAnimationEnd, RemoteException occurred"

    .line 187
    .line 188
    .line 189
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 200
    .line 201
    .line 202
    monitor-exit v2

    .line 203
    goto/16 :goto_10

    .line 204
    .line 205
    :goto_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 206
    throw v0

    .line 207
    :pswitch_3
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 208
    .line 209
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 210
    .line 211
    monitor-enter v2

    .line 212
    :try_start_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 215
    .line 216
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 217
    .line 218
    iget-object v3, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 219
    .line 220
    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    :goto_9
    if-ge v4, v3, :cond_3

    .line 227
    .line 228
    iget-object v5, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 229
    .line 230
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 231
    .line 232
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 237
    .line 238
    :try_start_a
    invoke-interface {v5, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onUnminimized(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 239
    .line 240
    .line 241
    goto :goto_a

    .line 242
    :catchall_3
    move-exception v0

    .line 243
    goto :goto_b

    .line 244
    :catch_3
    :try_start_b
    const-string v5, "FreeformController"

    .line 245
    .line 246
    const-string/jumbo v6, "onRestored, RemoteException occurred"

    .line 247
    .line 248
    .line 249
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 260
    .line 261
    .line 262
    monitor-exit v2

    .line 263
    goto/16 :goto_10

    .line 264
    .line 265
    :goto_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 266
    throw v0

    .line 267
    :pswitch_4
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 268
    .line 269
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 270
    .line 271
    monitor-enter v2

    .line 272
    :try_start_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 275
    .line 276
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v5, Landroid/content/ComponentName;

    .line 279
    .line 280
    iget v13, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 281
    .line 282
    iget v14, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 283
    .line 284
    iget v15, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 285
    .line 286
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 287
    .line 288
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 289
    .line 290
    if-ne v1, v3, :cond_4

    .line 291
    .line 292
    goto :goto_c

    .line 293
    :cond_4
    move v3, v4

    .line 294
    :goto_c
    iget-object v1, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 295
    .line 296
    iget-object v1, v1, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    :goto_d
    if-ge v4, v1, :cond_5

    .line 303
    .line 304
    iget-object v6, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 305
    .line 306
    iget-object v6, v6, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 307
    .line 308
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 313
    .line 314
    move-object v7, v5

    .line 315
    move v8, v13

    .line 316
    move v9, v14

    .line 317
    move v10, v15

    .line 318
    move v11, v12

    .line 319
    move/from16 v16, v12

    .line 320
    .line 321
    move v12, v3

    .line 322
    :try_start_d
    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimized(Landroid/content/ComponentName;IIIIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 323
    .line 324
    .line 325
    goto :goto_e

    .line 326
    :catchall_4
    move-exception v0

    .line 327
    goto :goto_f

    .line 328
    :catch_4
    :try_start_e
    const-string v6, "FreeformController"

    .line 329
    .line 330
    const-string/jumbo v7, "onMinimized, RemoteException occurred"

    .line 331
    .line 332
    .line 333
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    :goto_e
    add-int/lit8 v4, v4, 0x1

    .line 337
    .line 338
    move/from16 v12, v16

    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_5
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 342
    .line 343
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 346
    .line 347
    .line 348
    monitor-exit v2

    .line 349
    goto :goto_10

    .line 350
    :goto_f
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 351
    throw v0

    .line 352
    :pswitch_5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 353
    .line 354
    if-eqz v2, :cond_7

    .line 355
    .line 356
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 357
    .line 358
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    .line 359
    .line 360
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v1, Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto :goto_10

    .line 368
    :pswitch_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 369
    .line 370
    if-eqz v2, :cond_7

    .line 371
    .line 372
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 373
    .line 374
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    .line 375
    .line 376
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v1, Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    goto :goto_10

    .line 384
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    .line 387
    .line 388
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v1, Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto :goto_10

    .line 396
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 397
    .line 398
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    .line 399
    .line 400
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_10

    .line 408
    :cond_6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 409
    .line 410
    iget-object v2, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 411
    .line 412
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 413
    .line 414
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    const v3, 0x103012b

    .line 417
    .line 418
    .line 419
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 420
    .line 421
    .line 422
    iget-object v0, v0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 423
    .line 424
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 425
    .line 426
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 427
    .line 428
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    const v2, 0x10404a3

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    .line 445
    .line 446
    :cond_7
    :goto_10
    return-void

    .line 447
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
