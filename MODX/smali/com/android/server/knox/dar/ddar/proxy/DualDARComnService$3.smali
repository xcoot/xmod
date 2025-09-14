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

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_7

    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq v0, v2, :cond_2

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eq v0, v2, :cond_0

    .line 13
    goto/16 :goto_4

    .line 15
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 19
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string p0, "Not installed service "

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v2, "handleAgentStarted : "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 49
    const-string v3, "DualDARComnService"

    .line 51
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :try_start_0
    const-string/jumbo v0, "package"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 67
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    iget v4, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 73
    invoke-interface {v0, v2, v4}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    new-array p1, v1, [Ljava/lang/Object;

    .line 89
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    goto/16 :goto_4

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

    .line 99
    goto/16 :goto_4

    .line 101
    :goto_0
    const-string/jumbo p1, "reconnectService remote exception"

    .line 104
    new-array v0, v1, [Ljava/lang/Object;

    .line 106
    invoke-static {v3, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    goto/16 :goto_4

    .line 114
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    check-cast p1, Ljava/lang/String;

    .line 118
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 120
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 122
    if-eqz p1, :cond_6

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const-string v0, "DualDARComnService"

    .line 136
    const-string v3, "Binding Checker : Check binding to "

    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    new-array v4, v1, [Ljava/lang/Object;

    .line 144
    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 149
    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->checkProxyAgentBound(Ljava/lang/String;)Z

    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 157
    monitor-enter v0

    .line 158
    :try_start_1
    const-string p1, "DualDARComnService"

    .line 160
    const-string v2, "Binding Checker : Found out bound agent"

    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    invoke-static {p1, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 172
    monitor-exit v0

    .line 173
    goto/16 :goto_4

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

    .line 180
    const-string v3, "Binding Checker : Maybe not bound yet"

    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    invoke-static {v0, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 189
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 197
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    :cond_5
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 202
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 205
    move-result-object p1

    .line 206
    const-wide/16 v0, 0x3e8

    .line 208
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    goto/16 :goto_4

    .line 213
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 215
    monitor-enter v0

    .line 216
    :try_start_2
    const-string p1, "DualDARComnService"

    .line 218
    const-string v2, "Binding Checker : Invalid agent... cancel scheduling"

    .line 220
    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    invoke-static {p1, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v0

    .line 231
    goto/16 :goto_4

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

    .line 238
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 240
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    const-string v0, "Not installed service "

    .line 247
    const-string v3, "DualDARComnService"

    .line 249
    const-string/jumbo v4, "handleAgentDied"

    .line 252
    new-array v5, v1, [Ljava/lang/Object;

    .line 254
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperLock:Ljava/lang/Object;

    .line 259
    monitor-enter v3

    .line 260
    :try_start_3
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 262
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_8

    .line 268
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 270
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    move-result-object v4

    .line 274
    check-cast v4, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 276
    invoke-virtual {v4}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 279
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentWrapperMap:Ljava/util/HashMap;

    .line 281
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 291
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 294
    move-result-object v3

    .line 295
    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 298
    move-result-object v3

    .line 299
    iget-object v4, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 301
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 304
    move-result-object v4

    .line 305
    iget v5, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 307
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_9

    .line 313
    const-string p0, "DualDARComnService"

    .line 315
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    move-result-object p1

    .line 323
    new-array v0, v1, [Ljava/lang/Object;

    .line 325
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 334
    move-result-object p0

    .line 335
    if-eqz p0, :cond_a

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    .line 339
    const-string/jumbo v0, "enableReconnectionFlag: "

    .line 342
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object p1

    .line 352
    new-array v0, v1, [Ljava/lang/Object;

    .line 354
    const-string v3, "KnoxService::ProxyAgentWrapper"

    .line 356
    invoke-static {v3, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 361
    goto :goto_4

    .line 362
    :cond_a
    const-string p0, "DualDARComnService"

    .line 364
    const-string p1, "ProxyAgentWrapper is NULL !"

    .line 366
    new-array v0, v1, [Ljava/lang/Object;

    .line 368
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 371
    goto :goto_4

    .line 372
    :goto_3
    const-string p1, "DualDARComnService"

    .line 374
    const-string/jumbo v0, "reconnectService remote exception"

    .line 377
    new-array v1, v1, [Ljava/lang/Object;

    .line 379
    invoke-static {p1, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

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
