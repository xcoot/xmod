.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;
.super Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final DBG:Z


# instance fields
.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultDnsConnectionList:Ljava/util/HashMap;

.field public final mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

.field public final mDefaultTcpConnectionList:Ljava/util/HashMap;

.field public final mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

.field public final mDefaultUdpConnectionList:Ljava/util/HashMap;

.field public final mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

.field public mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public final mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

.field public final mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

.field public final mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

.field public final mLocalProxyStatus:Ljava/util/List;

.field public final mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

.field public mNetdService:Landroid/net/INetd;

.field public final mNetworkCallbackList:Ljava/util/HashMap;

.field public mNwFilterProxyAppId:I

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;


# direct methods
.method public static -$$Nest$mhandleActionBootComplete(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 12

    .line 1
    const-string/jumbo v0, "sending broadcast to authorized package "

    .line 4
    const-string/jumbo v1, "sending broadcast to authorized package "

    .line 7
    const-string/jumbo v2, "boot complete event is triggered for authorized user "

    .line 10
    const-string/jumbo v3, "sending register broadcast to registered package "

    .line 13
    const-string/jumbo v4, "sending register broadcast to registered package "

    .line 16
    const-string/jumbo v5, "boot complete event is triggered for registered user "

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 22
    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_1

    .line 28
    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 48
    const-string/jumbo v6, "com.samsung.android.knox.app.networkfilter"

    .line 51
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {p1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 57
    move-result v5

    .line 58
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 61
    move-result v5

    .line 62
    iput v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 64
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 66
    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    .line 69
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto/16 :goto_3

    .line 77
    :catch_0
    if-eqz v11, :cond_0

    .line 79
    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, " userId "

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, " failed after boot complete"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, -0x8

    .line 112
    const/4 v10, 0x2

    .line 113
    move-object v6, p0

    .line 114
    move v7, p1

    .line 115
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    monitor-exit p0

    .line 119
    goto/16 :goto_2

    .line 121
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 123
    :try_start_3
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, " userId "

    .line 136
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, " success after boot complete"

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v8, 0x0

    .line 155
    const/4 v9, 0x0

    .line 156
    const/4 v10, 0x2

    .line 157
    move-object v6, p0

    .line 158
    move v7, p1

    .line 159
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 164
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_2

    .line 170
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 190
    const-string/jumbo v3, "com.samsung.android.knox.app.networkfilter"

    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {p1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 199
    move-result v2

    .line 200
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 203
    move-result v2

    .line 204
    iput v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 206
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 208
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    .line 211
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    if-eqz v8, :cond_2

    .line 217
    :try_start_5
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, " userId "

    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, " success after boot complete"

    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v5, 0x6

    .line 249
    const/4 v6, 0x0

    .line 250
    const/4 v7, 0x2

    .line 251
    move-object v3, p0

    .line 252
    move v4, p1

    .line 253
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    .line 256
    goto :goto_1

    .line 257
    :catch_1
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v0, " userId "

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v0, " failed after boot complete"

    .line 278
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v5, 0x6

    .line 289
    const/4 v6, -0x8

    .line 290
    const/4 v7, 0x2

    .line 291
    move-object v3, p0

    .line 292
    move v4, p1

    .line 293
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    monitor-exit p0

    .line 297
    goto :goto_2

    .line 298
    :cond_2
    :goto_1
    monitor-exit p0

    .line 299
    :goto_2
    return-void

    .line 300
    :goto_3
    monitor-exit p0

    .line 301
    throw p1
.end method

.method public static -$$Nest$mhandleActionClearData(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged due to clear-data for caller "

    .line 3
    const-string/jumbo v1, "clear data action is triggered for authorized package "

    .line 6
    const-string/jumbo v2, "sending register broadcast to registered package "

    .line 9
    const-string/jumbo v3, "clear data action is triggered for registered package "

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    const-string v4, "android.intent.extra.UID"

    .line 15
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v4

    .line 23
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 25
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 31
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 42
    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 54
    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, " with uid "

    .line 67
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    .line 84
    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, " userId "

    .line 97
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, " success after clear data event"

    .line 105
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, v4, v3, v3, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 123
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 140
    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 144
    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_1

    .line 152
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, " with uid "

    .line 165
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 180
    const-string v5, "KNOX_ZT"

    .line 182
    const-string v6, "ZTNA_USAGE"

    .line 184
    const/4 v7, 0x1

    .line 185
    invoke-direct {v1, v5, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    const-string v5, "apiN"

    .line 190
    const-string/jumbo v6, "unregisterNetworkFilter"

    .line 193
    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v5, "pkgN"

    .line 199
    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v5, "eInfo"

    .line 205
    const-string v6, "202"

    .line 207
    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 213
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, " "

    .line 226
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 242
    invoke-virtual {p0, p1, v2, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_1
    monitor-exit p0

    .line 246
    return-void

    .line 247
    :goto_1
    monitor-exit p0

    .line 248
    throw p1
.end method

.method public static -$$Nest$mhandleActionLockBootCompleted(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 13

    .line 1
    const-string/jumbo v0, "sending broadcast to authorized package "

    .line 4
    const-string/jumbo v1, "sending broadcast to authorized package "

    .line 7
    const-string/jumbo v2, "lock boot complete event is triggered for authorized user "

    .line 10
    const-string/jumbo v3, "sending register broadcast to registered package "

    .line 13
    const-string/jumbo v4, "sending register broadcast to registered package "

    .line 16
    const-string/jumbo v5, "lock boot complete event is triggered for registered user "

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 22
    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_1

    .line 28
    const-string/jumbo v7, "knoxNwFilter-KnoxNetworkFilterService"

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 48
    const-string/jumbo v7, "com.samsung.android.knox.app.networkfilter"

    .line 51
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {p1, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 57
    move-result v5

    .line 58
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 61
    move-result v5

    .line 62
    iput v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 64
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 66
    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    .line 69
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto/16 :goto_3

    .line 77
    :catch_0
    if-eqz v12, :cond_0

    .line 79
    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, " userId "

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, " failed after lock boot complete"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v10, -0x8

    .line 112
    const/4 v11, 0x1

    .line 113
    move-object v7, p0

    .line 114
    move v8, p1

    .line 115
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    monitor-exit p0

    .line 119
    goto/16 :goto_2

    .line 121
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 123
    :try_start_3
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, " userId "

    .line 136
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, " success after lock boot complete"

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v9, 0x0

    .line 155
    const/4 v10, 0x0

    .line 156
    const/4 v11, 0x1

    .line 157
    move-object v7, p0

    .line 158
    move v8, p1

    .line 159
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 164
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_3

    .line 170
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 190
    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {p1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 199
    move-result v2

    .line 200
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 203
    move-result v2

    .line 204
    iput v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 206
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 208
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    .line 211
    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    goto :goto_1

    .line 216
    :catch_1
    if-eqz v12, :cond_2

    .line 218
    :try_start_5
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, " userId "

    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, " failed after lock boot complete"

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v9, 0x6

    .line 250
    const/4 v10, -0x8

    .line 251
    const/4 v11, 0x1

    .line 252
    move-object v7, p0

    .line 253
    move v8, p1

    .line 254
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    monitor-exit p0

    .line 258
    goto :goto_2

    .line 259
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 261
    :try_start_6
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, " userId "

    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, " success after lock boot complete"

    .line 282
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v0

    .line 289
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v9, 0x6

    .line 293
    const/4 v10, 0x0

    .line 294
    const/4 v11, 0x1

    .line 295
    move-object v7, p0

    .line 296
    move v8, p1

    .line 297
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    .line 300
    :cond_3
    if-nez v6, :cond_4

    .line 302
    if-eqz v3, :cond_5

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createIpTableChains(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 312
    :cond_5
    monitor-exit p0

    .line 313
    :goto_2
    return-void

    .line 314
    :goto_3
    monitor-exit p0

    .line 315
    throw p1
.end method

.method public static -$$Nest$mhandleActionPackageAdded(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string/jumbo v2, "package"

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "uid"

    .line 16
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 19
    move-result v9

    .line 20
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    move-result v10

    .line 24
    const-string/jumbo v3, "new_install_or_update"

    .line 27
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 33
    invoke-virtual {v3, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    .line 36
    move-result v3

    .line 37
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 39
    invoke-virtual {v4, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    .line 42
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-nez v3, :cond_0

    .line 45
    if-nez v4, :cond_0

    .line 47
    monitor-exit p0

    .line 48
    goto/16 :goto_7

    .line 50
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 52
    invoke-virtual {v3, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVersionName(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v11

    .line 56
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 58
    invoke-virtual {v3, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v12

    .line 62
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 64
    invoke-virtual {v3, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVersionCode(ILjava/lang/String;)I

    .line 67
    move-result v13

    .line 68
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 70
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v4

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 81
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 83
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    move-object v15, v4

    .line 92
    check-cast v15, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 94
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 96
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 104
    move-object/from16 v16, v4

    .line 106
    check-cast v16, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    if-eqz v3, :cond_1

    .line 110
    move-object v4, v2

    .line 111
    move v5, v9

    .line 112
    move-object v6, v12

    .line 113
    move-object v7, v11

    .line 114
    move v8, v13

    .line 115
    :try_start_2
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto/16 :goto_8

    .line 122
    :catch_0
    :cond_1
    :goto_0
    if-eqz v15, :cond_2

    .line 124
    move-object v3, v15

    .line 125
    move-object v4, v2

    .line 126
    move v5, v9

    .line 127
    move-object v6, v12

    .line 128
    move-object v7, v11

    .line 129
    move v8, v13

    .line 130
    :try_start_3
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 133
    invoke-interface {v15}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 136
    move-result-object v14
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :catch_1
    :cond_2
    if-eqz v16, :cond_3

    .line 139
    move-object/from16 v3, v16

    .line 141
    move-object v4, v2

    .line 142
    move v5, v9

    .line 143
    move-object v6, v12

    .line 144
    move-object v7, v11

    .line 145
    move v8, v13

    .line 146
    :try_start_4
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    :catch_2
    :cond_3
    :try_start_5
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 157
    move-result-wide v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    const/4 v5, 0x1

    .line 159
    const/4 v6, 0x0

    .line 160
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 163
    move-result-object v7

    .line 164
    const-wide/16 v11, 0x4

    .line 166
    invoke-interface {v7, v2, v11, v12, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 169
    move-result-object v7

    .line 170
    if-eqz v7, :cond_5

    .line 172
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 174
    if-eqz v7, :cond_5

    .line 176
    array-length v8, v7

    .line 177
    move v11, v6

    .line 178
    :goto_1
    if-ge v11, v8, :cond_5

    .line 180
    aget-object v12, v7, v11

    .line 182
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 184
    if-eqz v12, :cond_4

    .line 186
    const-string v13, "android.permission.BIND_VPN_SERVICE"

    .line 188
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 191
    move-result v12
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 192
    if-eqz v12, :cond_4

    .line 194
    move v7, v5

    .line 195
    goto :goto_2

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    goto :goto_3

    .line 198
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 200
    goto :goto_1

    .line 201
    :cond_5
    move v7, v6

    .line 202
    :goto_2
    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    goto :goto_4

    .line 206
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    throw v0

    .line 210
    :catch_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    move v7, v6

    .line 214
    :goto_4
    if-eqz v7, :cond_7

    .line 216
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    const-string/jumbo v7, "vpn client with package name "

    .line 227
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v7, " and uid "

    .line 235
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v7, " is installed"

    .line 243
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v4

    .line 250
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 255
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-static {v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 261
    move-result-object v3

    .line 262
    if-eqz v3, :cond_7

    .line 264
    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 267
    move-result-object v3

    .line 268
    if-eqz v3, :cond_7

    .line 270
    if-eqz v14, :cond_7

    .line 272
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 275
    move-result-object v4

    .line 276
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 279
    move-result v4

    .line 280
    if-nez v4, :cond_6

    .line 282
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 284
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v1, v9, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    .line 294
    goto :goto_5

    .line 295
    :cond_6
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    .line 300
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    const-string/jumbo v7, "ignore adding the browser package "

    .line 306
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v7, " to vpn list"

    .line 314
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_7
    :goto_5
    if-nez v0, :cond_8

    .line 326
    if-eqz v14, :cond_8

    .line 328
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 331
    move-result-object v0

    .line 332
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 335
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 336
    if-eqz v0, :cond_8

    .line 338
    :try_start_8
    invoke-interface {v15}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    .line 341
    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 342
    goto :goto_6

    .line 343
    :catch_4
    const/4 v0, -0x1

    .line 344
    :goto_6
    :try_start_9
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 346
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    invoke-static {v9, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V

    .line 352
    :cond_8
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 354
    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    .line 357
    move-result-object v0

    .line 358
    if-eqz v0, :cond_a

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 363
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 364
    if-nez v0, :cond_9

    .line 366
    monitor-exit p0

    .line 367
    goto :goto_7

    .line 368
    :cond_9
    :try_start_a
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 370
    invoke-virtual {v0, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    .line 373
    move-result-object v0

    .line 374
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 376
    invoke-virtual {v3, v10, v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z

    .line 379
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 380
    if-eqz v0, :cond_a

    .line 382
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 385
    const-wide/16 v3, 0xbb8

    .line 387
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 390
    :catch_5
    :try_start_c
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 392
    invoke-virtual {v0, v9, v2, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 395
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    const-string/jumbo v4, "sending register broadcast to package "

    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v4, " userId "

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v4, " success after install"

    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v3

    .line 434
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v1, v10, v6, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    .line 440
    :cond_a
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 442
    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    .line 445
    move-result-object v0

    .line 446
    if-eqz v0, :cond_c

    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 451
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 452
    if-nez v0, :cond_b

    .line 454
    monitor-exit p0

    .line 455
    goto :goto_7

    .line 456
    :cond_b
    :try_start_d
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 458
    invoke-virtual {v0, v9, v2, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 461
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 466
    :cond_c
    monitor-exit p0

    .line 467
    :goto_7
    return-void

    .line 468
    :goto_8
    monitor-exit p0

    .line 469
    throw v0
.end method

.method public static -$$Nest$mhandleActionPackageRemoved(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string v2, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged due to uninstall for caller "

    .line 7
    const-string v3, "Authorized package getting uninstalled is "

    .line 9
    const-string v4, "Registered package getting uninstalled is "

    .line 11
    const-string/jumbo v5, "vpn client with package name "

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    const-string/jumbo v6, "package"

    .line 18
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    const-string/jumbo v7, "uid"

    .line 25
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 28
    move-result v13

    .line 29
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v14

    .line 33
    const-string/jumbo v7, "new_install_or_update"

    .line 36
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 42
    invoke-virtual {v7, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    .line 45
    move-result v7

    .line 46
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 48
    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    .line 51
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v7, :cond_0

    .line 54
    if-nez v8, :cond_0

    .line 56
    monitor-exit p0

    .line 57
    goto/16 :goto_4

    .line 59
    :cond_0
    :try_start_1
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 61
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v8

    .line 65
    const/4 v15, 0x0

    .line 66
    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 72
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 74
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v8

    .line 82
    move-object/from16 v16, v8

    .line 84
    check-cast v16, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 86
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 88
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v8

    .line 96
    move-object/from16 v17, v8

    .line 98
    check-cast v17, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v7, :cond_1

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v9, -0x1

    .line 105
    const/4 v10, 0x0

    .line 106
    move-object v8, v6

    .line 107
    :try_start_2
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto/16 :goto_5

    .line 114
    :catch_0
    :cond_1
    :goto_0
    if-eqz v16, :cond_2

    .line 116
    const/4 v11, 0x0

    .line 117
    const/4 v12, 0x0

    .line 118
    const/4 v9, -0x1

    .line 119
    const/4 v10, 0x0

    .line 120
    move-object/from16 v7, v16

    .line 122
    move-object v8, v6

    .line 123
    :try_start_3
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :catch_1
    :cond_2
    if-eqz v17, :cond_3

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v12, 0x0

    .line 130
    const/4 v9, -0x1

    .line 131
    const/4 v10, 0x0

    .line 132
    move-object/from16 v7, v17

    .line 134
    move-object v8, v6

    .line 135
    :try_start_4
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :catch_2
    :cond_3
    :try_start_5
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 140
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-static {v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    if-eqz v7, :cond_4

    .line 149
    invoke-static {v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 152
    move-result-object v7

    .line 153
    if-eqz v7, :cond_4

    .line 155
    iget-object v8, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 157
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_4

    .line 167
    iget-object v7, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 169
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 176
    const-string/jumbo v7, "knoxNwFilter-KnoxNetworkFilterService"

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v5, " and uid "

    .line 189
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v5, " is uninstalled"

    .line 197
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v5

    .line 204
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v1, v13, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    :cond_4
    if-nez v0, :cond_5

    .line 212
    :try_start_6
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 215
    move-result-object v15
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    :catch_3
    if-eqz v15, :cond_5

    .line 218
    :try_start_7
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 221
    move-result-object v5

    .line 222
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 225
    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    if-eqz v5, :cond_5

    .line 228
    :try_start_8
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    .line 231
    move-result v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 232
    goto :goto_1

    .line 233
    :catch_4
    const/4 v5, -0x1

    .line 234
    :goto_1
    :try_start_9
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 236
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    invoke-static {v13, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeTcpRedirectRulesForCaptivePortal(II)V

    .line 242
    :cond_5
    iget-object v5, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 244
    invoke-virtual {v5, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    .line 247
    move-result-object v5

    .line 248
    const/4 v7, 0x0

    .line 249
    const/4 v8, 0x1

    .line 250
    if-eqz v5, :cond_6

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_6

    .line 258
    move v5, v8

    .line 259
    goto :goto_2

    .line 260
    :cond_6
    move v5, v7

    .line 261
    :goto_2
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 263
    invoke-virtual {v9, v13, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    .line 266
    move-result v9

    .line 267
    if-nez v9, :cond_7

    .line 269
    if-eqz v5, :cond_9

    .line 271
    :cond_7
    if-nez v0, :cond_9

    .line 273
    if-eqz v5, :cond_8

    .line 275
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v3, " "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v2

    .line 298
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v1, v13, v6, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    .line 304
    goto :goto_3

    .line 305
    :cond_8
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v3, " "

    .line 318
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v3

    .line 328
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 333
    const-string v3, "KNOX_ZT"

    .line 335
    const-string v4, "ZTNA_USAGE"

    .line 337
    invoke-direct {v0, v3, v8, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    const-string v3, "apiN"

    .line 342
    const-string/jumbo v4, "unregisterNetworkFilter"

    .line 345
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v3, "pkgN"

    .line 351
    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v3, "eInfo"

    .line 357
    const-string v4, "201"

    .line 359
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v14}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 365
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v2, " "

    .line 378
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v2

    .line 388
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 394
    invoke-virtual {v1, v13, v6, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 397
    :cond_9
    :goto_3
    monitor-exit p0

    .line 398
    :goto_4
    return-void

    .line 399
    :goto_5
    monitor-exit p0

    .line 400
    throw v0
.end method

.method public static -$$Nest$mhandleBindingDiedEvent(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 13

    .line 1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    .line 39
    invoke-static {p1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 42
    move-result v5

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    move-result-wide v6

    .line 47
    const/4 v8, 0x0

    .line 48
    const/16 v9, 0xa

    .line 50
    const/4 v10, 0x2

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 54
    move-result-object v11

    .line 55
    const/4 v12, 0x6

    .line 56
    invoke-interface {v11, p1, v10, v12, v8}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 62
    move-result-object v11

    .line 63
    invoke-interface {v11, p1, v9, v12, v8}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 69
    move-result-object v11

    .line 70
    const/16 v12, 0x11

    .line 72
    invoke-interface {v11, p1, v9, v12, v8}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 78
    move-result-object v11

    .line 79
    invoke-interface {v11, p1}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catch_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw p0

    .line 91
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    .line 94
    const/4 v6, -0x1

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 98
    move-result-object v7

    .line 99
    invoke-interface {v7, p1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 102
    move-result v7

    .line 103
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 109
    move-result-object v7

    .line 110
    invoke-interface {v7, p1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v7, p1, v6}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 123
    move-result-object v7

    .line 124
    invoke-interface {v7, v5}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    goto :goto_1

    .line 128
    :catch_1
    const-string/jumbo v7, "handleBindingDiedEvent:error occured while communicating to remote oemnetd service"

    .line 131
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 136
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    .line 142
    sget-object v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 144
    aget-object v7, v7, v8

    .line 146
    iget-object v11, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 148
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-static {p1, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 154
    move-result v7

    .line 155
    if-eq v7, v6, :cond_0

    .line 157
    invoke-virtual {p0, v7, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 160
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 163
    if-nez p1, :cond_1

    .line 165
    const/4 v2, 0x1

    .line 166
    const/16 v7, 0x270f

    .line 168
    invoke-virtual {p0, v2, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 171
    :cond_1
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 174
    move-result-object v2

    .line 175
    if-eqz v2, :cond_2

    .line 177
    iget-object v7, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 179
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v7

    .line 183
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_2

    .line 189
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v11

    .line 193
    check-cast v11, Ljava/lang/Integer;

    .line 195
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 198
    move-result v11

    .line 199
    invoke-virtual {p0, v11, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 202
    goto :goto_2

    .line 203
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 205
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedDOTBlockRules(I)V

    .line 211
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 213
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    .line 219
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 221
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    .line 227
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 229
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    .line 235
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 237
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-static {p1, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 243
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 245
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    .line 251
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 253
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectV6DnsQueryRules(I)V

    .line 259
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 261
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    .line 267
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 269
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    invoke-static {p1, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 275
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 277
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V

    .line 283
    const/4 v7, 0x0

    .line 284
    if-eqz v2, :cond_3

    .line 286
    :try_start_2
    iget-object v9, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    .line 288
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    .line 291
    move-result v9

    .line 292
    new-array v7, v9, [Ljava/lang/String;

    .line 294
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    .line 296
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    move-result-object v2

    .line 300
    check-cast v2, [Ljava/lang/String;

    .line 302
    move-object v7, v2

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 306
    move-result-object v2

    .line 307
    invoke-interface {v2, p1, v6}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    goto :goto_3

    .line 311
    :catch_2
    const-string/jumbo v2, "handleBindingDiedEvent:tcp:http:error occured remote service null"

    .line 314
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    goto :goto_3

    .line 318
    :catch_3
    const-string/jumbo v2, "handleBindingDiedEvent:tcp:http:error occured while communicating to remote service"

    .line 321
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_3
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 326
    invoke-virtual {v0, v1, v7, v8, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 329
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V

    .line 337
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 339
    invoke-virtual {v0, v5, v4, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 342
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 349
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 355
    move-result-object v0

    .line 356
    if-eqz v0, :cond_4

    .line 358
    const/4 v1, 0x5

    .line 359
    iput v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 361
    :cond_4
    const/16 v0, -0xa

    .line 363
    invoke-virtual {p0, p1, v10, v0, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    .line 369
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 376
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAdminIdForUser(I)I

    .line 379
    move-result v0

    .line 380
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p0, p1, v10, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendEMMStatusIntent(IILjava/lang/String;)V

    .line 392
    return-void
.end method

.method public static -$$Nest$mhandleRegisterOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "sending register broadcast to package "

    .line 4
    const-string/jumbo v1, "sending register broadcast to package "

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string/jumbo v2, "userId"

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 14
    move-result v2

    .line 15
    const-string/jumbo v3, "package"

    .line 18
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 30
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 v4, 0x0

    .line 32
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->initializeModules()V

    .line 38
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createIpTableChains(I)V

    .line 46
    const/4 v0, -0x1

    .line 47
    if-eq v3, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 51
    const/4 v5, 0x1

    .line 52
    invoke-virtual {v0, v3, p1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    :goto_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, " userId "

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " success during register process"

    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0, v2, v4, v4, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    monitor-exit p0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    :try_start_3
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, " userId "

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, " failed during register process"

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, -0x8

    .line 131
    invoke-virtual {p0, v2, v4, v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    monitor-exit p0

    .line 135
    :goto_1
    return-void

    .line 136
    :goto_2
    monitor-exit p0

    .line 137
    throw p1
.end method

.method public static -$$Nest$mhandleStartFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string/jumbo v2, "handleStartFilteringOperation:tcp:http:error occured while communicating to remote service "

    .line 8
    const-string/jumbo v3, "handleStartFilteringOperation:tcp:http:error occured remote service null"

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    const-string/jumbo v4, "uid"

    .line 15
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v4

    .line 19
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v5

    .line 23
    const-string/jumbo v6, "profileName"

    .line 26
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 32
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 39
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 41
    const-string/jumbo v8, "com.samsung.android.knox.app.networkfilter"

    .line 44
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 50
    move-result v7

    .line 51
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 53
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const/4 v8, 0x2

    .line 57
    invoke-static {v8, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v9

    .line 61
    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 63
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    const/16 v10, 0xa

    .line 68
    invoke-static {v10, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v11

    .line 72
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 74
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 83
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-nez v12, :cond_0

    .line 86
    monitor-exit p0

    .line 87
    goto/16 :goto_a

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->setupNetworkDns(I)I

    .line 92
    move-result v13

    .line 93
    const/4 v14, 0x1

    .line 94
    const/4 v15, -0x1

    .line 95
    const/4 v10, -0x8

    .line 96
    if-ne v13, v15, :cond_1

    .line 98
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 101
    const-string/jumbo v2, "handleStartFilteringOperation:dns:invalid netId returned"

    .line 104
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v1, v5, v14, v10, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit p0

    .line 111
    goto/16 :goto_a

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto/16 :goto_b

    .line 116
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 119
    move-result-object v8

    .line 120
    invoke-interface {v8, v5, v13}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 126
    move-result-object v8

    .line 127
    invoke-interface {v8, v5}, Lcom/android/internal/net/IOemNetd;->addUserToNwFilterRange(I)V

    .line 130
    if-eq v7, v15, :cond_2

    .line 132
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 134
    const-string/jumbo v13, "com.samsung.android.knox.app.networkfilter"

    .line 137
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-static {v5, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_2

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 149
    move-result-object v8

    .line 150
    invoke-interface {v8, v7}, Lcom/android/internal/net/IOemNetd;->setKnoxNwFilterProxyApp(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 155
    const/4 v13, 0x0

    .line 156
    aget-object v8, v8, v13

    .line 158
    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 160
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 166
    move-result v8

    .line 167
    if-eq v8, v15, :cond_3

    .line 169
    invoke-virtual {v1, v8, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    .line 172
    :cond_3
    invoke-virtual {v1, v4, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    .line 175
    if-nez v5, :cond_4

    .line 177
    const/16 v8, 0x270f

    .line 179
    invoke-virtual {v1, v14, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    .line 182
    :cond_4
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->blockAppGeneratedDOT(I)V

    .line 190
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v13

    .line 196
    const/4 v15, 0x0

    .line 197
    invoke-virtual {v8, v13, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v8

    .line 201
    check-cast v8, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 203
    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {v13, v10, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-result-object v10

    .line 213
    check-cast v10, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 215
    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v14

    .line 221
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-result-object v13

    .line 225
    check-cast v13, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 227
    iget-boolean v14, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    if-eqz v14, :cond_5

    .line 231
    :try_start_4
    invoke-interface {v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 234
    move-result v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    :try_start_5
    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 237
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectDnsQuery(II)V

    .line 243
    goto :goto_0

    .line 244
    :catch_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 247
    const-string/jumbo v2, "handleStartFilteringOperation:dns:error occured remote service null"

    .line 250
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x1

    .line 254
    const/4 v3, -0x8

    .line 255
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    monitor-exit p0

    .line 259
    goto/16 :goto_a

    .line 261
    :catch_1
    :try_start_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 264
    const-string/jumbo v2, "handleStartFilteringOperation:dns:error occured while communicating to remote service"

    .line 267
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x1

    .line 271
    const/4 v3, -0x8

    .line 272
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 275
    monitor-exit p0

    .line 276
    goto/16 :goto_a

    .line 278
    :cond_5
    :goto_0
    :try_start_7
    iget-boolean v8, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    const/4 v14, 0x6

    .line 281
    if-eqz v8, :cond_6

    .line 283
    :try_start_8
    invoke-interface {v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 286
    move-result v8
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 287
    :try_start_9
    iget-object v15, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 289
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    invoke-static {v5, v8, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedTcpConn(IILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 295
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 298
    move-result-object v8
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 299
    move-object/from16 v16, v2

    .line 301
    const/4 v2, 0x1

    .line 302
    const/4 v15, 0x2

    .line 303
    :try_start_b
    invoke-interface {v8, v5, v15, v14, v2}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 306
    goto :goto_1

    .line 307
    :catch_2
    :try_start_c
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 310
    const-string/jumbo v2, "handleStartFilteringOperation:tcp:error occured remote service null"

    .line 313
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, 0x1

    .line 317
    const/4 v3, -0x8

    .line 318
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 321
    monitor-exit p0

    .line 322
    goto/16 :goto_a

    .line 324
    :catch_3
    :try_start_d
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 327
    const-string/jumbo v2, "handleStartFilteringOperation:tcp:error occured while communicating to remote service"

    .line 330
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v2, 0x1

    .line 334
    const/4 v3, -0x8

    .line 335
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 338
    monitor-exit p0

    .line 339
    goto/16 :goto_a

    .line 341
    :catch_4
    :cond_6
    move-object/from16 v16, v2

    .line 343
    :catch_5
    :goto_1
    :try_start_e
    iget-boolean v2, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 345
    if-eqz v2, :cond_7

    .line 347
    :try_start_f
    invoke-interface {v13}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    .line 350
    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 351
    :try_start_10
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 353
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    const/4 v8, 0x2

    .line 357
    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->exemptUdpPacketFromNwFilterRange(II)V

    .line 360
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 362
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    invoke-static {v5, v2, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedUdpConn(IILjava/lang/String;)V

    .line 368
    goto :goto_2

    .line 369
    :catch_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 372
    const-string/jumbo v2, "handleStartFilteringOperation:udp:error occured remote service null"

    .line 375
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v2, 0x1

    .line 379
    const/4 v3, -0x8

    .line 380
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 383
    monitor-exit p0

    .line 384
    goto/16 :goto_a

    .line 386
    :catch_7
    :try_start_11
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 389
    const-string/jumbo v2, "handleStartFilteringOperation:udp:error occured while communicating to remote service"

    .line 392
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v2, 0x1

    .line 396
    const/4 v3, -0x8

    .line 397
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 400
    monitor-exit p0

    .line 401
    goto/16 :goto_a

    .line 403
    :cond_7
    :goto_2
    :try_start_12
    iget-boolean v2, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 405
    if-eqz v2, :cond_8

    .line 407
    :try_start_13
    invoke-interface {v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    .line 410
    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 411
    :try_start_14
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 413
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    invoke-static {v5, v2, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6TcpConn(IILjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 419
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 422
    move-result-object v2

    .line 423
    const/16 v8, 0xa

    .line 425
    const/4 v9, 0x1

    .line 426
    invoke-interface {v2, v5, v8, v14, v9}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 429
    goto :goto_3

    .line 430
    :catch_8
    :try_start_16
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 433
    const-string/jumbo v2, "handleStartFilteringOperation:tcp:v6:error occured remote service null"

    .line 436
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v2, 0x1

    .line 440
    const/4 v3, -0x8

    .line 441
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 444
    monitor-exit p0

    .line 445
    goto/16 :goto_a

    .line 447
    :catch_9
    :try_start_17
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 450
    const-string/jumbo v2, "handleStartFilteringOperation:tcp:V6:error occured while communicating to remote service"

    .line 453
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v2, 0x1

    .line 457
    const/4 v3, -0x8

    .line 458
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 461
    monitor-exit p0

    .line 462
    goto/16 :goto_a

    .line 464
    :catch_a
    :cond_8
    :goto_3
    :try_start_18
    iget-boolean v2, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 466
    if-eqz v2, :cond_9

    .line 468
    :try_start_19
    invoke-interface {v13}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    .line 471
    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 472
    :try_start_1a
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 474
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    const/16 v8, 0xa

    .line 479
    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->exemptUdpPacketFromNwFilterRange(II)V

    .line 482
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 484
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    invoke-static {v5, v2, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6UdpConn(IILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 490
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 493
    move-result-object v2

    .line 494
    const/16 v9, 0x11

    .line 496
    const/4 v11, 0x1

    .line 497
    invoke-interface {v2, v5, v8, v9, v11}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 500
    goto :goto_4

    .line 501
    :catch_b
    :try_start_1c
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 504
    const-string/jumbo v2, "handleStartFilteringOperation:udp:V6:error occured remote service null"

    .line 507
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v2, 0x1

    .line 511
    const/4 v3, -0x8

    .line 512
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 515
    monitor-exit p0

    .line 516
    goto/16 :goto_a

    .line 518
    :catch_c
    :try_start_1d
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 521
    const-string/jumbo v2, "handleStartFilteringOperation:udp:V6:error occured while communicating to remote service"

    .line 524
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v2, 0x1

    .line 528
    const/4 v3, -0x8

    .line 529
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 532
    monitor-exit p0

    .line 533
    goto/16 :goto_a

    .line 535
    :catch_d
    :cond_9
    :goto_4
    :try_start_1e
    invoke-interface {v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startHttpProxyServer()I

    .line 538
    move-result v2

    .line 539
    invoke-interface {v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 542
    move-result-object v8

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 546
    move-result-object v9

    .line 547
    invoke-interface {v9, v5, v2}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 550
    :try_start_1f
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 552
    const/4 v9, 0x1

    .line 553
    invoke-virtual {v3, v0, v8, v9, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 556
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 558
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getInstalledVpnClientList(I)Ljava/util/Set;

    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Ljava/util/HashSet;

    .line 567
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 570
    move-result v9

    .line 571
    if-nez v9, :cond_d

    .line 573
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 576
    move-result-object v9

    .line 577
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 580
    move-result v10

    .line 581
    if-eqz v10, :cond_a

    .line 583
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 586
    move-result-object v10

    .line 587
    check-cast v10, Ljava/lang/Integer;

    .line 589
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 592
    move-result v11

    .line 593
    iget-object v13, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 595
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {v1, v11, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    .line 601
    goto :goto_5

    .line 602
    :cond_a
    array-length v9, v8

    .line 603
    const/4 v10, 0x0

    .line 604
    :goto_6
    if-ge v10, v9, :cond_d

    .line 606
    aget-object v11, v8, v10

    .line 608
    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 610
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    invoke-static {v5, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 616
    move-result v13

    .line 617
    if-lez v13, :cond_c

    .line 619
    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 621
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    invoke-static {v13, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V

    .line 627
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    move-result-object v14

    .line 631
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 634
    move-result v14

    .line 635
    if-eqz v14, :cond_c

    .line 637
    const-string/jumbo v14, "knoxNwFilter-KnoxNetworkFilterService"

    .line 640
    new-instance v15, Ljava/lang/StringBuilder;

    .line 642
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    move/from16 p1, v2

    .line 647
    const-string/jumbo v2, "ignore adding the browser package "

    .line 650
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v2, " to vpn list"

    .line 658
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    move-result-object v2

    .line 665
    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 670
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 673
    move-result-object v11

    .line 674
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 677
    move-result v2

    .line 678
    if-eqz v2, :cond_b

    .line 680
    iget-object v2, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 682
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    move-result-object v11

    .line 686
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 689
    :cond_b
    invoke-virtual {v1, v13, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 692
    goto :goto_7

    .line 693
    :cond_c
    move/from16 p1, v2

    .line 695
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 697
    move/from16 v2, p1

    .line 699
    goto :goto_6

    .line 700
    :cond_d
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 702
    const/4 v3, 0x1

    .line 703
    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 706
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 708
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 713
    const-string/jumbo v8, "com.samsung.android.knox.app.networkfilter"

    .line 716
    invoke-virtual {v2, v7, v8, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 719
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 721
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 726
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 732
    move-result-object v0

    .line 733
    if-eqz v0, :cond_e

    .line 735
    const/4 v2, 0x3

    .line 736
    iput v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 738
    :cond_e
    const/4 v0, 0x0

    .line 739
    const/4 v2, 0x1

    .line 740
    invoke-virtual {v1, v5, v2, v0, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    .line 743
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 745
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAdminIdForUser(I)I

    .line 748
    move-result v0

    .line 749
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 751
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 757
    move-result-object v0

    .line 758
    const/4 v2, 0x1

    .line 759
    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendEMMStatusIntent(IILjava/lang/String;)V

    .line 762
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 764
    invoke-virtual {v0, v4, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    .line 767
    move-result v0

    .line 768
    if-eqz v0, :cond_f

    .line 770
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 772
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 775
    :cond_f
    monitor-exit p0

    .line 776
    goto :goto_a

    .line 777
    :catch_e
    move-exception v0

    .line 778
    goto :goto_8

    .line 779
    :catch_f
    move-exception v0

    .line 780
    goto :goto_9

    .line 781
    :goto_8
    :try_start_20
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    .line 786
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    move-result-object v0

    .line 800
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v2, 0x1

    .line 804
    const/4 v3, -0x8

    .line 805
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 808
    monitor-exit p0

    .line 809
    goto :goto_a

    .line 810
    :goto_9
    :try_start_21
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    .line 815
    move-object/from16 v4, v16

    .line 817
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    move-result-object v0

    .line 831
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v2, 0x1

    .line 835
    const/4 v3, -0x8

    .line 836
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 839
    monitor-exit p0

    .line 840
    goto :goto_a

    .line 841
    :catch_10
    :try_start_22
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 844
    const-string/jumbo v2, "handleStartFilteringOperation:dns:error occured while communicating to remote oemnetd service"

    .line 847
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v2, 0x1

    .line 851
    const/4 v3, -0x8

    .line 852
    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 855
    monitor-exit p0

    .line 856
    :goto_a
    return-void

    .line 857
    :goto_b
    monitor-exit p0

    .line 858
    throw v0
.end method

.method public static -$$Nest$mhandleStopFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "uid"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v1

    .line 13
    const-string/jumbo v2, "profileName"

    .line 16
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 31
    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {v1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 40
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const/4 v4, 0x2

    .line 42
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5, v1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 49
    move-result v5

    .line 50
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5, v1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 63
    move-result-object v5

    .line 64
    const/4 v6, -0x1

    .line 65
    invoke-interface {v5, v1, v6}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v5, v3}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    .line 83
    sget-object v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 85
    const/4 v7, 0x0

    .line 86
    aget-object v5, v5, v7

    .line 88
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {v1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 96
    move-result v5

    .line 97
    if-eq v5, v6, :cond_0

    .line 99
    invoke-virtual {p0, v5, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto/16 :goto_a

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 109
    if-nez v1, :cond_1

    .line 111
    const/4 v0, 0x1

    .line 112
    const/16 v5, 0x270f

    .line 114
    invoke-virtual {p0, v0, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 125
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object v0

    .line 129
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_2

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Ljava/lang/Integer;

    .line 141
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 144
    move-result v5

    .line 145
    invoke-virtual {p0, v5, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedDOTBlockRules(I)V

    .line 157
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v5

    .line 171
    const/4 v8, 0x0

    .line 172
    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 178
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 190
    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-result-object v9

    .line 200
    check-cast v9, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    goto :goto_2

    .line 206
    :catch_0
    :try_start_4
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 209
    const-string/jumbo v11, "handleStopFilteringOperation:dns:error occured remote service null"

    .line 212
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto :goto_2

    .line 216
    :catch_1
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 219
    const-string/jumbo v11, "handleStopFilteringOperation:dns:error occured while communicating to remote service"

    .line 222
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_2
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 227
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    :try_start_5
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    goto :goto_3

    .line 237
    :catch_2
    :try_start_6
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 240
    const-string/jumbo v11, "handleStopFilteringOperation:tcp:error occured remote service null"

    .line 243
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    goto :goto_3

    .line 247
    :catch_3
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 250
    const-string/jumbo v11, "handleStopFilteringOperation:tcp:error occured while communicating to remote service"

    .line 253
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_3
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 258
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    :try_start_7
    invoke-interface {v9}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 267
    goto :goto_4

    .line 268
    :catch_4
    :try_start_8
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 271
    const-string/jumbo v11, "handleStopFilteringOperation:udp:error occured remote service null"

    .line 274
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto :goto_4

    .line 278
    :catch_5
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    .line 281
    const-string/jumbo v11, "handleStopFilteringOperation:udp:error occured while communicating to remote service"

    .line 284
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_4
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 289
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    invoke-static {v1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 295
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 297
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 303
    :try_start_9
    invoke-interface {v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 306
    goto :goto_5

    .line 307
    :catch_6
    :try_start_a
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 310
    const-string/jumbo v10, "handleStopFilteringOperation:dns:v6:error occured remote service null"

    .line 313
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    goto :goto_5

    .line 317
    :catch_7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 320
    const-string/jumbo v10, "handleStopFilteringOperation:dns:v6:error occured while communicating to remote service"

    .line 323
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_5
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectV6DnsQueryRules(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 334
    :try_start_b
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 337
    goto :goto_6

    .line 338
    :catch_8
    :try_start_c
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 341
    const-string/jumbo v10, "handleStopFilteringOperation:tcp:V6:error occured remote service null"

    .line 344
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    goto :goto_6

    .line 348
    :catch_9
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 351
    const-string/jumbo v10, "handleStopFilteringOperation:tcp:V6:error occured while communicating to remote service"

    .line 354
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_6
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 365
    :try_start_d
    invoke-interface {v9}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 368
    goto :goto_7

    .line 369
    :catch_a
    :try_start_e
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 372
    const-string/jumbo v9, "handleStopFilteringOperation:udp:V6:error occured remote service null"

    .line 375
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto :goto_7

    .line 379
    :catch_b
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 382
    const-string/jumbo v9, "handleStopFilteringOperation:udp:V6:error occured while communicating to remote service"

    .line 385
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_7
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 390
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    const/16 v0, 0xa

    .line 395
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 398
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 400
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 406
    :try_start_f
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    .line 409
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 412
    move-result-object v8

    .line 413
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 416
    move-result-object v0

    .line 417
    invoke-interface {v0, v1, v6}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 420
    goto :goto_8

    .line 421
    :catch_c
    :try_start_10
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 424
    const-string/jumbo v5, "handleStopFilteringOperation:tcp:http:error occured remote service null"

    .line 427
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    goto :goto_8

    .line 431
    :catch_d
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 434
    const-string/jumbo v5, "handleStopFilteringOperation:tcp:http:error occured while communicating to remote service"

    .line 437
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_8
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 442
    invoke-virtual {v0, p1, v8, v7, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 445
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V

    .line 453
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 455
    const-string/jumbo v5, "com.samsung.android.knox.app.networkfilter"

    .line 458
    invoke-virtual {v0, v3, v5, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 461
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 468
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 474
    move-result-object p1

    .line 475
    if-eqz p1, :cond_3

    .line 477
    const/4 v0, 0x5

    .line 478
    iput v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 480
    :cond_3
    invoke-virtual {p0, v1, v4, v7, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    .line 486
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 493
    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAdminIdForUser(I)I

    .line 496
    move-result p1

    .line 497
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 505
    move-result-object p1

    .line 506
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendEMMStatusIntent(IILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 509
    monitor-exit p0

    .line 510
    goto :goto_9

    .line 511
    :catch_e
    :try_start_11
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 514
    const-string/jumbo v0, "handleStopFilteringOperation:error occured while communicating to remote oemnetd service"

    .line 517
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 p1, -0x8

    .line 521
    invoke-virtual {p0, v1, v4, p1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 524
    monitor-exit p0

    .line 525
    :goto_9
    return-void

    .line 526
    :goto_a
    monitor-exit p0

    .line 527
    throw p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->DBG:Z

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 12
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 14
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 16
    const-class v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 21
    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 34
    const-string/jumbo v2, "user"

    .line 37
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/os/UserManager;

    .line 43
    sput-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_7

    .line 49
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    .line 52
    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 54
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 60
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 66
    const-class v1, Landroid/net/ConnectivityManager;

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 74
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mCm:Landroid/net/ConnectivityManager;

    .line 76
    new-instance p1, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 78
    invoke-direct {p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 83
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 89
    const-class p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 91
    monitor-enter p1

    .line 92
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 94
    if-nez v1, :cond_1

    .line 96
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 98
    invoke-direct {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;-><init>()V

    .line 101
    sput-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto/16 :goto_6

    .line 107
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    monitor-exit p1

    .line 110
    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 112
    new-instance p1, Ljava/util/HashMap;

    .line 114
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 119
    new-instance p1, Ljava/util/HashMap;

    .line 121
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 126
    new-instance p1, Ljava/util/HashMap;

    .line 128
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 133
    new-instance p1, Ljava/util/HashMap;

    .line 135
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 140
    new-instance p1, Ljava/util/HashMap;

    .line 142
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 147
    new-instance p1, Ljava/util/HashMap;

    .line 149
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 154
    new-instance p1, Ljava/util/HashMap;

    .line 156
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    .line 163
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 168
    new-instance p1, Landroid/os/HandlerThread;

    .line 170
    const-string v1, "KnoxNwFilterHandler"

    .line 172
    const/16 v2, 0xa

    .line 174
    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 177
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 179
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 182
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    .line 184
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 186
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 189
    move-result-object v1

    .line 190
    invoke-direct {p1, p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Looper;)V

    .line 193
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    .line 195
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 198
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 200
    const-string v2, "NwFilterService"

    .line 202
    const/4 v3, 0x0

    .line 203
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 210
    move-result v2

    .line 211
    const-string/jumbo v4, "pkgUid"

    .line 214
    if-lez v2, :cond_4

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object v1

    .line 220
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_4

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Landroid/content/ContentValues;

    .line 232
    const-string/jumbo v5, "profileName"

    .line 235
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object v5

    .line 239
    const-string/jumbo v6, "profileConfig"

    .line 242
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object v6

    .line 246
    const-string/jumbo v7, "pkgName"

    .line 249
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 260
    move-result v2

    .line 261
    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_2

    .line 267
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 269
    invoke-direct {v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;-><init>()V

    .line 272
    iput-object v5, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 274
    iput-object v6, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    .line 276
    iput-object v7, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    .line 278
    iput v2, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 280
    const-class v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 282
    monitor-enter v2

    .line 283
    if-eqz v5, :cond_3

    .line 285
    :try_start_2
    sget-object v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 287
    invoke-virtual {v6, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    move-result-object v5

    .line 291
    check-cast v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 293
    monitor-exit v2

    .line 294
    goto :goto_2

    .line 295
    :catchall_2
    move-exception p0

    .line 296
    monitor-exit v2

    .line 297
    throw p0

    .line 298
    :cond_3
    monitor-exit v2

    .line 299
    goto :goto_2

    .line 300
    :cond_4
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 302
    const-string v2, "UnManagedNwFilterMgr"

    .line 304
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 307
    move-result-object v1

    .line 308
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 311
    move-result v2

    .line 312
    if-lez v2, :cond_6

    .line 314
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 317
    move-result-object v1

    .line 318
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_6

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Landroid/content/ContentValues;

    .line 330
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 337
    move-result v5

    .line 338
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 341
    move-result v5

    .line 342
    const-string/jumbo v6, "bundleInfo"

    .line 345
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    .line 348
    move-result-object v2

    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 352
    move-result-object v6

    .line 353
    array-length v7, v2

    .line 354
    const/4 v8, 0x0

    .line 355
    invoke-virtual {v6, v2, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 358
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 361
    invoke-virtual {v6}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 368
    const-string v6, "ConfigViewer"

    .line 370
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    move-result-object v6

    .line 374
    const-string v7, "UnEnrollViewer"

    .line 376
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    move-result-object v7

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    const-string/jumbo v9, "updateBundleInfoToLocalCache: configViewActivity: "

    .line 388
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v6, " unEnrollViewActivity: "

    .line 396
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v6

    .line 406
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v6, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 411
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    move-result-object v7

    .line 415
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 418
    move-result v6

    .line 419
    if-eqz v6, :cond_5

    .line 421
    iget-object v6, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 423
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    goto :goto_4

    .line 431
    :catch_0
    move-exception v0

    .line 432
    goto :goto_5

    .line 433
    :cond_5
    :goto_4
    iget-object v6, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 435
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    move-result-object v5

    .line 439
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 442
    goto :goto_3

    .line 443
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 445
    const-string v2, " updateBundleInfoToLocalCache error: "

    .line 447
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static {v0, v1, p1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 453
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->initializeModules()V

    .line 456
    return-void

    .line 457
    :goto_6
    monitor-exit p1

    .line 458
    throw p0

    .line 459
    :goto_7
    monitor-exit v0

    .line 460
    throw p0
.end method

.method public static getAMSInstance()Landroid/app/IActivityManager;
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public final bindInternalProxyServices(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 15
    const-wide/16 v3, 0x7530

    .line 17
    const v5, 0x40000005    # 2.0000012f

    .line 20
    const-string/jumbo v6, "com.samsung.android.knox.app.networkfilter"

    .line 23
    const/4 v7, 0x1

    .line 24
    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-direct {v0, p0, p1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 32
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 34
    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 37
    iput-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 39
    new-instance v8, Landroid/content/Intent;

    .line 41
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string/jumbo v9, "com.samsung.android.knox.app.networkfilter.dns.DefaultDnsProxyService"

    .line 47
    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 52
    new-instance v10, Landroid/os/UserHandle;

    .line 54
    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    invoke-virtual {v9, v8, v0, v5, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_0

    .line 63
    iget-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 65
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-virtual {v8, v3, v4, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_0

    .line 73
    const-string/jumbo v8, "binding to default dns proxy service is success"

    .line 76
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    iput-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_3

    .line 102
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 104
    const/4 v8, 0x1

    .line 105
    invoke-direct {v0, p0, p1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 108
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 110
    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 113
    iput-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 115
    new-instance v8, Landroid/content/Intent;

    .line 117
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 120
    const-string/jumbo v9, "com.samsung.android.knox.app.networkfilter.tcp.DefaultTcpProxyService"

    .line 123
    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 128
    new-instance v10, Landroid/os/UserHandle;

    .line 130
    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 133
    invoke-virtual {v9, v8, v0, v5, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_2

    .line 139
    iget-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 141
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 143
    invoke-virtual {v8, v3, v4, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_2

    .line 149
    const-string/jumbo v8, "binding to default tcp proxy service is success"

    .line 152
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_2
    iput-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_5

    .line 178
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    .line 180
    const/4 v8, 0x2

    .line 181
    invoke-direct {v0, p0, p1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    .line 184
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 186
    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 189
    iput-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 191
    new-instance v7, Landroid/content/Intent;

    .line 193
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 196
    const-string/jumbo v8, "com.samsung.android.knox.app.networkfilter.udp.DefaultUdpProxyService"

    .line 199
    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 204
    new-instance v8, Landroid/os/UserHandle;

    .line 206
    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 209
    invoke-virtual {v6, v7, v0, v5, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_4

    .line 215
    iget-object v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 217
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 219
    invoke-virtual {v5, v3, v4, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_4

    .line 225
    const-string/jumbo v3, "binding to default udp proxy service is success"

    .line 228
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_4
    iput-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 242
    :cond_5
    return-void
.end method

.method public final checkCallingUidPermission()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    .line 6
    const-string v2, " Permission not granted"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 30
    invoke-virtual {v3, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 36
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 42
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 54
    const-string/jumbo v0, "failed due to caller not registered or authorized"

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    const-string/jumbo v0, "failed due to caller not registered"

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0

    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_MGMT"

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    return-void
.end method

.method public final connectNativeNetdService()V
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "netd"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    .line 20
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    .line 25
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 28
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 31
    const-string v0, "Can\'t connect to NativeNetdService netd"

    .line 33
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    return-void
.end method

.method public final disableNetdFlags()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 37
    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 39
    const/4 v4, 0x3

    .line 40
    if-ne v3, v4, :cond_0

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v0, "profile "

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, " is running, so skipping disabling the netd flags"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 66
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    move-result-wide v0

    .line 70
    :try_start_0
    const-string v3, "Disabling all netd flags, since the profile list is empty"

    .line 72
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string/jumbo v2, "net.redirect_socket_calls.hooked"

    .line 78
    const-string/jumbo v3, "false"

    .line 81
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 87
    move-result-object p0

    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-interface {p0, v2}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    throw p0

    .line 101
    :goto_0
    return-void
.end method

.method public final declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p1, "KnoxNetworkFilterProfileInfo: The profile info being printed at time "

    .line 3
    const-string p3, " without permission android.permission.DUMP"

    .line 5
    const-string v0, "KnoxNetworkFilterProfileInfo: Permission Denial: can\'t dump PersonaManager from from pid="

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 10
    const-string v2, "android.permission.DUMP"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v0, ", uid="

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_a

    .line 57
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/util/Date;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    move-result-wide v0

    .line 68
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string p1, "\n"

    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object p1

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result p3

    .line 102
    if-eqz p3, :cond_2

    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object p3

    .line 108
    check-cast p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v1, "KnoxNetworkFilterProfileInfo: profileName: "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\n"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v1, "KnoxNetworkFilterProfileInfo: RulesConfig: "

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "\n"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v1, "KnoxNetworkFilterProfileInfo: socketConfig "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v1, "KnoxNetworkFilterProfileInfo: packageName "

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "\n"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    const-string v1, "KnoxNetworkFilterProfileInfo: packageUid "

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "\n"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    const-string v1, "KnoxNetworkFilterProfileInfo: state: "

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "\n"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    iget-object p3, p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 274
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 277
    move-result-object p3

    .line 278
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_1

    .line 284
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Ljava/lang/Integer;

    .line 290
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 293
    move-result v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    const-string v2, "KnoxNetworkFilterProfileInfo: vpn client uid: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    const-string v0, "\n"

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    goto :goto_1

    .line 320
    :cond_1
    const-string p3, "\n"

    .line 322
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    goto/16 :goto_0

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisterInfoFromDatabase()Ljava/util/List;

    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Ljava/util/ArrayList;

    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 338
    move-result-object p1

    .line 339
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    move-result p3

    .line 343
    if-eqz p3, :cond_3

    .line 345
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    move-result-object p3

    .line 349
    check-cast p3, Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const-string v1, "KnoxNetworkFilterProfileInfo: register app info: "

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string p3, "\n"

    .line 366
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object p3

    .line 373
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    goto :goto_2

    .line 377
    :cond_3
    const-string p1, "\n"

    .line 379
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 384
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedInfoFromDatabase()Ljava/util/List;

    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Ljava/util/ArrayList;

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 393
    move-result-object p1

    .line 394
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    move-result p3

    .line 398
    if-eqz p3, :cond_4

    .line 400
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    move-result-object p3

    .line 404
    check-cast p3, Ljava/lang/String;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    .line 408
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    const-string v1, "KnoxNetworkFilterProfileInfo: unManaged app info: "

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string p3, "\n"

    .line 421
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    move-result-object p3

    .line 428
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    goto :goto_3

    .line 432
    :cond_4
    const-string p1, "\n"

    .line 434
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :try_start_2
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUserIdList()Ljava/util/List;

    .line 445
    move-result-object p1

    .line 446
    check-cast p1, Ljava/util/ArrayList;

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 451
    move-result-object p1

    .line 452
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_5

    .line 458
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    move-result-object p3

    .line 462
    check-cast p3, Ljava/lang/Integer;

    .line 464
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 467
    move-result p3

    .line 468
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 471
    move-result-object v0

    .line 472
    invoke-interface {v0, p3}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 475
    move-result v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    .line 478
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    const-string v2, "KnoxNetworkFilterProfileInfo: netId value is "

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    const-string v0, " for userId "

    .line 491
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string p3, "\n"

    .line 499
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object p3

    .line 506
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    goto :goto_4

    .line 510
    :catch_0
    :cond_5
    :try_start_3
    const-string p1, "\n"

    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getAMSInstance()Landroid/app/IActivityManager;

    .line 518
    move-result-object p1

    .line 519
    invoke-interface {p1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 522
    move-result-object p1

    .line 523
    if-eqz p1, :cond_7

    .line 525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 528
    move-result-object p1

    .line 529
    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    move-result p3

    .line 533
    if-eqz p3, :cond_7

    .line 535
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    move-result-object p3

    .line 539
    check-cast p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 541
    iget-object v0, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 543
    if-eqz v0, :cond_6

    .line 545
    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_6

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    .line 556
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    const-string v1, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error condition is "

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget v1, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, "\n"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    .line 583
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    const-string v1, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error longMsg is "

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v1, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, "\n"

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    .line 610
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    const-string v1, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error shortMsg is "

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v1, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, "\n"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    .line 637
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    const-string v1, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error stackTrace is "

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, "\n"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    .line 664
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    const-string v1, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error pid is "

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget v1, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, "\n"

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    .line 691
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    const-string v1, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk apk error uid is "

    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget p3, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 701
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    const-string p3, "\n"

    .line 706
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    move-result-object p3

    .line 713
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    goto/16 :goto_5

    .line 718
    :cond_7
    const-string p1, "\n"

    .line 720
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 725
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 728
    move-result-object p1

    .line 729
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 732
    move-result-object p1

    .line 733
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 736
    move-result p3

    .line 737
    const/4 v0, 0x0

    .line 738
    if-eqz p3, :cond_9

    .line 740
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 743
    move-result-object p3

    .line 744
    check-cast p3, Ljava/lang/Integer;

    .line 746
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 749
    move-result v1

    .line 750
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 752
    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    move-result-object p3

    .line 756
    check-cast p3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 758
    if-eqz p3, :cond_8

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    .line 762
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    const-string v2, "KnoxNetworkFilterProfileInfo: local default DNS proxy server configured under user "

    .line 767
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v1, "\n"

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    .line 787
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    const-string v1, "KnoxNetworkFilterProfileInfo: local default DNS proxy server address "

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyAddress()Ljava/lang/String;

    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v1, "\n"

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    .line 816
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    const-string v1, "KnoxNetworkFilterProfileInfo: local default DNS proxy server port "

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyPort()I

    .line 827
    move-result v1

    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, "\n"

    .line 833
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    .line 845
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    const-string v1, "KnoxNetworkFilterProfileInfo: local default DNS proxy server thread is active "

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadRunning()Z

    .line 856
    move-result v1

    .line 857
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 860
    const-string v1, "\n"

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    .line 874
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    const-string v1, "KnoxNetworkFilterProfileInfo: local default DNS proxy server thread state "

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getProxythreadStatus()Ljava/lang/String;

    .line 885
    move-result-object v1

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const-string v1, "\n"

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 897
    move-result-object v0

    .line 898
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    .line 903
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    const-string v1, "KnoxNetworkFilterProfileInfo: local default DNS proxy server alive "

    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadAlive()Z

    .line 914
    move-result v1

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 918
    const-string v1, "\n"

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    move-result-object v0

    .line 927
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    .line 932
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    const-string v1, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server address "

    .line 937
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyAddress()Ljava/lang/String;

    .line 943
    move-result-object v1

    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v1, "\n"

    .line 949
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    move-result-object v0

    .line 956
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    .line 961
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    const-string v1, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server port "

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyPort()I

    .line 972
    move-result v1

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, "\n"

    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    move-result-object v0

    .line 985
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    .line 990
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    const-string v1, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server thread is active "

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadRunning()Z

    .line 1001
    move-result v1

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1005
    const-string v1, "\n"

    .line 1007
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    move-result-object v0

    .line 1014
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1019
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    const-string v1, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server thread state "

    .line 1024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6ProxythreadStatus()Ljava/lang/String;

    .line 1030
    move-result-object v1

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v1, "\n"

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    move-result-object v0

    .line 1043
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1048
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    const-string v1, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server alive "

    .line 1053
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadAlive()Z

    .line 1059
    move-result p3

    .line 1060
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1063
    const-string p3, "\n"

    .line 1065
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1071
    move-result-object p3

    .line 1072
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    :cond_8
    const-string p3, "\n"

    .line 1077
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    goto/16 :goto_6

    .line 1082
    :cond_9
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 1084
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1087
    move-result-object p1

    .line 1088
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1091
    move-result-object p1

    .line 1092
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1095
    move-result p3

    .line 1096
    if-eqz p3, :cond_b

    .line 1098
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1101
    move-result-object p3

    .line 1102
    check-cast p3, Ljava/lang/Integer;

    .line 1104
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 1107
    move-result v1

    .line 1108
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 1110
    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    move-result-object p3

    .line 1114
    check-cast p3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 1116
    if-eqz p3, :cond_a

    .line 1118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    const-string v3, "KnoxNetworkFilterProfileInfo: local default tcp proxy server configured under user "

    .line 1125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1131
    const-string v1, "\n"

    .line 1133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    move-result-object v1

    .line 1140
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    const-string v2, "KnoxNetworkFilterProfileInfo: local default tcp proxy server address "

    .line 1150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyAddress()Ljava/lang/String;

    .line 1156
    move-result-object v2

    .line 1157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v2, "\n"

    .line 1162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1168
    move-result-object v1

    .line 1169
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1177
    const-string v2, "KnoxNetworkFilterProfileInfo: local default tcp proxy server port "

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyPort()I

    .line 1185
    move-result v2

    .line 1186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    const-string v2, "\n"

    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    move-result-object v1

    .line 1198
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    const-string v2, "KnoxNetworkFilterProfileInfo: local default tcp proxy server thread is active "

    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadRunning()Z

    .line 1214
    move-result v2

    .line 1215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1218
    const-string v2, "\n"

    .line 1220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1226
    move-result-object v1

    .line 1227
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    const-string v2, "KnoxNetworkFilterProfileInfo: local default tcp proxy server thread state "

    .line 1237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getProxythreadStatus()Ljava/lang/String;

    .line 1243
    move-result-object v2

    .line 1244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v2, "\n"

    .line 1249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1255
    move-result-object v1

    .line 1256
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    const-string v2, "KnoxNetworkFilterProfileInfo: local default tcp proxy server alive "

    .line 1266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadAlive()Z

    .line 1272
    move-result v2

    .line 1273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1276
    const-string v2, "\n"

    .line 1278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1284
    move-result-object v1

    .line 1285
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1293
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server address "

    .line 1295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyAddress()Ljava/lang/String;

    .line 1301
    move-result-object v2

    .line 1302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const-string v2, "\n"

    .line 1307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1313
    move-result-object v1

    .line 1314
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1319
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1322
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server port "

    .line 1324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyPort()I

    .line 1330
    move-result v2

    .line 1331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1334
    const-string v2, "\n"

    .line 1336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1342
    move-result-object v1

    .line 1343
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1348
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server thread is active "

    .line 1353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadRunning()Z

    .line 1359
    move-result v2

    .line 1360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1363
    const-string v2, "\n"

    .line 1365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1371
    move-result-object v1

    .line 1372
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1377
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1380
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server thread state "

    .line 1382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6ProxythreadStatus()Ljava/lang/String;

    .line 1388
    move-result-object v2

    .line 1389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    const-string v2, "\n"

    .line 1394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1400
    move-result-object v1

    .line 1401
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1406
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server alive "

    .line 1411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadAlive()Z

    .line 1417
    move-result v2

    .line 1418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1421
    const-string v2, "\n"

    .line 1423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1429
    move-result-object v1

    .line 1430
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1435
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1438
    const-string v2, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server address "

    .line 1440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyAddress()Ljava/lang/String;

    .line 1446
    move-result-object v2

    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v2, "\n"

    .line 1452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1458
    move-result-object v1

    .line 1459
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1464
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1467
    const-string v2, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server port "

    .line 1469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    .line 1475
    move-result v2

    .line 1476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1479
    const-string v2, "\n"

    .line 1481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1487
    move-result-object v1

    .line 1488
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1493
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    const-string v2, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server thread is active "

    .line 1498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isHttpProxyThreadRunning()Z

    .line 1504
    move-result v2

    .line 1505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1508
    const-string v2, "\n"

    .line 1510
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    move-result-object v1

    .line 1517
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1522
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    const-string v2, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server thread state "

    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpProxythreadStatus()Ljava/lang/String;

    .line 1533
    move-result-object v2

    .line 1534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    const-string v2, "\n"

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1545
    move-result-object v1

    .line 1546
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1551
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1554
    const-string v2, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server alive "

    .line 1556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isHttpProxyThreadAlive()Z

    .line 1562
    move-result p3

    .line 1563
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1566
    const-string p3, "\n"

    .line 1568
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1574
    move-result-object p3

    .line 1575
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    :cond_a
    const-string p3, "\n"

    .line 1580
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1583
    goto/16 :goto_7

    .line 1585
    :cond_b
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 1587
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1590
    move-result-object p1

    .line 1591
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1594
    move-result-object p1

    .line 1595
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1598
    move-result p3

    .line 1599
    if-eqz p3, :cond_d

    .line 1601
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1604
    move-result-object p3

    .line 1605
    check-cast p3, Ljava/lang/Integer;

    .line 1607
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 1610
    move-result v1

    .line 1611
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 1613
    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    move-result-object p3

    .line 1617
    check-cast p3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 1619
    if-eqz p3, :cond_c

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1623
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1626
    const-string v3, "KnoxNetworkFilterProfileInfo: local default udp proxy server configured under user "

    .line 1628
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1634
    const-string v1, "\n"

    .line 1636
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1642
    move-result-object v1

    .line 1643
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1648
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    const-string v2, "KnoxNetworkFilterProfileInfo: local default udp proxy server address "

    .line 1653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyAddress()Ljava/lang/String;

    .line 1659
    move-result-object v2

    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    const-string v2, "\n"

    .line 1665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1671
    move-result-object v1

    .line 1672
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1677
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1680
    const-string v2, "KnoxNetworkFilterProfileInfo: local default udp proxy server port "

    .line 1682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyPort()I

    .line 1688
    move-result v2

    .line 1689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1692
    const-string v2, "\n"

    .line 1694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1700
    move-result-object v1

    .line 1701
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1706
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1709
    const-string v2, "KnoxNetworkFilterProfileInfo: local default udp proxy server thread is active "

    .line 1711
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadRunning()Z

    .line 1717
    move-result v2

    .line 1718
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1721
    const-string v2, "\n"

    .line 1723
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1729
    move-result-object v1

    .line 1730
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1733
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1735
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1738
    const-string v2, "KnoxNetworkFilterProfileInfo: local default udp proxy server thread state "

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getProxythreadStatus()Ljava/lang/String;

    .line 1746
    move-result-object v2

    .line 1747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    const-string v2, "\n"

    .line 1752
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1758
    move-result-object v1

    .line 1759
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1764
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1767
    const-string v2, "KnoxNetworkFilterProfileInfo: local default udp proxy server alive "

    .line 1769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadAlive()Z

    .line 1775
    move-result v2

    .line 1776
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1779
    const-string v2, "\n"

    .line 1781
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1787
    move-result-object v1

    .line 1788
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1793
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server address "

    .line 1798
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyAddress()Ljava/lang/String;

    .line 1804
    move-result-object v2

    .line 1805
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    const-string v2, "\n"

    .line 1810
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1816
    move-result-object v1

    .line 1817
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1822
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1825
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server port "

    .line 1827
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyPort()I

    .line 1833
    move-result v2

    .line 1834
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1837
    const-string v2, "\n"

    .line 1839
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1845
    move-result-object v1

    .line 1846
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1851
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1854
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server thread is active "

    .line 1856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadRunning()Z

    .line 1862
    move-result v2

    .line 1863
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1866
    const-string v2, "\n"

    .line 1868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1874
    move-result-object v1

    .line 1875
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1878
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1880
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1883
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server thread state "

    .line 1885
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6ProxythreadStatus()Ljava/lang/String;

    .line 1891
    move-result-object v2

    .line 1892
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    const-string v2, "\n"

    .line 1897
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1903
    move-result-object v1

    .line 1904
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1909
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1912
    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server alive "

    .line 1914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadAlive()Z

    .line 1920
    move-result p3

    .line 1921
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1924
    const-string p3, "\n"

    .line 1926
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1932
    move-result-object p3

    .line 1933
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    :cond_c
    const-string p3, "\n"

    .line 1938
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    goto/16 :goto_8

    .line 1943
    :cond_d
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    .line 1945
    check-cast p1, Ljava/util/ArrayList;

    .line 1947
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1950
    move-result-object p1

    .line 1951
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1954
    move-result p3

    .line 1955
    if-eqz p3, :cond_e

    .line 1957
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1960
    move-result-object p3

    .line 1961
    check-cast p3, Ljava/lang/String;

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1965
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1968
    const-string v1, "KnoxNetworkFilterProfileInfo: "

    .line 1970
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    const-string p3, "\n"

    .line 1978
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1984
    move-result-object p3

    .line 1985
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1988
    goto :goto_9

    .line 1989
    :cond_e
    const-string p1, "\n"

    .line 1991
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1994
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1996
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1999
    const-string p3, "KnoxNetworkFilterProfileInfo: version "

    .line 2001
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 2006
    const-string/jumbo v0, "com.samsung.android.knox.app.networkfilter"

    .line 2009
    const/4 v1, 0x0

    .line 2010
    invoke-virtual {p3, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVersionCode(ILjava/lang/String;)I

    .line 2013
    move-result p3

    .line 2014
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2017
    const-string p3, "\n"

    .line 2019
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2025
    move-result-object p1

    .line 2026
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2029
    goto :goto_b

    .line 2030
    :goto_a
    monitor-exit p0

    .line 2031
    throw p1

    .line 2032
    :catch_1
    :goto_b
    monitor-exit p0

    .line 2033
    return-void
.end method

.method public final exemptUidFromNwFilterRange(II)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Landroid/net/UidRangeParcel;

    .line 12
    invoke-direct {v3, p1, p2}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v4

    .line 26
    new-array v4, v4, [Landroid/net/UidRangeParcel;

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 34
    invoke-interface {v3, v2}, Lcom/android/internal/net/IOemNetd;->exemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p0

    .line 46
    :goto_0
    if-ne p1, p2, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string p2, "_knox_nwfilter_app_act"

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    .line 76
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v7, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 91
    const-string v9, " -m owner --uid-owner "

    .line 93
    invoke-static {p1, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    sget-object v10, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 99
    const-string v3, "ACCEPT"

    .line 101
    const-string v4, ""

    .line 103
    move-object v0, v8

    .line 104
    move-object v1, p0

    .line 105
    move-object v5, v10

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 109
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 114
    invoke-static {p1, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    const-string v3, "ACCEPT"

    .line 120
    const-string v4, ""

    .line 122
    move-object v0, v8

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 126
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 131
    invoke-static {p1, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    const-string v3, "ACCEPT"

    .line 137
    const-string v4, ""

    .line 139
    move-object v0, v8

    .line 140
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 143
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string p0, "*nat"

    .line 148
    const/4 p1, 0x4

    .line 149
    const/4 v0, 0x1

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-static {p1, p0, v1, p2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 154
    const-string p0, "*filter"

    .line 156
    const/16 p1, 0x2e

    .line 158
    invoke-static {p1, p0, v1, v6, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 161
    const-string p0, "*mangle"

    .line 163
    const/4 p1, 0x6

    .line 164
    invoke-static {p1, p0, v1, v7, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public final declared-synchronized getAllProfiles()Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final declared-synchronized getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "getConfig validation failed with error code "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_4

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 40
    move-result v1

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eq v1, v3, :cond_2

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    move-result v3

    .line 48
    if-eq v1, v3, :cond_2

    .line 50
    const/16 v2, -0xc

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/4 v2, -0x7

    .line 54
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 56
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    .line 89
    return-object p1

    .line 90
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 92
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 95
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :goto_2
    monitor-exit p0

    .line 97
    throw p1
.end method

.method public final declared-synchronized getConfigByUserId(I)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result p1

    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo v1, "com.android.vpndialogs"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 28
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/4 p1, 0x0

    .line 63
    :goto_0
    if-nez p1, :cond_1

    .line 65
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    monitor-exit p0

    .line 68
    return-object p1

    .line 69
    :cond_2
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 72
    const-string v0, "Error during getConfigByUserId API validation as the caller is not platform signed"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance p1, Ljava/lang/SecurityException;

    .line 79
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 82
    throw p1

    .line 83
    :cond_3
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 86
    const-string v0, "Error during getConfigByUserId API validation as the caller package name validation failed"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Ljava/lang/SecurityException;

    .line 93
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 96
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_1
    monitor-exit p0

    .line 98
    throw p1
.end method

.method public final declared-synchronized getInstanceValidation()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final getKnoxNwFilterHttpProxyPort(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    iget v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_0

    .line 40
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 61
    invoke-interface {p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    .line 64
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    :cond_0
    const/4 p0, -0x1

    .line 67
    :goto_0
    return p0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    .line 8
    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->connectNativeNetdService()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    :try_start_0
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "Failed to get OemNetd listener "

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 39
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 44
    return-object p0
.end method

.method public final getPkgNameForTcpV4Port(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 15
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 18
    const-string v4, ""

    .line 20
    if-eq v0, v2, :cond_0

    .line 22
    const-string/jumbo p0, "unauthorized caller for getPkgNameForTcpV4Port"

    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v4

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v5

    .line 33
    const/4 v0, -0x1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 50
    const-string v1, "_"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const/4 v1, 0x0

    .line 57
    aget-object p0, p0, v1

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    move-result v0

    .line 63
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 70
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    :try_start_1
    const-string p0, "RemoteException"

    .line 80
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_0

    .line 84
    :catch_1
    const-string p0, "SecurityException"

    .line 86
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_0

    .line 90
    :catch_2
    const-string p0, "IllegalArgumentException"

    .line 92
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    sget-boolean p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->DBG:Z

    .line 98
    if-eqz p0, :cond_2

    .line 100
    const-string/jumbo p0, "getPkgNameForTcpV4Port value is "

    .line 103
    const-string v1, " for uid "

    .line 105
    const-string v2, " port value is "

    .line 107
    invoke-static {v0, p0, v4, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0, p1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 114
    :cond_2
    return-object v4

    .line 115
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw p0
.end method

.method public final getPkgNameForTcpV6Port(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 15
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 18
    const-string v4, ""

    .line 20
    if-eq v0, v2, :cond_0

    .line 22
    const-string/jumbo p0, "unauthorized caller for getPkgNameForTcpV6Port"

    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v4

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v5

    .line 33
    const/4 v0, -0x1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 50
    const-string v1, "_"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const/4 v1, 0x0

    .line 57
    aget-object p0, p0, v1

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    move-result v0

    .line 63
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 70
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    :try_start_1
    const-string p0, "RemoteException"

    .line 80
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_0

    .line 84
    :catch_1
    const-string p0, "SecurityException"

    .line 86
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_0

    .line 90
    :catch_2
    const-string p0, "IllegalArgumentException"

    .line 92
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    sget-boolean p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->DBG:Z

    .line 98
    if-eqz p0, :cond_2

    .line 100
    const-string/jumbo p0, "getPkgNameForTcpV6Port value is "

    .line 103
    const-string v1, " for uid "

    .line 105
    const-string v2, " port value is "

    .line 107
    invoke-static {v0, p0, v4, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0, p1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 114
    :cond_2
    return-object v4

    .line 115
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw p0
.end method

.method public final declared-synchronized getProfileForUser(I)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result p1

    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo v1, "com.android.vpndialogs"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 50
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    .line 56
    return-object p1

    .line 57
    :cond_1
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 60
    const-string v0, "Error during getProfileForUser API validation as the caller is not platform signed"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance p1, Ljava/lang/SecurityException;

    .line 67
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 70
    throw p1

    .line 71
    :cond_2
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 74
    const-string v0, "Error during getProfileForUser API validation as the caller package name validation failed"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p1, Ljava/lang/SecurityException;

    .line 81
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 84
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_1
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public final declared-synchronized getProfileStatus(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getProfileStatus validation failed with error code "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_4

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 40
    move-result v1

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eq v1, v3, :cond_2

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    move-result v3

    .line 48
    if-eq v1, v3, :cond_2

    .line 50
    const/16 v2, -0xc

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/4 v2, -0x7

    .line 54
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 56
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    return v2

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 86
    move-result-object p1

    .line 87
    iget p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    const/4 p1, -0x2

    .line 91
    :goto_2
    monitor-exit p0

    .line 92
    return p1

    .line 93
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 95
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 98
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_3
    monitor-exit p0

    .line 100
    throw p1
.end method

.method public final declared-synchronized getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "getRegisteredListeners validation failed with error code "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_4

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 40
    move-result v1

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eq v1, v3, :cond_2

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    move-result v3

    .line 48
    if-eq v1, v3, :cond_2

    .line 50
    const/16 v2, -0xc

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/4 v2, -0x7

    .line 54
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 56
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    .line 89
    return-object p1

    .line 90
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 92
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 95
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :goto_2
    monitor-exit p0

    .line 97
    throw p1
.end method

.method public final declared-synchronized getRegisteredPackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 7
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppsByAdminId(I)Ljava/util/List;

    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public final getTcpV4PortInfo(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 15
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 18
    const-string v4, ""

    .line 20
    if-eq v0, v2, :cond_0

    .line 22
    const-string/jumbo p0, "unauthorized caller for getTcpV4PortInfo"

    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v4

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v5

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    .line 40
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    :try_start_1
    const-string p0, "RemoteException"

    .line 49
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    const-string p0, "SecurityException"

    .line 55
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    goto :goto_0

    .line 59
    :catch_2
    const-string p0, "IllegalArgumentException"

    .line 61
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    sget-boolean p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->DBG:Z

    .line 67
    if-eqz p0, :cond_1

    .line 69
    const-string/jumbo p0, "portInfo value is "

    .line 72
    const-string v0, " port value is "

    .line 74
    invoke-static {p1, p0, v4, v0, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    return-object v4

    .line 78
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public final getTcpV6PortInfo(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 15
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 18
    const-string v4, ""

    .line 20
    if-eq v0, v2, :cond_0

    .line 22
    const-string/jumbo p0, "unauthorized caller for getTcpV6PortInfo "

    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v4

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v5

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    .line 40
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    :try_start_1
    const-string p0, "RemoteException"

    .line 49
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    const-string p0, "SecurityException"

    .line 55
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    goto :goto_0

    .line 59
    :catch_2
    const-string p0, "IllegalArgumentException"

    .line 61
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    sget-boolean p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->DBG:Z

    .line 67
    if-eqz p0, :cond_1

    .line 69
    const-string/jumbo p0, "getTcpV6PortInfo value is "

    .line 72
    const-string v0, " port value is "

    .line 74
    invoke-static {p1, p0, v4, v0, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    return-object v4

    .line 78
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public final getUdpV6PortInfo(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 15
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 18
    const-string v4, ""

    .line 20
    if-eq v0, v2, :cond_0

    .line 22
    const-string/jumbo p0, "unauthorized caller for getUdpV6PortInfo"

    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v4

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v5

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterUdpV6Entry(II)Ljava/lang/String;

    .line 40
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    :try_start_1
    const-string p0, "RemoteException"

    .line 49
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    const-string p0, "SecurityException"

    .line 55
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    goto :goto_0

    .line 59
    :catch_2
    const-string p0, "IllegalArgumentException"

    .line 61
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    sget-boolean p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->DBG:Z

    .line 67
    if-eqz p0, :cond_1

    .line 69
    const-string/jumbo p0, "getUdpV6PortInfo value is "

    .line 72
    const-string v0, " port value is "

    .line 74
    invoke-static {p1, p0, v4, v0, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    return-object v4

    .line 78
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public final declared-synchronized handleVendorPackageUninstall(ILjava/lang/String;Z)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 11
    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v2, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 20
    move-result v3

    .line 21
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_3

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x2

    .line 38
    const/16 v9, 0xa

    .line 40
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 43
    move-result-object v10

    .line 44
    const/4 v11, 0x6

    .line 45
    invoke-interface {v10, v2, v8, v11, v7}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 51
    move-result-object v10

    .line 52
    invoke-interface {v10, v2, v9, v11, v7}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 58
    move-result-object v10

    .line 59
    const/16 v11, 0x11

    .line 61
    invoke-interface {v10, v2, v9, v11, v7}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 67
    move-result-object v10

    .line 68
    invoke-interface {v10, v2}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :catch_0
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_3

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw v0

    .line 83
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    .line 86
    iget-object v5, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v6

    .line 92
    const/4 v10, 0x0

    .line 93
    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 99
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 111
    iget-object v11, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v11

    .line 121
    check-cast v11, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :catch_1
    :try_start_4
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :catch_2
    :try_start_5
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    :catch_3
    :try_start_6
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 135
    :catch_4
    :try_start_7
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    :catch_5
    :try_start_8
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    :catch_6
    const/4 v12, -0x1

    .line 142
    :try_start_9
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    .line 145
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    .line 148
    move-result-object v13
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 149
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 152
    move-result-object v14

    .line 153
    invoke-interface {v14, v2, v12}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 156
    goto :goto_1

    .line 157
    :catch_7
    move-object v13, v10

    .line 158
    :catch_8
    :goto_1
    :try_start_b
    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 160
    invoke-virtual {v14, v4, v13, v7, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 163
    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 165
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 171
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 174
    move-result-object v13

    .line 175
    invoke-interface {v13, v2}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    .line 178
    move-result v13

    .line 179
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 185
    move-result-object v13

    .line 186
    invoke-interface {v13, v2}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 192
    move-result-object v13

    .line 193
    invoke-interface {v13, v2, v12}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 199
    move-result-object v13

    .line 200
    invoke-interface {v13, v3}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 203
    :catch_9
    :try_start_d
    sget-object v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    .line 205
    aget-object v3, v3, v7

    .line 207
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 209
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    invoke-static {v2, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 215
    move-result v3

    .line 216
    if-eq v3, v12, :cond_0

    .line 218
    invoke-virtual {p0, v3, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 221
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 224
    if-nez v2, :cond_1

    .line 226
    const/4 v3, 0x1

    .line 227
    const/16 v7, 0x270f

    .line 229
    invoke-virtual {p0, v3, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 232
    :cond_1
    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 235
    move-result-object v3

    .line 236
    if-eqz v3, :cond_2

    .line 238
    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 240
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 243
    move-result-object v3

    .line 244
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    move-result v7

    .line 248
    if-eqz v7, :cond_2

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Ljava/lang/Integer;

    .line 256
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 259
    move-result v7

    .line 260
    invoke-virtual {p0, v7, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    .line 263
    goto :goto_2

    .line 264
    :cond_2
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 266
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedDOTBlockRules(I)V

    .line 272
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 274
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 279
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    .line 285
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    .line 293
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 295
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    .line 301
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    .line 309
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 311
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    invoke-static {v2, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 317
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 319
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    .line 325
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 327
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    invoke-static {v2, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    .line 333
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 335
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 341
    :try_start_e
    invoke-interface {v5, v4, v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v6, v4, v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-interface {v11, v4, v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 350
    :catch_a
    :try_start_f
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 352
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 358
    :catch_b
    :try_start_10
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 360
    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    .line 366
    :cond_3
    if-eqz p3, :cond_4

    .line 368
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 371
    const-string/jumbo v4, "removing the configs set for authorized user after the vendor package uninstall"

    .line 374
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 379
    move-object/from16 v4, p2

    .line 381
    invoke-virtual {v3, v0, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unRegisterFilterList()V

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unbindInternalProxyServices(I)V

    .line 390
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeIpTableChains(I)V

    .line 398
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    .line 401
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 406
    :cond_4
    monitor-exit p0

    .line 407
    return-void

    .line 408
    :goto_3
    monitor-exit p0

    .line 409
    throw v0
.end method

.method public final initializeModules()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isRegisterDbEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 9
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string v2, "UnManagedNwFilterMgr"

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    if-nez v1, :cond_2

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->registerFilterList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    :cond_2
    return-void
.end method

.method public final declared-synchronized isAuthorized()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v0

    .line 6
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 21
    invoke-virtual {v3, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->prepareFilteringValidation(ILjava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 26
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    .line 29
    const-string v4, " Permission not granted"

    .line 31
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    .line 39
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return v0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized pause(Ljava/lang/String;)I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    const/4 p0, -0x1

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public final declared-synchronized prepareFiltering(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 7

    .line 1
    const-string v0, "KnoxAnalyticsData:registerNetworkFilter API getting logged due to end-user authorization for caller "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const-string/jumbo v3, "com.android.vpndialogs"

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_4

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 49
    move-result v1

    .line 50
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 52
    const-string v4, " Permission not granted"

    .line 54
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual {v3, v5, v6, v1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 63
    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->prepareFilteringValidation(ILjava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 68
    invoke-virtual {v3, v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addAuthorizedInfoToDatabase(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 71
    move-result v3

    .line 72
    const/4 v4, -0x8

    .line 73
    if-nez v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 77
    invoke-virtual {v3, v1, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 85
    invoke-virtual {v3, v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addAuthorizedInfoToDatabase(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_1

    .line 91
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 94
    const-string/jumbo p2, "prepareFiltering: inserting info into db failed during second attempt"

    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    .line 101
    return v4

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto/16 :goto_0

    .line 105
    :cond_0
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 108
    const-string/jumbo p2, "prepareFiltering: inserting info into db failed"

    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit p0

    .line 115
    return v4

    .line 116
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 118
    const-string/jumbo v3, "com.samsung.android.knox.app.networkfilter"

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-static {v2, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 127
    move-result p2

    .line 128
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 131
    move-result p2

    .line 132
    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->initializeModules()V

    .line 140
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createIpTableChains(I)V

    .line 148
    const/4 p2, -0x1

    .line 149
    const/4 v3, 0x1

    .line 150
    if-eq v1, p2, :cond_2

    .line 152
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 154
    invoke-virtual {p2, v1, p1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    .line 157
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 159
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    :cond_2
    new-instance p2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 164
    const-string v1, "KNOX_ZT"

    .line 166
    const-string v4, "ZTNA_USAGE"

    .line 168
    invoke-direct {p2, v1, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    const-string v1, "apiN"

    .line 173
    const-string/jumbo v3, "registerNetworkFilter"

    .line 176
    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "pkgN"

    .line 182
    invoke-virtual {p2, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "eInfo"

    .line 188
    const-string v3, "100"

    .line 190
    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 196
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string p1, " "

    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    monitor-exit p0

    .line 226
    return v6

    .line 227
    :catch_0
    :try_start_5
    const-string/jumbo p2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 230
    const-string/jumbo v0, "removing the inserted info from db since internal binding failed"

    .line 233
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 238
    invoke-virtual {p2, v1, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    monitor-exit p0

    .line 242
    return v4

    .line 243
    :cond_3
    :try_start_6
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 246
    const-string p2, "Error during prepareFiltering API validation as the caller is not platform signed"

    .line 248
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance p1, Ljava/lang/SecurityException;

    .line 253
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 256
    throw p1

    .line 257
    :cond_4
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 260
    const-string p2, "Error during prepareFiltering API validation as the caller package name validation failed"

    .line 262
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance p1, Ljava/lang/SecurityException;

    .line 267
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 270
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    :goto_0
    monitor-exit p0

    .line 272
    throw p1
.end method

.method public final declared-synchronized registerApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5

    .line 1
    const-string v0, "KnoxAnalyticsData:registerNetworkFilter API getting logged for caller "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v2, -0x6

    .line 13
    if-eqz p2, :cond_4

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v3

    .line 28
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 30
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isRegisterDbEmpty()Z

    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 36
    const/16 v1, -0x9

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isPackageInstalled(ILjava/lang/String;)Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 45
    if-eqz p3, :cond_2

    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_2

    .line 53
    invoke-virtual {v1, v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez v1, :cond_2

    .line 65
    const/4 v1, -0x3

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v1, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v1, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    :goto_0
    const/16 v1, -0xa

    .line 73
    :goto_1
    if-eqz v1, :cond_5

    .line 75
    if-eq v1, v2, :cond_5

    .line 77
    monitor-exit p0

    .line 78
    return v1

    .line 79
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 81
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 83
    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addRegisterInfoToDatabase(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_6

    .line 89
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 92
    const-string/jumbo p2, "registerApplication: inserting info into db failed"

    .line 95
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    .line 99
    const/4 p0, -0x8

    .line 100
    return p0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    :try_start_2
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 105
    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 107
    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter"

    .line 110
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-static {p4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 116
    move-result p3

    .line 117
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 120
    move-result p3

    .line 121
    iput p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 123
    new-instance p3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 125
    const-string p4, "KNOX_ZT"

    .line 127
    const-string v2, "ZTNA_USAGE"

    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-direct {p3, p4, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    iget-object p4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 135
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 137
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 143
    move-result-object p4

    .line 144
    const-string v2, "apiN"

    .line 146
    const-string/jumbo v3, "registerNetworkFilter"

    .line 149
    invoke-virtual {p3, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v2, "pkgN"

    .line 155
    invoke-virtual {p3, v2, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 160
    invoke-virtual {p3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 163
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string p4, " "

    .line 176
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 181
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p4

    .line 188
    invoke-static {v2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 194
    new-instance p3, Landroid/os/Bundle;

    .line 196
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string/jumbo p4, "userId"

    .line 202
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 204
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string/jumbo p1, "package"

    .line 210
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 p1, 0xa

    .line 215
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    monitor-exit p0

    .line 219
    return v1

    .line 220
    :goto_2
    monitor-exit p0

    .line 221
    throw p1
.end method

.method public final registerFilterList()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 19
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 24
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 29
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 34
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v2, "android.intent.category.DEFAULT"

    .line 39
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "package"

    .line 45
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 50
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    .line 52
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    move-object v4, v8

    .line 57
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 60
    new-instance v9, Landroid/content/IntentFilter;

    .line 62
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 67
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 72
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 77
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 83
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 88
    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 93
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v12, 0x2

    .line 97
    const/4 v10, 0x0

    .line 98
    invoke-virtual/range {v6 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0
.end method

.method public final declared-synchronized registerListeners(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string/jumbo v0, "enable clearing the dns system cache for user "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v1

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    move-result v2

    .line 24
    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    .line 26
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 32
    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->registerListenersValidation(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v3, :cond_0

    .line 38
    monitor-exit p0

    .line 39
    return v3

    .line 40
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 53
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 65
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 77
    const/4 v7, -0x8

    .line 78
    if-eqz v4, :cond_4

    .line 80
    if-eqz v6, :cond_4

    .line 82
    if-nez v5, :cond_1

    .line 84
    goto/16 :goto_6

    .line 86
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 88
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    const-string/jumbo v8, "knoxNwFilter-KnoxNetworkFilterService"

    .line 97
    new-instance v9, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 115
    move-result-object v0

    .line 116
    const/4 v8, 0x1

    .line 117
    invoke-interface {v0, v1, v8}, Lcom/android/internal/net/IOemNetd;->setDnsCacheStatus(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    goto/16 :goto_7

    .line 124
    :catch_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    const/4 v0, 0x0

    .line 130
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    .line 132
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v8, "cache"

    .line 138
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lorg/json/JSONObject;

    .line 144
    if-eqz v1, :cond_2

    .line 146
    const-string/jumbo v8, "clearCache"

    .line 149
    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 152
    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :catch_1
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 164
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 167
    move-result-object v1

    .line 168
    iput-object p2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 173
    move-result-object v1

    .line 174
    iput v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :cond_3
    :try_start_6
    invoke-interface {v4, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v4, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 185
    const-string/jumbo v4, "dns"

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-static {v2, v4, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 194
    goto :goto_2

    .line 195
    :catch_2
    :try_start_7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 198
    const-string/jumbo v1, "registerListeners:dns:error occurred since the remote service is null"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    move v3, v7

    .line 205
    goto :goto_2

    .line 206
    :catch_3
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 209
    const-string/jumbo v1, "registerListeners:dns:IllegalArgumentException"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto :goto_1

    .line 216
    :catch_4
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 219
    const-string/jumbo v1, "registerListeners:dns:error occured while communicating to remote service"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 225
    goto :goto_1

    .line 226
    :goto_2
    :try_start_8
    invoke-interface {v6, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v6, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 232
    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 235
    const-string/jumbo v4, "tcp"

    .line 238
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    invoke-static {v2, v4, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 244
    goto :goto_4

    .line 245
    :catch_5
    :try_start_9
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 248
    const-string/jumbo v1, "registerListeners:tcp:error occurred since the remote service is null"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_3
    move v3, v7

    .line 255
    goto :goto_4

    .line 256
    :catch_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 259
    const-string/jumbo v1, "registerListeners:tcp:IllegalArgumentException"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto :goto_3

    .line 266
    :catch_7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 269
    const-string/jumbo v1, "registerListeners:tcp:error occured while communicating to remote service"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 275
    goto :goto_3

    .line 276
    :goto_4
    :try_start_a
    invoke-interface {v5, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-interface {v5, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    .line 282
    move-result-object p1

    .line 283
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 285
    const-string/jumbo v0, "udp"

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    invoke-static {v2, v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 294
    move v7, v3

    .line 295
    goto :goto_5

    .line 296
    :catch_8
    :try_start_b
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 299
    const-string/jumbo p2, "registerListeners:udp:error occurred since the remote service is null"

    .line 302
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    goto :goto_5

    .line 306
    :catch_9
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 309
    const-string/jumbo p2, "registerListeners:udp:IllegalArgumentException"

    .line 312
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto :goto_5

    .line 316
    :catch_a
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 319
    const-string/jumbo p2, "registerListeners:udp:error occured while communicating to remote service"

    .line 322
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 325
    :goto_5
    monitor-exit p0

    .line 326
    return v7

    .line 327
    :cond_4
    :goto_6
    monitor-exit p0

    .line 328
    return v7

    .line 329
    :goto_7
    monitor-exit p0

    .line 330
    throw p1
.end method

.method public final registerSystemDefaultNetworkCallback(I)V
    .locals 7

    .line 1
    const-string v0, "Failed to register system default network callback "

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string p0, "Default network callback is already registered, skipping registering"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v3

    .line 28
    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;

    .line 30
    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    .line 33
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mCm:Landroid/net/ConnectivityManager;

    .line 35
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    .line 37
    invoke-virtual {v5, v1, v6}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    return-void

    .line 77
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0
.end method

.method public final releaseNwFilterNetId(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v2, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    goto :goto_2

    .line 19
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    throw p0

    .line 23
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V

    .line 28
    return-void
.end method

.method public final declared-synchronized removeConfigByEnduser()V
    .locals 7

    .line 1
    const-string v0, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged due to end-user stopping manually for caller "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const-string/jumbo v3, "com.android.vpndialogs"

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 49
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez v1, :cond_0

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 62
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const/4 v3, -0x1

    .line 64
    if-ne v1, v3, :cond_1

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_1
    :try_start_2
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 70
    const-string v4, "KNOX_ZT"

    .line 72
    const-string v5, "ZTNA_USAGE"

    .line 74
    const/4 v6, 0x1

    .line 75
    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    const-string v5, "apiN"

    .line 89
    const-string/jumbo v6, "unregisterNetworkFilter"

    .line 92
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v5, "pkgN"

    .line 98
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v5, "eInfo"

    .line 104
    const-string v6, "203"

    .line 106
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 112
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, " "

    .line 125
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 141
    new-instance v0, Landroid/os/Bundle;

    .line 143
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    const-string/jumbo v2, "uid"

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const/16 v1, 0xd

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    monitor-exit p0

    .line 158
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    :try_start_3
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 164
    const-string v1, "Error during removeConfigByEnduser API validation as the caller is not platform signed"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Ljava/lang/SecurityException;

    .line 171
    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    .line 174
    throw v0

    .line 175
    :cond_3
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 178
    const-string v1, "Error during removeConfigByEnduser API validation as the caller package name validation failed"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Ljava/lang/SecurityException;

    .line 185
    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    .line 188
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :goto_0
    monitor-exit p0

    .line 190
    throw v0
.end method

.method public final removeExemptUidFromNwFilterRange(II)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Landroid/net/UidRangeParcel;

    .line 12
    invoke-direct {v3, p1, p2}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v4

    .line 26
    new-array v4, v4, [Landroid/net/UidRangeParcel;

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 34
    invoke-interface {v3, v2}, Lcom/android/internal/net/IOemNetd;->removeExemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p0

    .line 46
    :goto_0
    if-ne p1, p2, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string p2, "_knox_nwfilter_app_act"

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    .line 76
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v7, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 91
    const-string v9, " -m owner --uid-owner "

    .line 93
    invoke-static {p1, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    sget-object v10, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 99
    const-string v3, "ACCEPT"

    .line 101
    const-string v4, ""

    .line 103
    move-object v0, v8

    .line 104
    move-object v1, p0

    .line 105
    move-object v5, v10

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 109
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 114
    invoke-static {p1, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    const-string v3, "ACCEPT"

    .line 120
    const-string v4, ""

    .line 122
    move-object v0, v8

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 126
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 131
    invoke-static {p1, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    const-string v3, "ACCEPT"

    .line 137
    const-string v4, ""

    .line 139
    move-object v0, v8

    .line 140
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 143
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string p0, "*nat"

    .line 148
    const/4 p1, 0x4

    .line 149
    const/4 v0, 0x1

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-static {p1, p0, v1, p2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 154
    const-string p0, "*filter"

    .line 156
    const/16 p1, 0x2e

    .line 158
    invoke-static {p1, p0, v1, v6, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 161
    const-string p0, "*mangle"

    .line 163
    const/4 p1, 0x6

    .line 164
    invoke-static {p1, p0, v1, v7, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public final sendBootStatusIntent(IIIILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 7
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 10
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ERROR_CODE"

    .line 19
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    const/high16 p3, 0x4000000

    .line 24
    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    const/16 p3, 0x20

    .line 29
    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    const/high16 p3, 0x1000000

    .line 34
    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const-string/jumbo p3, "com.samsung.android.knox.intent.extra.TYPE"

    .line 40
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.STATUS"

    .line 43
    if-eqz p2, :cond_1

    .line 45
    const/4 v4, 0x6

    .line 46
    if-eq p2, v4, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p2, 0x7

    .line 50
    :try_start_1
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 p2, 0x1

    .line 60
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :goto_0
    invoke-virtual {v2, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 71
    new-instance p2, Landroid/os/UserHandle;

    .line 73
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 76
    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    return-void

    .line 83
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0
.end method

.method public final sendEMMStatusIntent(IILjava/lang/String;)V
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 10
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 13
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NOTIFY_NETWORK_FILTER_STATUS"

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const/high16 v3, 0x4000000

    .line 21
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const/16 v3, 0x20

    .line 26
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    const/high16 v3, 0x1000000

    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 v3, 0x1

    .line 35
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.STATUS"

    .line 38
    if-eq p2, v3, :cond_3

    .line 40
    const/4 v3, 0x3

    .line 41
    const/4 v5, 0x2

    .line 42
    if-eq p2, v5, :cond_2

    .line 44
    if-eq p2, v3, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    :goto_0
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 65
    new-instance p2, Landroid/os/UserHandle;

    .line 67
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 70
    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    return-void

    .line 77
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0
.end method

.method public final sendMessageToHandler(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    :cond_0
    return-void
.end method

.method public final sendStatusIntent(IIILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 7
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 10
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ERROR_CODE"

    .line 19
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    const/high16 p3, 0x4000000

    .line 24
    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    const/16 p3, 0x20

    .line 29
    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    const/high16 p3, 0x1000000

    .line 34
    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const-string/jumbo p3, "com.samsung.android.knox.intent.extra.STATUS"

    .line 40
    packed-switch p2, :pswitch_data_0

    .line 43
    goto :goto_0

    .line 44
    :pswitch_0
    const/4 p2, 0x7

    .line 45
    :try_start_1
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :pswitch_1
    const/16 p2, 0x67

    .line 53
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    goto :goto_0

    .line 57
    :pswitch_2
    const/4 p2, 0x2

    .line 58
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    goto :goto_0

    .line 62
    :pswitch_3
    const/16 p2, 0x66

    .line 64
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    goto :goto_0

    .line 68
    :pswitch_4
    const/16 p2, 0x65

    .line 70
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    goto :goto_0

    .line 74
    :pswitch_5
    const/16 p2, 0x64

    .line 76
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    goto :goto_0

    .line 80
    :pswitch_6
    const/4 p2, 0x1

    .line 81
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    :goto_0
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 89
    new-instance p2, Landroid/os/UserHandle;

    .line 91
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 94
    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    return-void

    .line 101
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw p0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .line 1
    const-string v0, "KnoxAnalyticsData:setConfig API for managed config removal getting logged for caller "

    .line 3
    const-string v1, "KnoxAnalyticsData:unregisterNetworkFilter API for unmanaged config removal getting logged for caller "

    .line 5
    const-string v2, "KnoxAnalyticsData:setConfig API getting logged for caller "

    .line 7
    const-string/jumbo v3, "config is being updated for an active running profile "

    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    move-result v4

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    move-result v5

    .line 22
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    move-result v5

    .line 26
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 37
    invoke-virtual {v7, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->setConfigValidation(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz v7, :cond_0

    .line 43
    monitor-exit p0

    .line 44
    return v7

    .line 45
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 47
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 53
    move-result-object v8

    .line 54
    iget v8, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto/16 :goto_6

    .line 60
    :catch_0
    const/4 v8, 0x6

    .line 61
    :goto_0
    const/4 v9, 0x3

    .line 62
    if-eqz p2, :cond_2

    .line 64
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-ne v8, v9, :cond_3

    .line 73
    const-string/jumbo v8, "knoxNwFilter-KnoxNetworkFilterService"

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    :goto_1
    if-ne v8, v9, :cond_3

    .line 94
    monitor-exit p0

    .line 95
    const/16 p0, -0x9

    .line 97
    return p0

    .line 98
    :cond_3
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v8

    .line 104
    const/4 v9, 0x0

    .line 105
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 111
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 123
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    const/4 v10, -0x8

    .line 136
    if-eqz v3, :cond_9

    .line 138
    if-eqz v9, :cond_9

    .line 140
    if-nez v8, :cond_4

    .line 142
    goto/16 :goto_5

    .line 144
    :cond_4
    :try_start_4
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-result v7
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :catch_1
    :try_start_5
    invoke-interface {v9, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-result v7
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    :catch_2
    :try_start_6
    invoke-interface {v8, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-result v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    :catch_3
    :try_start_7
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 158
    const-string v8, "KNOX_ZT"

    .line 160
    const-string v9, "ZTNA_USAGE"

    .line 162
    const/4 v11, 0x1

    .line 163
    invoke-direct {v3, v8, v11, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    const-string/jumbo v8, "pkgN"

    .line 169
    invoke-virtual {v3, v8, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v8, "apiN"

    .line 174
    const-string/jumbo v9, "setConfig"

    .line 177
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 183
    if-eqz p2, :cond_7

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 188
    move-result v8

    .line 189
    if-eqz v8, :cond_5

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, " "

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 223
    invoke-virtual {v0, v4, p1, p2, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addVendorInfoToStorage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 227
    if-nez p1, :cond_6

    .line 229
    monitor-exit p0

    .line 230
    return v10

    .line 231
    :cond_6
    monitor-exit p0

    .line 232
    return v7

    .line 233
    :cond_7
    :goto_3
    :try_start_8
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 235
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 238
    :try_start_9
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 246
    :catch_4
    :try_start_a
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 248
    invoke-virtual {p1, v4, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z

    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_8

    .line 254
    const-string p1, "apiN"

    .line 256
    const-string/jumbo p2, "unregisterNetworkFilter"

    .line 259
    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo p1, "eInfo"

    .line 265
    const-string p2, "200"

    .line 267
    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v0, " "

    .line 283
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    move-result-object p2

    .line 293
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    goto :goto_4

    .line 297
    :cond_8
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    .line 302
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, " "

    .line 310
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object p2

    .line 320
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_4
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 326
    monitor-exit p0

    .line 327
    const/4 p0, 0x0

    .line 328
    return p0

    .line 329
    :cond_9
    :goto_5
    monitor-exit p0

    .line 330
    return v10

    .line 331
    :goto_6
    monitor-exit p0

    .line 332
    throw p1
.end method

.method public final setupNetworkDns(I)I
    .locals 13

    .line 1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->connectNativeNetdService()V

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    move v3, v1

    .line 10
    move v4, v2

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v5

    .line 15
    const/4 v7, 0x0

    .line 16
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 18
    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->reserveNetId()I

    .line 21
    move-result v3

    .line 22
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v8, :cond_1

    .line 26
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    return v3

    .line 30
    :cond_1
    :try_start_1
    invoke-interface {v8, v3, v7}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 33
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 35
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const-string v9, "DnsResolverAdapter"

    .line 40
    const-string/jumbo v10, "createNetworkCache - entered"

    .line 43
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v10, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;

    .line 48
    const/4 v11, 0x0

    .line 49
    invoke-direct {v10, v3, v11}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;-><init>(II)V

    .line 52
    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    .line 55
    const-string/jumbo v8, "createNetworkCache - exited"

    .line 58
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    new-instance v8, Landroid/net/LinkProperties;

    .line 63
    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 66
    if-nez p1, :cond_2

    .line 68
    const-string v9, "127.0.0.1"

    .line 70
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v8, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_7

    .line 81
    :catch_0
    move-exception v7

    .line 82
    move v8, v2

    .line 83
    goto/16 :goto_3

    .line 85
    :catch_1
    move-exception v4

    .line 86
    goto/16 :goto_5

    .line 88
    :cond_2
    const-string v9, "127.0.0.2"

    .line 90
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v8, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 97
    :goto_0
    new-instance v9, Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 99
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 101
    iget-object v11, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 103
    invoke-direct {v9, v10, v11}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;)V

    .line 106
    iput-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 108
    iget-object v10, v9, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v11

    .line 114
    check-cast v10, Ljava/util/HashMap;

    .line 116
    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 122
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 124
    iput-boolean v7, v8, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    .line 126
    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 129
    const/4 v8, 0x4

    .line 130
    const/4 v9, 0x3

    .line 131
    filled-new-array {v7, v2, v9, v8}, [I

    .line 134
    move-result-object v8

    .line 135
    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 137
    iget-object v10, v9, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v11

    .line 143
    check-cast v10, Ljava/util/HashMap;

    .line 145
    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 151
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 153
    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->flushVmDnsCache()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string/jumbo v8, "setupNetworkDns() - Network created id = "

    .line 164
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v4

    .line 174
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    move v4, v7

    .line 181
    goto/16 :goto_6

    .line 183
    :catch_2
    move-exception v4

    .line 184
    move v8, v2

    .line 185
    move v12, v7

    .line 186
    move-object v7, v4

    .line 187
    move v4, v12

    .line 188
    goto :goto_3

    .line 189
    :goto_2
    move-object v12, v8

    .line 190
    move v8, v7

    .line 191
    move-object v7, v12

    .line 192
    goto :goto_3

    .line 193
    :catch_3
    move-exception v8

    .line 194
    goto :goto_2

    .line 195
    :catch_4
    move-exception v8

    .line 196
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v10, "Error creating private network: "

    .line 203
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v8

    .line 217
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 222
    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    return v1

    .line 229
    :goto_3
    if-eqz v8, :cond_3

    .line 231
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    const-string/jumbo v9, "setupNetworkDns() - Failed to set dns for network "

    .line 239
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object v8

    .line 249
    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 252
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    .line 254
    if-eqz v7, :cond_4

    .line 256
    invoke-interface {v7, v3}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 259
    goto :goto_4

    .line 260
    :catch_5
    move-exception v7

    .line 261
    :try_start_7
    const-string/jumbo v8, "setupNetworkDns() - Failed to remove network"

    .line 264
    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    goto :goto_4

    .line 268
    :cond_3
    const-string/jumbo v8, "setupNetworkDns() - Failed to create new network with id provided."

    .line 271
    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 276
    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 279
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    goto :goto_6

    .line 283
    :goto_5
    :try_start_8
    const-string/jumbo v8, "setupNetworkDns() - Failed creating new network."

    .line 286
    invoke-static {v0, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 289
    goto :goto_1

    .line 290
    :goto_6
    if-nez v4, :cond_0

    .line 292
    return v3

    .line 293
    :goto_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    throw p0
.end method

.method public final declared-synchronized start(Ljava/lang/String;)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 15
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->startValidation(Ljava/lang/String;)I

    .line 18
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v2, :cond_0

    .line 21
    monitor-exit p0

    .line 22
    return v2

    .line 23
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 36
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 48
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 60
    if-eqz v3, :cond_3

    .line 62
    if-eqz v5, :cond_3

    .line 64
    if-nez v4, :cond_1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 75
    move-result-object v3

    .line 76
    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 78
    const/4 v4, 0x3

    .line 79
    if-ne v3, v4, :cond_2

    .line 81
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 84
    const-string/jumbo v0, "skipping start call since the profile is already in running state"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    .line 91
    return v2

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 97
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    const-string/jumbo v5, "net.redirect_socket_calls.hooked"

    .line 101
    const-string/jumbo v6, "true"

    .line 104
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 110
    move-result-object v5

    .line 111
    const/4 v6, 0x1

    .line 112
    invoke-interface {v5, v6}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    :catch_0
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    goto :goto_0

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p1

    .line 124
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->registerSystemDefaultNetworkCallback(I)V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    .line 129
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string/jumbo v3, "uid"

    .line 135
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string/jumbo v0, "profileName"

    .line 141
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/16 p1, 0x8

    .line 146
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    monitor-exit p0

    .line 150
    return v2

    .line 151
    :cond_3
    :goto_1
    monitor-exit p0

    .line 152
    const/4 p0, -0x8

    .line 153
    return p0

    .line 154
    :goto_2
    monitor-exit p0

    .line 155
    throw p1
.end method

.method public final declared-synchronized stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result p2

    .line 6
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "com.android.vpndialogs"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 39
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 47
    move-result p2

    .line 48
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto/16 :goto_3

    .line 56
    :cond_0
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 59
    const-string p2, "Error during stop API validation as the caller is not platform signed"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Ljava/lang/SecurityException;

    .line 66
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 69
    throw p1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 75
    invoke-virtual {v1, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->stopValidation(ILjava/lang/String;)I

    .line 78
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v1, :cond_2

    .line 81
    monitor-exit p0

    .line 82
    return v1

    .line 83
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v3

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 96
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 108
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    .line 120
    if-eqz v2, :cond_5

    .line 122
    if-eqz v4, :cond_5

    .line 124
    if-nez v3, :cond_3

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 135
    move-result-object v2

    .line 136
    iget v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 138
    const/4 v3, 0x3

    .line 139
    if-eq v2, v3, :cond_4

    .line 141
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 144
    const-string/jumbo p2, "skipping stop call since the profile is already in idle state"

    .line 147
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    .line 151
    return v1

    .line 152
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 155
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 159
    move-result-object v4

    .line 160
    const/4 v5, 0x2

    .line 161
    const/4 v6, 0x6

    .line 162
    const/4 v7, 0x0

    .line 163
    invoke-interface {v4, v0, v5, v6, v7}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 169
    move-result-object v4

    .line 170
    const/16 v5, 0xa

    .line 172
    invoke-interface {v4, v0, v5, v6, v7}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 178
    move-result-object v4

    .line 179
    const/16 v6, 0x11

    .line 181
    invoke-interface {v4, v0, v5, v6, v7}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 187
    move-result-object v4

    .line 188
    invoke-interface {v4, v0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    :catch_0
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    goto :goto_1

    .line 195
    :catchall_1
    move-exception p1

    .line 196
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw p1

    .line 200
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    .line 205
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string/jumbo v2, "uid"

    .line 211
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string/jumbo p2, "profileName"

    .line 217
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/16 p1, 0x9

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    monitor-exit p0

    .line 226
    return v1

    .line 227
    :cond_5
    :goto_2
    monitor-exit p0

    .line 228
    const/4 p0, -0x8

    .line 229
    return p0

    .line 230
    :goto_3
    monitor-exit p0

    .line 231
    throw p1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final unRegisterFilterList()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isRegisterDbEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 9
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string v2, "UnManagedNwFilterMgr"

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    if-nez v1, :cond_1

    .line 31
    goto :goto_5

    .line 32
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v0

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    .line 38
    if-eqz v2, :cond_2

    .line 40
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_4

    .line 48
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    goto :goto_3

    .line 54
    :catch_0
    :try_start_1
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    .line 57
    const-string v2, "Error occured while trying to unregister the reciever"

    .line 59
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_2

    .line 63
    :goto_3
    return-void

    .line 64
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0

    .line 68
    :cond_3
    :goto_5
    return-void
.end method

.method public final unbindInternalProxyServices(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/content/ServiceConnection;

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 30
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 53
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/content/ServiceConnection;

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    .line 91
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/content/ServiceConnection;

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_2
    return-void
.end method

.method public final declared-synchronized unregisterApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged for caller "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->unregisterApplicationValidation(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const/4 v2, -0x6

    .line 16
    if-eq v1, v2, :cond_0

    .line 18
    monitor-exit p0

    .line 19
    return v1

    .line 20
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 22
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string/jumbo v3, "pkgName"

    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    filled-new-array {p2}, [Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    const-string v5, "NwFilterMgr"

    .line 37
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 43
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 46
    const-string/jumbo p2, "unregisterApplication: deleting info from db failed"

    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    const/4 p0, -0x8

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :try_start_2
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 59
    const-string v3, "KNOX_ZT"

    .line 61
    const-string v4, "ZTNA_USAGE"

    .line 63
    const/4 v5, 0x1

    .line 64
    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 69
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    const-string v4, "apiN"

    .line 80
    const-string/jumbo v5, "unregisterNetworkFilter"

    .line 83
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v4, "pkgN"

    .line 89
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 94
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 97
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, " "

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 115
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    .line 130
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string/jumbo v2, "userId"

    .line 136
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 138
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string/jumbo p1, "package"

    .line 144
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/16 p1, 0xb

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    monitor-exit p0

    .line 153
    return v1

    .line 154
    :goto_0
    monitor-exit p0

    .line 155
    throw p1
.end method

.method public final unregisterSystemDefaultNetworkCallback(I)V
    .locals 6

    .line 1
    const-string v0, "Failed to unregister system default network callback "

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    .line 16
    if-nez v1, :cond_0

    .line 18
    const-string p0, "Default network callback is not registered, skipping unregistering"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v3

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;

    .line 40
    if-eqz v1, :cond_1

    .line 42
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mCm:Landroid/net/ConnectivityManager;

    .line 44
    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    goto :goto_2

    .line 65
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    goto :goto_0

    .line 85
    :goto_2
    return-void

    .line 86
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    throw p0
.end method
