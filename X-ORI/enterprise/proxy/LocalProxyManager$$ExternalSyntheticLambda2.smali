.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final runOrThrow$com$android$server$enterprise$proxy$LocalProxyManager$$ExternalSyntheticLambda6()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const-string v0, "LocalProxyManager"

    .line 9
    .line 10
    const-string v1, "Stopping enterprise proxy server"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 16
    .line 17
    .line 18
    const-string v0, "Clear notification dialog"

    .line 19
    .line 20
    const-string v1, "LocalProxyManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "NotificationManager is null"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 60
    .line 61
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 68
    .line 69
    monitor-exit v1

    .line 70
    goto :goto_2

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_2
    :goto_2
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_3
    monitor-exit p0

    .line 77
    throw v0
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 9
    .line 10
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 11
    .line 12
    const-string v1, "LocalProxyManager"

    .line 13
    .line 14
    const/16 v2, 0x3e1

    .line 15
    .line 16
    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->runOrThrow$com$android$server$enterprise$proxy$LocalProxyManager$$ExternalSyntheticLambda6()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "com.samsung.android.mdm"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/16 v2, 0xc

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    .line 81
    .line 82
    invoke-virtual {v2, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v0

    .line 88
    :try_start_0
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 89
    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0

    .line 95
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 98
    .line 99
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 106
    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    const-string v0, "LocalProxyManager"

    .line 109
    .line 110
    const-string v1, "Starting enterprise proxy server"

    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    if-nez v0, :cond_0

    .line 118
    .line 119
    const-string v0, "LocalProxyManager"

    .line 120
    .line 121
    const-string v1, "No context for binding"

    .line 122
    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .line 125
    .line 126
    monitor-exit p0

    .line 127
    goto :goto_0

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    goto :goto_1

    .line 130
    :cond_0
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v1, "com.android.proxyhandler"

    .line 136
    .line 137
    .line 138
    const-string/jumbo v2, "com.android.proxyhandler.ProxyService"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    const v3, 0x40000005    # 2.0000012f

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    .line 159
    .line 160
    monitor-exit p0

    .line 161
    :goto_0
    return-void

    .line 162
    :goto_1
    monitor-exit p0

    .line 163
    throw v0

    .line 164
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 167
    .line 168
    if-nez v0, :cond_1

    .line 169
    .line 170
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 171
    .line 172
    const-string/jumbo v1, "clearCache"

    .line 173
    .line 174
    .line 175
    check-cast v0, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/android/net/IProxyCallback;->clearProxyServerCache()V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 188
    .line 189
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-nez v0, :cond_3

    .line 194
    .line 195
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_2
    const/4 v0, 0x0

    .line 203
    goto :goto_3

    .line 204
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 205
    :goto_3
    invoke-interface {p0, v0}, Lcom/android/net/IProxyCallback;->setEnterpriseProxy(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :catch_0
    move-exception p0

    .line 210
    const-string v0, "LocalProxyManager"

    .line 211
    .line 212
    const-string v1, "Failed to clear proxy server cache"

    .line 213
    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    :goto_4
    return-void

    .line 221
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 230
    .line 231
    .line 232
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    .line 233
    .line 234
    monitor-enter v0

    .line 235
    const/4 v1, 0x0

    .line 236
    :try_start_4
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 237
    .line 238
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 239
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :catchall_2
    move-exception p0

    .line 244
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 245
    throw p0

    .line 246
    nop

    .line 247
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
