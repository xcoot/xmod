.class public final Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "TvInputHardwareManager"

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Unhandled message: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroid/os/Bundle;

    .line 40
    .line 41
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 46
    .line 47
    const-string v3, "failed to send TV message - unknown input id "

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v4

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 55
    .line 56
    iget v6, v5, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 69
    .line 70
    if-nez v6, :cond_0

    .line 71
    .line 72
    const-string p0, "TvInputManagerService"

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    monitor-exit v4

    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_0
    iget-object v1, v5, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 94
    .line 95
    iget-object v3, v6, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v1, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 110
    .line 111
    check-cast v1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 136
    .line 137
    iget v7, v7, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 138
    .line 139
    invoke-virtual {v5, v6, v3, v7}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iget-boolean v5, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 144
    .line 145
    if-nez v5, :cond_1

    .line 146
    .line 147
    iget-object v5, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 148
    .line 149
    if-eqz v5, :cond_1

    .line 150
    .line 151
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 152
    .line 153
    invoke-interface {v3, p1, v2}, Landroid/media/tv/ITvInputSession;->notifyTvMessage(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v3

    .line 158
    :try_start_2
    const-string v5, "TvInputManagerService"

    .line 159
    .line 160
    const-string v6, "error in onTvMessage"

    .line 161
    .line 162
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_b

    .line 171
    .line 172
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    throw p0

    .line 174
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 175
    .line 176
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 177
    .line 178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 191
    .line 192
    iget-object v6, v6, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 193
    .line 194
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v0, :cond_e

    .line 201
    .line 202
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 203
    .line 204
    iget-object v6, v6, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 205
    .line 206
    monitor-enter v6

    .line 207
    :try_start_4
    invoke-virtual {p1, v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_3

    .line 212
    .line 213
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eq v5, v3, :cond_6

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :catchall_1
    move-exception p0

    .line 236
    goto :goto_6

    .line 237
    :cond_3
    if-nez v4, :cond_4

    .line 238
    .line 239
    move v3, v2

    .line 240
    goto :goto_3

    .line 241
    :cond_4
    move v3, v1

    .line 242
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_5

    .line 247
    .line 248
    move v4, v2

    .line 249
    goto :goto_4

    .line 250
    :cond_5
    move v4, v1

    .line 251
    :goto_4
    if-eq v3, v4, :cond_6

    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 256
    .line 257
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 266
    .line 267
    .line 268
    :cond_6
    :goto_5
    monitor-exit v6

    .line 269
    goto/16 :goto_b

    .line 270
    .line 271
    :goto_6
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    throw p0

    .line 273
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 280
    .line 281
    monitor-enter v0

    .line 282
    :try_start_5
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 283
    .line 284
    iget-object v3, v3, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Ljava/lang/String;

    .line 295
    .line 296
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 297
    if-eqz v3, :cond_d

    .line 298
    .line 299
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 300
    .line 301
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 302
    .line 303
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 304
    .line 305
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 306
    .line 307
    monitor-enter v0

    .line 308
    :try_start_6
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_8

    .line 313
    .line 314
    if-eq v4, v2, :cond_7

    .line 315
    .line 316
    const/4 v1, 0x2

    .line 317
    if-eq v4, v1, :cond_7

    .line 318
    .line 319
    const/4 v1, 0x3

    .line 320
    if-eq v4, v1, :cond_7

    .line 321
    .line 322
    const/4 v1, 0x0

    .line 323
    goto :goto_7

    .line 324
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    goto :goto_7

    .line 329
    :catchall_2
    move-exception p0

    .line 330
    goto :goto_a

    .line 331
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    :goto_7
    if-eqz v1, :cond_9

    .line 336
    .line 337
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 344
    .line 345
    iget v4, v4, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 346
    .line 347
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 348
    .line 349
    .line 350
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 351
    .line 352
    iget v2, v1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 359
    .line 360
    check-cast v1, Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_c

    .line 375
    .line 376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 381
    .line 382
    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 383
    .line 384
    if-nez v3, :cond_a

    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_a
    :try_start_7
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 388
    .line 389
    iget v4, v3, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 390
    .line 391
    invoke-virtual {v3, v2, v4}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    .line 392
    .line 393
    .line 394
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 395
    .line 396
    if-eqz v3, :cond_b

    .line 397
    .line 398
    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :catch_1
    move-exception v2

    .line 403
    goto :goto_9

    .line 404
    :cond_b
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    .line 405
    .line 406
    check-cast v2, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 409
    .line 410
    .line 411
    goto :goto_8

    .line 412
    :goto_9
    :try_start_8
    const-string v3, "TvInputManagerService"

    .line 413
    .line 414
    const-string v4, "error in notifyHdmiDeviceUpdated"

    .line 415
    .line 416
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_c
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 421
    .line 422
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 423
    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 425
    .line 426
    .line 427
    monitor-exit v0

    .line 428
    goto :goto_b

    .line 429
    :goto_a
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 430
    throw p0

    .line 431
    :cond_d
    const-string p0, "TvInputHardwareManager"

    .line 432
    .line 433
    const-string p1, "Could not resolve input ID matching the device info; ignoring."

    .line 434
    .line 435
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    goto :goto_b

    .line 439
    :catchall_3
    move-exception p0

    .line 440
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 441
    throw p0

    .line 442
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 445
    .line 446
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 447
    .line 448
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 449
    .line 450
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 457
    .line 458
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 459
    .line 460
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 461
    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 463
    .line 464
    .line 465
    goto :goto_b

    .line 466
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 469
    .line 470
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 471
    .line 472
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 473
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 481
    .line 482
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 483
    .line 484
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 485
    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 487
    .line 488
    .line 489
    goto :goto_b

    .line 490
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v0, Ljava/lang/String;

    .line 493
    .line 494
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 495
    .line 496
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 497
    .line 498
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 499
    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->onStateChanged(ILjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :cond_e
    :goto_b
    return-void

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
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
