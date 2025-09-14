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
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_b

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p1, v0, :cond_b

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_a

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 33
    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    :goto_0
    move v2, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 49
    .line 50
    check-cast v3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v2, v3, :cond_4

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 59
    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 67
    .line 68
    iget v3, v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mNetId:I

    .line 69
    .line 70
    if-ne p1, v3, :cond_3

    .line 71
    .line 72
    monitor-exit v1

    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 78
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

    .line 83
    .line 84
    const-string p0, "DomainFilter"

    .line 85
    .line 86
    const-string/jumbo p1, "releaseNetworkId() - No network to release"

    .line 87
    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto/16 :goto_b

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 95
    .line 96
    if-nez v0, :cond_6

    .line 97
    .line 98
    const-string/jumbo v0, "network_management"

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 112
    .line 113
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 114
    .line 115
    if-nez v0, :cond_7

    .line 116
    .line 117
    const-string p0, "DomainFilter"

    .line 118
    .line 119
    const-string/jumbo p1, "releaseNetworkId() - failed to retrieve NetworkManagementService instance"

    .line 120
    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto/16 :goto_b

    .line 126
    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-nez v0, :cond_8

    .line 132
    .line 133
    const-string p0, "DomainFilter"

    .line 134
    .line 135
    const-string/jumbo p1, "releaseNetworkId() - failed to retrieve ConnectivityService instance"

    .line 136
    .line 137
    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_b

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 146
    .line 147
    check-cast v1, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 154
    .line 155
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 156
    :try_start_2
    iget v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    .line 157
    .line 158
    add-int/lit8 v3, v3, -0x1

    .line 159
    .line 160
    iput v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 161
    .line 162
    :try_start_3
    monitor-exit v1

    .line 163
    if-nez v3, :cond_a

    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 166
    .line 167
    check-cast v1, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 173
    .line 174
    .line 175
    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 177
    .line 178
    if-eqz v3, :cond_9

    .line 179
    .line 180
    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 181
    .line 182
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

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 192
    .line 193
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 194
    .line 195
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

    .line 200
    .line 201
    const-string/jumbo v5, "releaseNetworkId() - failed to remove network"

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    .line 206
    .line 207
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 217
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V

    .line 219
    .line 220
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

    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    :goto_a
    const-string p0, "DomainFilter"

    .line 237
    .line 238
    const-string/jumbo p1, "releaseNetworkId() - No network to release"

    .line 239
    .line 240
    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :goto_b
    return-void
.end method
