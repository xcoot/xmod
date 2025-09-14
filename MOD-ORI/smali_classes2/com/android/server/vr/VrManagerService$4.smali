.class public final Lcom/android/server/vr/VrManagerService$4;
.super Landroid/service/vr/IVrManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string p3, "VrManagerService"

    .line 6
    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "********* Dump of VrManagerService *********"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p1, "allowed"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "disallowed"

    .line 29
    .line 30
    :goto_0
    const-string p3, "VR mode is currently: "

    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 40
    .line 41
    iget-boolean p1, p1, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const-string p1, "enabled"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string p1, "disabled"

    .line 49
    .line 50
    :goto_1
    const-string p3, "Persistent VR mode is currently: "

    .line 51
    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p3, "Currently bound VR listener service: "

    .line 62
    .line 63
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 67
    .line 68
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 69
    .line 70
    if-nez p3, :cond_3

    .line 71
    .line 72
    const-string p3, "None"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object p3, p3, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    :goto_2
    const-string v0, "Currently bound VR compositor service: "

    .line 82
    .line 83
    invoke-static {p2, p3, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 88
    .line 89
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 90
    .line 91
    if-nez p3, :cond_4

    .line 92
    .line 93
    const-string p3, "None"

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget-object p3, p3, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    :goto_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p1, "Previous state transitions:\n"

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p1, "  "

    .line 118
    .line 119
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 125
    .line 126
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p3, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 132
    .line 133
    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p3, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_5

    .line 141
    .line 142
    const-string v2, "  "

    .line 143
    .line 144
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v2, "None"

    .line 148
    .line 149
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto/16 :goto_e

    .line 155
    .line 156
    :cond_5
    :goto_4
    iget-boolean v2, p3, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    .line 157
    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    const-string v2, "..."

    .line 161
    .line 162
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 166
    .line 167
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 182
    .line 183
    invoke-interface {v2, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    const-string p3, "\n\nRemote Callbacks:"

    .line 193
    .line 194
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 198
    .line 199
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 200
    .line 201
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 202
    .line 203
    .line 204
    move-result p3

    .line 205
    :goto_6
    add-int/lit8 v0, p3, -0x1

    .line 206
    .line 207
    if-lez p3, :cond_9

    .line 208
    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 213
    .line 214
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 215
    .line 216
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    if-lez v0, :cond_8

    .line 224
    .line 225
    const-string p3, ","

    .line 226
    .line 227
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_8
    move p3, v0

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 233
    .line 234
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 235
    .line 236
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 237
    .line 238
    .line 239
    const-string p3, "\n\nPersistent Vr State Remote Callbacks:"

    .line 240
    .line 241
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 245
    .line 246
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 247
    .line 248
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    :goto_7
    add-int/lit8 v0, p3, -0x1

    .line 253
    .line 254
    if-lez p3, :cond_b

    .line 255
    .line 256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 260
    .line 261
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 262
    .line 263
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 264
    .line 265
    .line 266
    move-result-object p3

    .line 267
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    if-lez v0, :cond_a

    .line 271
    .line 272
    const-string p3, ","

    .line 273
    .line 274
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_a
    move p3, v0

    .line 278
    goto :goto_7

    .line 279
    :cond_b
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 280
    .line 281
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 282
    .line 283
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 284
    .line 285
    .line 286
    const-string p3, "\n"

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string p3, "Installed VrListenerService components:"

    .line 292
    .line 293
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 297
    .line 298
    iget v0, p3, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 299
    .line 300
    iget-object p3, p3, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 301
    .line 302
    iget-object v2, p3, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 303
    .line 304
    monitor-enter v2

    .line 305
    :try_start_1
    iget-object p3, p3, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 306
    .line 307
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    check-cast p3, Landroid/util/ArraySet;

    .line 312
    .line 313
    if-nez p3, :cond_c

    .line 314
    .line 315
    new-instance p3, Landroid/util/ArraySet;

    .line 316
    .line 317
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 318
    .line 319
    .line 320
    monitor-exit v2

    .line 321
    goto :goto_8

    .line 322
    :catchall_1
    move-exception p0

    .line 323
    goto :goto_d

    .line 324
    :cond_c
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    :goto_8
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_d

    .line 330
    .line 331
    const-string p3, "None"

    .line 332
    .line 333
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_d
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_e

    .line 346
    .line 347
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Landroid/content/ComponentName;

    .line 352
    .line 353
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_e
    :goto_a
    const-string p3, "Enabled VrListenerService components:"

    .line 365
    .line 366
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 370
    .line 371
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 372
    .line 373
    invoke-virtual {p0, v0}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 378
    .line 379
    .line 380
    move-result p3

    .line 381
    if-nez p3, :cond_f

    .line 382
    .line 383
    const-string p0, "None"

    .line 384
    .line 385
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_f
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    .line 395
    .line 396
    move-result p3

    .line 397
    if-eqz p3, :cond_10

    .line 398
    .line 399
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p3

    .line 403
    check-cast p3, Landroid/content/ComponentName;

    .line 404
    .line 405
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p3

    .line 412
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto :goto_b

    .line 416
    :cond_10
    :goto_c
    const-string p0, "\n"

    .line 417
    .line 418
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string p0, "********* End of VrManagerService Dump *********"

    .line 422
    .line 423
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :goto_d
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    throw p0

    .line 429
    :goto_e
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    throw p0
.end method

.method public final getPersistentVrModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    const-string v2, "android.permission.ACCESS_VR_STATE"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getVr2dDisplayId()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    monitor-exit v1

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit v1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_1
    const-string p0, "VrManagerService"

    .line 32
    .line 33
    const-string v1, "Vr2dDisplay is null!"

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_1
    return v0
.end method

.method public final getVrModeState()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    const-string v2, "android.permission.ACCESS_VR_STATE"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    const-string v2, "android.permission.ACCESS_VR_STATE"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "Callback binder object is null."

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    const-string v2, "android.permission.ACCESS_VR_STATE"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "Callback binder object is null."

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final setAndBindCompositor(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final setPersistentVrModeEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setStandbyEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string p0, "VrManagerService"

    .line 22
    .line 23
    const-string p1, "Attempting to set standby mode on a non-standalone device"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    :goto_0
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    const-string p0, "VrManagerService"

    .line 38
    .line 39
    const-string p1, "Vr2dDisplay is null!"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    const-string v2, "android.permission.ACCESS_VR_STATE"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "Callback binder object is null."

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    .line 4
    .line 5
    const-string v2, "android.permission.ACCESS_VR_STATE"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "Callback binder object is null."

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method
