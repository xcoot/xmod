.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

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
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_7

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq v0, v2, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string p0, "Not installed service "

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v2, "handleAgentStarted : "

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v3, "DualDARComnService"

    .line 50
    .line 51
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    const-string/jumbo v0, "package"

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v4, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 72
    .line 73
    invoke-interface {v0, v2, v4}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-array p1, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :goto_0
    const-string/jumbo p1, "reconnectService remote exception"

    .line 102
    .line 103
    .line 104
    new-array v0, v1, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v3, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const-string v0, "DualDARComnService"

    .line 135
    .line 136
    const-string v3, "Binding Checker : Check binding to "

    .line 137
    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-array v4, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->checkProxyAgentBound(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter v0

    .line 158
    :try_start_1
    const-string p1, "DualDARComnService"

    .line 159
    .line 160
    const-string v2, "Binding Checker : Found out bound agent"

    .line 161
    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-static {p1, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    .line 171
    .line 172
    monitor-exit v0

    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :catchall_0
    move-exception p0

    .line 176
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    throw p0

    .line 178
    :cond_4
    const-string v0, "DualDARComnService"

    .line 179
    .line 180
    const-string v3, "Binding Checker : Maybe not bound yet"

    .line 181
    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-static {v0, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 188
    .line 189
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_5

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 196
    .line 197
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 201
    .line 202
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-wide/16 v0, 0x3e8

    .line 207
    .line 208
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    .line 210
    .line 211
    goto/16 :goto_4

    .line 212
    .line 213
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v0

    .line 216
    :try_start_2
    const-string p1, "DualDARComnService"

    .line 217
    .line 218
    const-string v2, "Binding Checker : Invalid agent... cancel scheduling"

    .line 219
    .line 220
    new-array v1, v1, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-static {p1, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    .line 229
    .line 230
    monitor-exit v0

    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :catchall_1
    move-exception p0

    .line 234
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    throw p0

    .line 236
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v0, "Not installed service "

    .line 246
    .line 247
    const-string v3, "DualDARComnService"

    .line 248
    .line 249
    const-string/jumbo v4, "handleAgentDied"

    .line 250
    .line 251
    .line 252
    new-array v5, v1, [Ljava/lang/Object;

    .line 253
    .line 254
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 258
    .line 259
    monitor-enter v3

    .line 260
    :try_start_3
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_8

    .line 267
    .line 268
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    check-cast v4, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 275
    .line 276
    invoke-virtual {v4}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 277
    .line 278
    .line 279
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :catchall_2
    move-exception p0

    .line 286
    goto :goto_5

    .line 287
    :cond_8
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 288
    :try_start_4
    const-string/jumbo v3, "package"

    .line 289
    .line 290
    .line 291
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    iget-object v4, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 300
    .line 301
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    iget v5, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 306
    .line 307
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_9

    .line 312
    .line 313
    const-string p0, "DualDARComnService"

    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    new-array v0, v1, [Ljava/lang/Object;

    .line 324
    .line 325
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :catch_1
    move-exception p0

    .line 330
    goto :goto_3

    .line 331
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    if-eqz p0, :cond_a

    .line 336
    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string/jumbo v0, "enableReconnectionFlag: "

    .line 340
    .line 341
    .line 342
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    new-array v0, v1, [Ljava/lang/Object;

    .line 353
    .line 354
    const-string v3, "KnoxService::ProxyAgentWrapper"

    .line 355
    .line 356
    invoke-static {v3, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_a
    const-string p0, "DualDARComnService"

    .line 363
    .line 364
    const-string p1, "ProxyAgentWrapper is NULL !"

    .line 365
    .line 366
    new-array v0, v1, [Ljava/lang/Object;

    .line 367
    .line 368
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 369
    .line 370
    .line 371
    goto :goto_4

    .line 372
    :goto_3
    const-string p1, "DualDARComnService"

    .line 373
    .line 374
    const-string/jumbo v0, "reconnectService remote exception"

    .line 375
    .line 376
    .line 377
    new-array v1, v1, [Ljava/lang/Object;

    .line 378
    .line 379
    invoke-static {p1, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 383
    .line 384
    .line 385
    :goto_4
    return-void

    .line 386
    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 387
    throw p0
.end method
