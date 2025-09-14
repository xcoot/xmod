.class public final Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

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
    if-eqz v0, :cond_0

    .line 5
    goto/16 :goto_b

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p1, v0, :cond_b

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    goto/16 :goto_a

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 42
    :goto_0
    move v2, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 46
    monitor-enter v1

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 50
    check-cast v3, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v3

    .line 56
    if-ge v2, v3, :cond_4

    .line 58
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 68
    iget v3, v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mNetId:I

    .line 70
    if-ne p1, v3, :cond_3

    .line 72
    monitor-exit v1

    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto/16 :goto_9

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :goto_2
    if-ne v2, v0, :cond_5

    .line 84
    const-string p0, "DomainFilter"

    .line 86
    const-string/jumbo p1, "releaseNetworkId() - No network to release"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto/16 :goto_b

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 96
    if-nez v0, :cond_6

    .line 98
    const-string/jumbo v0, "network_management"

    .line 101
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_6

    .line 107
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 115
    if-nez v0, :cond_7

    .line 117
    const-string p0, "DomainFilter"

    .line 119
    const-string/jumbo p1, "releaseNetworkId() - failed to retrieve NetworkManagementService instance"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto/16 :goto_b

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    .line 130
    move-result-object v0

    .line 131
    if-nez v0, :cond_8

    .line 133
    const-string p0, "DomainFilter"

    .line 135
    const-string/jumbo p1, "releaseNetworkId() - failed to retrieve ConnectivityService instance"

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_b

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 144
    monitor-enter v0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 147
    check-cast v1, Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 155
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 156
    :try_start_2
    iget v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    .line 158
    add-int/lit8 v3, v3, -0x1

    .line 160
    iput v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 162
    :try_start_3
    monitor-exit v1

    .line 163
    if-nez v3, :cond_a

    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 167
    check-cast v1, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 175
    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 178
    if-eqz v3, :cond_9

    .line 180
    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    goto :goto_3

    .line 184
    :catchall_1
    move-exception v3

    .line 185
    goto :goto_6

    .line 186
    :catch_0
    move-exception v3

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    :goto_3
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 193
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 196
    goto :goto_7

    .line 197
    :catchall_2
    move-exception p0

    .line 198
    goto :goto_8

    .line 199
    :goto_5
    :try_start_6
    const-string v4, "DomainFilter"

    .line 201
    const-string/jumbo v5, "releaseNetworkId() - failed to remove network"

    .line 204
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 212
    goto :goto_4

    .line 213
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V

    .line 221
    throw v3

    .line 222
    :cond_a
    :goto_7
    monitor-exit v0

    .line 223
    goto :goto_b

    .line 224
    :catchall_3
    move-exception p0

    .line 225
    monitor-exit v1

    .line 226
    throw p0

    .line 227
    :goto_8
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 228
    throw p0

    .line 229
    :goto_9
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 230
    throw p0

    .line 231
    :cond_b
    sget p1, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    :goto_a
    const-string p0, "DomainFilter"

    .line 238
    const-string/jumbo p1, "releaseNetworkId() - No network to release"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_b
    return-void
.end method
