.class public final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_a

    .line 27
    .line 28
    :cond_0
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 31
    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 39
    .line 40
    invoke-static {p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    iput-boolean p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->neverConnected:Z

    .line 48
    .line 49
    iget-boolean p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 54
    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    new-instance p2, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 62
    .line 63
    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 64
    .line 65
    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 66
    .line 67
    .line 68
    iput-object p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    :try_start_1
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 71
    .line 72
    invoke-interface {v3, p2}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p2

    .line 77
    :try_start_2
    const-string v3, "TvInputManagerService"

    .line 78
    .line 79
    const-string v4, "error in registerCallback"

    .line 80
    .line 81
    invoke-static {v3, v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    iget-object p2, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 105
    .line 106
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    iget v4, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 119
    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 123
    .line 124
    iget-object v5, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 125
    .line 126
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    iget v3, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v5, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-boolean p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 140
    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    .line 144
    .line 145
    check-cast p1, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_4

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .line 163
    :try_start_3
    iget-object v1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 164
    .line 165
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_1
    move-exception p2

    .line 170
    :try_start_4
    const-string v1, "TvInputManagerService"

    .line 171
    .line 172
    const-string v3, "error in hardwareDeviceRemovedBuffer"

    .line 173
    .line 174
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    .line 179
    .line 180
    check-cast p1, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 183
    .line 184
    .line 185
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    .line 186
    .line 187
    check-cast p1, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_5

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    check-cast p2, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    .line 205
    :try_start_5
    iget-object v1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 206
    .line 207
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catch_2
    move-exception p2

    .line 212
    :try_start_6
    const-string v1, "TvInputManagerService"

    .line 213
    .line 214
    const-string v3, "error in hdmiDeviceRemovedBuffer"

    .line 215
    .line 216
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_5
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    .line 221
    .line 222
    check-cast p1, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 228
    .line 229
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 230
    .line 231
    iget-object p2, p1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 232
    .line 233
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    :try_start_7
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 235
    .line 236
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 241
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-eqz p2, :cond_6

    .line 250
    .line 251
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    check-cast p2, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 256
    .line 257
    :try_start_9
    iget-object v1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 258
    .line 259
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :catch_3
    move-exception p2

    .line 264
    :try_start_a
    const-string v1, "TvInputManagerService"

    .line 265
    .line 266
    const-string v3, "error in notifyHardwareAdded"

    .line 267
    .line 268
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_6
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 273
    .line 274
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 275
    .line 276
    iget-object p2, p1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 277
    .line 278
    monitor-enter p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 279
    :try_start_b
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 280
    .line 281
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 286
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    if-eqz p2, :cond_7

    .line 295
    .line 296
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 301
    .line 302
    :try_start_d
    iget-object v1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 303
    .line 304
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :catch_4
    move-exception p2

    .line 309
    :try_start_e
    const-string v1, "TvInputManagerService"

    .line 310
    .line 311
    const-string v3, "error in notifyHdmiDeviceAdded"

    .line 312
    .line 313
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_7
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    .line 318
    .line 319
    check-cast p1, Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    if-eqz p2, :cond_8

    .line 330
    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    check-cast p2, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 336
    .line 337
    :try_start_f
    iget-object v1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 338
    .line 339
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :catch_5
    move-exception p2

    .line 344
    :try_start_10
    const-string v1, "TvInputManagerService"

    .line 345
    .line 346
    const-string v3, "error in hdmiDeviceUpdatedBuffer"

    .line 347
    .line 348
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_8
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    .line 353
    .line 354
    check-cast p1, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :catchall_1
    move-exception p0

    .line 361
    :try_start_11
    monitor-exit p2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 362
    :try_start_12
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 363
    :catchall_2
    move-exception p0

    .line 364
    :try_start_13
    monitor-exit p2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 365
    :try_start_14
    throw p0

    .line 366
    :cond_9
    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .line 370
    .line 371
    iget-object p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 372
    .line 373
    check-cast p2, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    :cond_a
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_b

    .line 384
    .line 385
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    check-cast v1, Landroid/os/IBinder;

    .line 390
    .line 391
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 392
    .line 393
    iget-object v4, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 394
    .line 395
    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 396
    .line 397
    invoke-static {v3, v4, v1, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-nez v3, :cond_a

    .line 402
    .line 403
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    if-eqz p2, :cond_c

    .line 416
    .line 417
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    check-cast p2, Landroid/os/IBinder;

    .line 422
    .line 423
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 424
    .line 425
    iget v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 426
    .line 427
    invoke-virtual {v1, v3, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    .line 428
    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_c
    iget-boolean p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 432
    .line 433
    if-eqz p1, :cond_d

    .line 434
    .line 435
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 436
    .line 437
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 438
    .line 439
    invoke-virtual {p1, p0}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 440
    .line 441
    .line 442
    :cond_d
    monitor-exit v0

    .line 443
    return-void

    .line 444
    :goto_a
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 445
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    check-cast p1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 44
    .line 45
    iput-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 48
    .line 49
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 50
    .line 51
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Mismatched ComponentName: "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, " (expected), "

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, " (actual)."

    .line 84
    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method
