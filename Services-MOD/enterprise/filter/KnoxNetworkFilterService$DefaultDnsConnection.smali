.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

.field public final userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 8
    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private final declared-synchronized onServiceConnected$com$android$server$enterprise$filter$KnoxNetworkFilterService$DefaultTcpConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    .line 1
    const-string p1, "DefaultTcpConnection:onServiceConnected  for user "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 7
    const-string v1, "DefaultTcpConnection:onServiceConnected is reached "

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 14
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " "

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance p1, Ljava/util/Date;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v2

    .line 37
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 58
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 60
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 71
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto/16 :goto_2

    .line 80
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 82
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 84
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 92
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez p2, :cond_1

    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 99
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 107
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 110
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-nez v0, :cond_2

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 117
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    const/4 v1, 0x2

    .line 123
    invoke-static {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 129
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    const/16 v3, 0xa

    .line 136
    invoke-static {v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 142
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 144
    iget v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 146
    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    .line 149
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 152
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 154
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 161
    invoke-interface {p1, p2, v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 166
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 168
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 175
    invoke-interface {p1, p2, v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 181
    move-result-object v6

    .line 182
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 184
    iget-object v7, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 186
    const-string/jumbo v8, "tcp"

    .line 189
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-static {v5, v8, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 195
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 197
    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 199
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 205
    move-result-object v5

    .line 206
    iget v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 208
    const/4 v6, 0x3

    .line 209
    if-ne v5, v6, :cond_6

    .line 211
    iget-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    .line 213
    const/4 v6, 0x1

    .line 214
    const/4 v7, 0x6

    .line 215
    if-eqz v5, :cond_3

    .line 217
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 220
    move-result v5

    .line 221
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 223
    iget-object v8, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 225
    iget v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 227
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-static {v9, v5, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedTcpConn(IILjava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 235
    invoke-virtual {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 238
    move-result-object v2

    .line 239
    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 241
    invoke-interface {v2, v5, v1, v7, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 244
    :cond_3
    iget-boolean v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    .line 246
    if-eqz v0, :cond_4

    .line 248
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    .line 251
    move-result v0

    .line 252
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 254
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 256
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    invoke-static {v2, v0, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6TcpConn(IILjava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 266
    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 269
    move-result-object v0

    .line 270
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 272
    invoke-interface {v0, v1, v3, v7, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 275
    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startHttpProxyServer()I

    .line 278
    move-result v0

    .line 279
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 282
    move-result-object p1

    .line 283
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 285
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 288
    move-result-object v1

    .line 289
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 291
    invoke-interface {v1, v2, v0}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V

    .line 294
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 296
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 298
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 300
    invoke-virtual {v1, p2, p1, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 303
    array-length p2, p1

    .line 304
    const/4 v1, 0x0

    .line 305
    :goto_1
    if-ge v1, p2, :cond_6

    .line 307
    aget-object v2, p1, v1

    .line 309
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 311
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 313
    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 315
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    invoke-static {v4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 321
    move-result v2

    .line 322
    if-lez v2, :cond_5

    .line 324
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 326
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 328
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 336
    goto :goto_1

    .line 337
    :catch_0
    :cond_6
    monitor-exit p0

    .line 338
    return-void

    .line 339
    :goto_2
    monitor-exit p0

    .line 340
    throw p1
.end method


# virtual methods
.method public final declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "DefaultUdpConnection:onBindingDied  for user "

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 12
    const-string v1, "DefaultUdpConnection:onBindingDied is reached "

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, " "

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance p1, Ljava/util/Date;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 59
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 61
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 75
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 77
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_2

    .line 90
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 92
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 94
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 108
    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 110
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 112
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/content/ServiceConnection;

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 127
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 129
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 131
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 142
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 144
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 146
    const/4 v2, 0x2

    .line 147
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 150
    new-instance v0, Landroid/content/Intent;

    .line 152
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 158
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.udp.DefaultUdpProxyService"

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 166
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 168
    new-instance v2, Landroid/os/UserHandle;

    .line 170
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 172
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 175
    const v3, 0x40000005    # 2.0000012f

    .line 178
    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 186
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 188
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    goto :goto_1

    .line 198
    :cond_2
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 201
    const-string/jumbo v0, "failed to bind udp process after onBinding died event"

    .line 204
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_1
    monitor-exit p0

    .line 208
    return-void

    .line 209
    :goto_2
    monitor-exit p0

    .line 210
    throw p1

    .line 211
    :pswitch_0
    const-string p1, "DefaultTcpConnection:onBindingDied  for user "

    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 217
    const-string v1, "DefaultTcpConnection:onBindingDied is reached "

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 224
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string p1, " "

    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance p1, Ljava/util/Date;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    move-result-wide v2

    .line 247
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 250
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p1

    .line 257
    check-cast v0, Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 264
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 266
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 275
    move-result p1

    .line 276
    if-eqz p1, :cond_3

    .line 278
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 280
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 282
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v0

    .line 288
    const/4 v1, 0x0

    .line 289
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    goto :goto_3

    .line 293
    :catchall_1
    move-exception p1

    .line 294
    goto :goto_5

    .line 295
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 297
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 299
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_4

    .line 311
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 313
    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 315
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 317
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-result-object p1

    .line 327
    check-cast p1, Landroid/content/ServiceConnection;

    .line 329
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 334
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 336
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_4
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 347
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 349
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 351
    const/4 v2, 0x1

    .line 352
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 355
    new-instance v0, Landroid/content/Intent;

    .line 357
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 363
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.tcp.DefaultTcpProxyService"

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 371
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 373
    new-instance v2, Landroid/os/UserHandle;

    .line 375
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 377
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 380
    const v3, 0x40000005    # 2.0000012f

    .line 383
    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 391
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 393
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    goto :goto_4

    .line 403
    :cond_5
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 406
    const-string/jumbo v0, "failed to bind tcp process after onBinding died event"

    .line 409
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    :goto_4
    monitor-exit p0

    .line 413
    return-void

    .line 414
    :goto_5
    monitor-exit p0

    .line 415
    throw p1

    .line 416
    :pswitch_1
    const-string p1, "DefaultDnsConnection:onBindingDied  for user "

    .line 418
    monitor-enter p0

    .line 419
    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 422
    const-string v1, "DefaultDnsConnection:onBindingDied is reached "

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 429
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 438
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string p1, " "

    .line 443
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    new-instance p1, Ljava/util/Date;

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 451
    move-result-wide v2

    .line 452
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object p1

    .line 462
    check-cast v0, Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 469
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 471
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 473
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 480
    move-result p1

    .line 481
    if-eqz p1, :cond_6

    .line 483
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 485
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 487
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    move-result-object v0

    .line 493
    const/4 v1, 0x0

    .line 494
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    goto :goto_6

    .line 498
    :catchall_2
    move-exception p1

    .line 499
    goto/16 :goto_8

    .line 501
    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 503
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 505
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 514
    move-result p1

    .line 515
    if-eqz p1, :cond_7

    .line 517
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 519
    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 521
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 523
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-result-object p1

    .line 533
    check-cast p1, Landroid/content/ServiceConnection;

    .line 535
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 538
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 540
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 542
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_7
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 553
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 555
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 557
    const/4 v2, 0x0

    .line 558
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 561
    new-instance v0, Landroid/content/Intent;

    .line 563
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 566
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 569
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.dns.DefaultDnsProxyService"

    .line 572
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 577
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 579
    new-instance v2, Landroid/os/UserHandle;

    .line 581
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 583
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 586
    const v3, 0x40000005    # 2.0000012f

    .line 589
    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_8

    .line 595
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 597
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 599
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 601
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    goto :goto_7

    .line 609
    :cond_8
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 612
    const-string/jumbo v0, "failed to bind dns process after onBinding died event, clearing up the rules applied"

    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 620
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 622
    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleBindingDiedEvent(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 625
    :goto_7
    monitor-exit p0

    .line 626
    return-void

    .line 627
    :goto_8
    monitor-exit p0

    .line 628
    throw p1

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string p1, "DefaultUdpConnection:onServiceConnected  for user "

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 12
    const-string v1, "DefaultUdpConnection:onServiceConnected is reached "

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, " "

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance p1, Ljava/util/Date;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 60
    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 63
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 65
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 76
    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto/16 :goto_2

    .line 85
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 87
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 89
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 97
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-nez p2, :cond_1

    .line 100
    monitor-exit p0

    .line 101
    goto/16 :goto_1

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 105
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 113
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 116
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-nez v0, :cond_2

    .line 119
    monitor-exit p0

    .line 120
    goto/16 :goto_1

    .line 122
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 124
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    const/4 v1, 0x2

    .line 130
    invoke-static {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 136
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    const/16 v2, 0xa

    .line 143
    invoke-static {v2, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 149
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 151
    iget v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 153
    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    .line 156
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 159
    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 161
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    invoke-interface {p1, p2, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 173
    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 175
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v5

    .line 182
    invoke-interface {p1, p2, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 188
    move-result-object v5

    .line 189
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 191
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 193
    const-string/jumbo v7, "udp"

    .line 196
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    invoke-static {v4, v7, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 202
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 204
    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 206
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 212
    move-result-object p2

    .line 213
    iget p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 215
    const/4 v4, 0x3

    .line 216
    if-ne p2, v4, :cond_4

    .line 218
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    .line 220
    if-eqz p2, :cond_3

    .line 222
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 225
    move-result p2

    .line 226
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 228
    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 230
    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 232
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-static {v5, p2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedUdpConn(IILjava/lang/String;)V

    .line 238
    :cond_3
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    .line 240
    if-eqz p2, :cond_4

    .line 242
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    .line 245
    move-result p1

    .line 246
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 248
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 250
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-static {v0, p1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6UdpConn(IILjava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 263
    move-result-object p1

    .line 264
    iget p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 266
    const/16 v0, 0x11

    .line 268
    const/4 v1, 0x1

    .line 269
    invoke-interface {p1, p2, v2, v0, v1}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    :catch_0
    :cond_4
    monitor-exit p0

    .line 273
    :goto_1
    return-void

    .line 274
    :goto_2
    monitor-exit p0

    .line 275
    throw p1

    .line 276
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->onServiceConnected$com$android$server$enterprise$filter$KnoxNetworkFilterService$DefaultTcpConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 279
    return-void

    .line 280
    :pswitch_1
    const-string p1, "DefaultDnsConnection:onServiceConnected  for user "

    .line 282
    monitor-enter p0

    .line 283
    :try_start_4
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 286
    const-string v1, "DefaultDnsConnection:onServiceConnected is reached "

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 293
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string p1, " "

    .line 307
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    new-instance p1, Ljava/util/Date;

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 315
    move-result-wide v2

    .line 316
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    check-cast v0, Ljava/util/ArrayList;

    .line 328
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 334
    move-result-object p1

    .line 335
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 337
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 339
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 350
    if-eqz p2, :cond_5

    .line 352
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 355
    goto :goto_3

    .line 356
    :catchall_1
    move-exception p1

    .line 357
    goto/16 :goto_5

    .line 359
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 361
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 363
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 371
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 372
    if-nez p2, :cond_6

    .line 374
    monitor-exit p0

    .line 375
    goto :goto_4

    .line 376
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 378
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 386
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 389
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 390
    if-nez v0, :cond_7

    .line 392
    monitor-exit p0

    .line 393
    goto :goto_4

    .line 394
    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 396
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    move-result-object v1

    .line 405
    invoke-interface {p1, p2, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 410
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    move-result-object v1

    .line 419
    invoke-interface {p1, p2, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 425
    move-result-object v1

    .line 426
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 428
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 430
    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 432
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 435
    move-result v2

    .line 436
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 438
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 440
    const-string/jumbo v4, "dns"

    .line 443
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    invoke-static {v2, v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 449
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 451
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 453
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 459
    move-result-object p2

    .line 460
    iget p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 462
    const/4 v1, 0x3

    .line 463
    if-ne p2, v1, :cond_8

    .line 465
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    .line 467
    if-eqz p2, :cond_8

    .line 469
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 472
    move-result p1

    .line 473
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 475
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 477
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 479
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectDnsQuery(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 485
    :catch_1
    :cond_8
    monitor-exit p0

    .line 486
    :goto_4
    return-void

    .line 487
    :goto_5
    monitor-exit p0

    .line 488
    throw p1

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "DefaultUdpConnection:onServiceDisconnected  for user "

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 12
    const-string v1, "DefaultUdpConnection:onServicedisconnected is reached "

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, " "

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance p1, Ljava/util/Date;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 59
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 61
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 75
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 77
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 92
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 94
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    .line 102
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 104
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 106
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit p0

    .line 117
    throw p1

    .line 118
    :pswitch_0
    const-string p1, "DefaultTcpConnection:onServiceDisconnected  for user "

    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 124
    const-string v1, "DefaultTcpConnection:onServicedisconnected is reached "

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 131
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string p1, " "

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance p1, Ljava/util/Date;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    move-result-wide v2

    .line 154
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    check-cast v0, Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 171
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 173
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 187
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 189
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v0

    .line 195
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    goto :goto_2

    .line 200
    :catchall_1
    move-exception p1

    .line 201
    goto :goto_3

    .line 202
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 204
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 206
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    .line 214
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 216
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 218
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    .line 226
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 228
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 230
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    monitor-exit p0

    .line 239
    return-void

    .line 240
    :goto_3
    monitor-exit p0

    .line 241
    throw p1

    .line 242
    :pswitch_1
    const-string p1, "DefaultDnsConnection:onServiceDisconnected  for user "

    .line 244
    monitor-enter p0

    .line 245
    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 248
    const-string v1, "DefaultDnsConnection:onServicedisconnected is reached "

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 255
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string p1, " "

    .line 269
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance p1, Ljava/util/Date;

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 277
    move-result-wide v2

    .line 278
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 281
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 288
    check-cast v0, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 295
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 297
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 311
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 313
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    move-result-object v0

    .line 319
    const/4 v1, 0x0

    .line 320
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    goto :goto_4

    .line 324
    :catchall_2
    move-exception p1

    .line 325
    goto :goto_5

    .line 326
    :cond_2
    :goto_4
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 328
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 330
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    .line 338
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 340
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 347
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 349
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 357
    monitor-exit p0

    .line 358
    return-void

    .line 359
    :goto_5
    monitor-exit p0

    .line 360
    throw p1

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
