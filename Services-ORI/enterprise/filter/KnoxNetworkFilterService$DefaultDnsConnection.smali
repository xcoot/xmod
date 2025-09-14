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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final declared-synchronized onServiceConnected$com$android$server$enterprise$filter$KnoxNetworkFilterService$DefaultTcpConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    .line 1
    const-string p1, "DefaultTcpConnection:onServiceConnected  for user "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 5
    .line 6
    .line 7
    const-string v1, "DefaultTcpConnection:onServiceConnected is reached "

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/Date;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 70
    .line 71
    if-eqz p2, :cond_0

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 81
    .line 82
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 83
    .line 84
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez p2, :cond_1

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    invoke-static {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 128
    .line 129
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const/16 v3, 0xa

    .line 135
    .line 136
    invoke-static {v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 141
    .line 142
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 143
    .line 144
    iget v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 145
    .line 146
    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    .line 147
    .line 148
    .line 149
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 151
    .line 152
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-interface {p1, p2, v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 165
    .line 166
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-interface {p1, p2, v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 183
    .line 184
    iget-object v7, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 185
    .line 186
    const-string/jumbo v8, "tcp"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v5, v8, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 196
    .line 197
    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    iget v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 207
    .line 208
    const/4 v6, 0x3

    .line 209
    if-ne v5, v6, :cond_6

    .line 210
    .line 211
    iget-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    .line 212
    .line 213
    const/4 v6, 0x1

    .line 214
    const/4 v7, 0x6

    .line 215
    if-eqz v5, :cond_3

    .line 216
    .line 217
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 222
    .line 223
    iget-object v8, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 224
    .line 225
    iget v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 226
    .line 227
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-static {v9, v5, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedTcpConn(IILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 240
    .line 241
    invoke-interface {v2, v5, v1, v7, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 242
    .line 243
    .line 244
    :cond_3
    iget-boolean v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    .line 245
    .line 246
    if-eqz v0, :cond_4

    .line 247
    .line 248
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 253
    .line 254
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 255
    .line 256
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {v2, v0, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6TcpConn(IILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 271
    .line 272
    invoke-interface {v0, v1, v3, v7, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 273
    .line 274
    .line 275
    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startHttpProxyServer()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 290
    .line 291
    invoke-interface {v1, v2, v0}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 295
    .line 296
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 297
    .line 298
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 299
    .line 300
    invoke-virtual {v1, p2, p1, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 301
    .line 302
    .line 303
    array-length p2, p1

    .line 304
    const/4 v1, 0x0

    .line 305
    :goto_1
    if-ge v1, p2, :cond_6

    .line 306
    .line 307
    aget-object v2, p1, v1

    .line 308
    .line 309
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 310
    .line 311
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 312
    .line 313
    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-static {v4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-lez v2, :cond_5

    .line 323
    .line 324
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 325
    .line 326
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    .line 333
    .line 334
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 335
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

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "DefaultUdpConnection:onBindingDied  for user "

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 10
    .line 11
    .line 12
    const-string v1, "DefaultUdpConnection:onBindingDied is reached "

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " "

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/Date;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 76
    .line 77
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
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

    .line 91
    .line 92
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 93
    .line 94
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 107
    .line 108
    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 111
    .line 112
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/content/ServiceConnection;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 130
    .line 131
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_1
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 143
    .line 144
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Landroid/content/Intent;

    .line 151
    .line 152
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 156
    .line 157
    .line 158
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.udp.DefaultUdpProxyService"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    new-instance v2, Landroid/os/UserHandle;

    .line 169
    .line 170
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 171
    .line 172
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 173
    .line 174
    .line 175
    const v3, 0x40000005    # 2.0000012f

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 187
    .line 188
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_2
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 199
    .line 200
    .line 201
    const-string/jumbo v0, "failed to bind udp process after onBinding died event"

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
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

    .line 212
    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 215
    .line 216
    .line 217
    const-string v1, "DefaultTcpConnection:onBindingDied is reached "

    .line 218
    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 232
    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string p1, " "

    .line 237
    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    new-instance p1, Ljava/util/Date;

    .line 242
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v2

    .line 247
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast v0, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 265
    .line 266
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 267
    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-eqz p1, :cond_3

    .line 277
    .line 278
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 279
    .line 280
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 281
    .line 282
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 283
    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const/4 v1, 0x0

    .line 289
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
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

    .line 296
    .line 297
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 298
    .line 299
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 300
    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_4

    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 312
    .line 313
    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 316
    .line 317
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 318
    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    check-cast p1, Landroid/content/ServiceConnection;

    .line 328
    .line 329
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 333
    .line 334
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 335
    .line 336
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 337
    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    :cond_4
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 346
    .line 347
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 348
    .line 349
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 350
    .line 351
    const/4 v2, 0x1

    .line 352
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 353
    .line 354
    .line 355
    new-instance v0, Landroid/content/Intent;

    .line 356
    .line 357
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 361
    .line 362
    .line 363
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.tcp.DefaultTcpProxyService"

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 370
    .line 371
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 372
    .line 373
    new-instance v2, Landroid/os/UserHandle;

    .line 374
    .line 375
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 376
    .line 377
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 378
    .line 379
    .line 380
    const v3, 0x40000005    # 2.0000012f

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_5

    .line 388
    .line 389
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 392
    .line 393
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 394
    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_5
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 404
    .line 405
    .line 406
    const-string/jumbo v0, "failed to bind tcp process after onBinding died event"

    .line 407
    .line 408
    .line 409
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    .line 411
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

    .line 417
    .line 418
    monitor-enter p0

    .line 419
    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 420
    .line 421
    .line 422
    const-string v1, "DefaultDnsConnection:onBindingDied is reached "

    .line 423
    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 430
    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 437
    .line 438
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string p1, " "

    .line 442
    .line 443
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    new-instance p1, Ljava/util/Date;

    .line 447
    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 449
    .line 450
    .line 451
    move-result-wide v2

    .line 452
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    check-cast v0, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 468
    .line 469
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 470
    .line 471
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 472
    .line 473
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    if-eqz p1, :cond_6

    .line 482
    .line 483
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 484
    .line 485
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 486
    .line 487
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 488
    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    const/4 v1, 0x0

    .line 494
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :catchall_2
    move-exception p1

    .line 499
    goto/16 :goto_8

    .line 500
    .line 501
    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 502
    .line 503
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 504
    .line 505
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 506
    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    if-eqz p1, :cond_7

    .line 516
    .line 517
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 518
    .line 519
    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 520
    .line 521
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 522
    .line 523
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 524
    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    check-cast p1, Landroid/content/ServiceConnection;

    .line 534
    .line 535
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 536
    .line 537
    .line 538
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 539
    .line 540
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 541
    .line 542
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 543
    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    :cond_7
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 552
    .line 553
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 554
    .line 555
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 556
    .line 557
    const/4 v2, 0x0

    .line 558
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 559
    .line 560
    .line 561
    new-instance v0, Landroid/content/Intent;

    .line 562
    .line 563
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 564
    .line 565
    .line 566
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 567
    .line 568
    .line 569
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.dns.DefaultDnsProxyService"

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    .line 574
    .line 575
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 576
    .line 577
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 578
    .line 579
    new-instance v2, Landroid/os/UserHandle;

    .line 580
    .line 581
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 582
    .line 583
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 584
    .line 585
    .line 586
    const v3, 0x40000005    # 2.0000012f

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_8

    .line 594
    .line 595
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 596
    .line 597
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 598
    .line 599
    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 600
    .line 601
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    goto :goto_7

    .line 609
    :cond_8
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 610
    .line 611
    .line 612
    const-string/jumbo v0, "failed to bind dns process after onBinding died event, clearing up the rules applied"

    .line 613
    .line 614
    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 619
    .line 620
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 621
    .line 622
    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleBindingDiedEvent(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 623
    .line 624
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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "DefaultUdpConnection:onServiceConnected  for user "

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 10
    .line 11
    .line 12
    const-string v1, "DefaultUdpConnection:onServiceConnected is reached "

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " "

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/Date;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 64
    .line 65
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 75
    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 88
    .line 89
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-nez p2, :cond_1

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    monitor-exit p0

    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const/4 v1, 0x2

    .line 130
    invoke-static {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 135
    .line 136
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const/16 v2, 0xa

    .line 142
    .line 143
    invoke-static {v2, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 148
    .line 149
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 150
    .line 151
    iget v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 152
    .line 153
    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    .line 154
    .line 155
    .line 156
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 158
    .line 159
    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-interface {p1, p2, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 172
    .line 173
    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-interface {p1, p2, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 190
    .line 191
    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 192
    .line 193
    const-string/jumbo v7, "udp"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v7, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 200
    .line 201
    .line 202
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 203
    .line 204
    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iget p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 214
    .line 215
    const/4 v4, 0x3

    .line 216
    if-ne p2, v4, :cond_4

    .line 217
    .line 218
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    .line 219
    .line 220
    if-eqz p2, :cond_3

    .line 221
    .line 222
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 227
    .line 228
    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 229
    .line 230
    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v5, p2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedUdpConn(IILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_3
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    .line 239
    .line 240
    if-eqz p2, :cond_4

    .line 241
    .line 242
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 247
    .line 248
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 249
    .line 250
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 251
    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v0, p1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6UdpConn(IILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 265
    .line 266
    const/16 v0, 0x11

    .line 267
    .line 268
    const/4 v1, 0x1

    .line 269
    invoke-interface {p1, p2, v2, v0, v1}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    .line 271
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

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_1
    const-string p1, "DefaultDnsConnection:onServiceConnected  for user "

    .line 281
    .line 282
    monitor-enter p0

    .line 283
    :try_start_4
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 284
    .line 285
    .line 286
    const-string v1, "DefaultDnsConnection:onServiceConnected is reached "

    .line 287
    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 294
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 301
    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string p1, " "

    .line 306
    .line 307
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    new-instance p1, Ljava/util/Date;

    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v2

    .line 316
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast v0, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 336
    .line 337
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 338
    .line 339
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 340
    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 349
    .line 350
    if-eqz p2, :cond_5

    .line 351
    .line 352
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 353
    .line 354
    .line 355
    goto :goto_3

    .line 356
    :catchall_1
    move-exception p1

    .line 357
    goto/16 :goto_5

    .line 358
    .line 359
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 360
    .line 361
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 362
    .line 363
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 364
    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 372
    if-nez p2, :cond_6

    .line 373
    .line 374
    monitor-exit p0

    .line 375
    goto :goto_4

    .line 376
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 377
    .line 378
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 387
    .line 388
    .line 389
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 390
    if-nez v0, :cond_7

    .line 391
    .line 392
    monitor-exit p0

    .line 393
    goto :goto_4

    .line 394
    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 395
    .line 396
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-interface {p1, p2, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 409
    .line 410
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-interface {p1, p2, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 427
    .line 428
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 429
    .line 430
    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 431
    .line 432
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 437
    .line 438
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 439
    .line 440
    const-string/jumbo v4, "dns"

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {v2, v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 450
    .line 451
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    iget p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 461
    .line 462
    const/4 v1, 0x3

    .line 463
    if-ne p2, v1, :cond_8

    .line 464
    .line 465
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    .line 466
    .line 467
    if-eqz p2, :cond_8

    .line 468
    .line 469
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 474
    .line 475
    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 476
    .line 477
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectDnsQuery(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 483
    .line 484
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

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "DefaultUdpConnection:onServiceDisconnected  for user "

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 10
    .line 11
    .line 12
    const-string v1, "DefaultUdpConnection:onServicedisconnected is reached "

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " "

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/Date;

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 76
    .line 77
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
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

    .line 91
    .line 92
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 93
    .line 94
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 105
    .line 106
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
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

    .line 119
    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 122
    .line 123
    .line 124
    const-string v1, "DefaultTcpConnection:onServicedisconnected is reached "

    .line 125
    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " "

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    new-instance p1, Ljava/util/Date;

    .line 149
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast v0, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 172
    .line 173
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 174
    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_1

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 188
    .line 189
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
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

    .line 203
    .line 204
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 205
    .line 206
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 215
    .line 216
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 217
    .line 218
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 229
    .line 230
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    .line 237
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

    .line 243
    .line 244
    monitor-enter p0

    .line 245
    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 246
    .line 247
    .line 248
    const-string v1, "DefaultDnsConnection:onServicedisconnected is reached "

    .line 249
    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 263
    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p1, " "

    .line 268
    .line 269
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    new-instance p1, Ljava/util/Date;

    .line 273
    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast v0, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 294
    .line 295
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 296
    .line 297
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 298
    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_2

    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 312
    .line 313
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 314
    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const/4 v1, 0x0

    .line 320
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
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

    .line 327
    .line 328
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 329
    .line 330
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 339
    .line 340
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 346
    .line 347
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 348
    .line 349
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    .line 350
    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 355
    .line 356
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
