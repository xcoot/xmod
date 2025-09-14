.class public final Lcom/android/server/ExtendedEthernetService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 15
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 6

    .line 1
    const/16 v0, 0x226

    .line 3
    if-ne p1, v0, :cond_3

    .line 5
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo p1, "eth_disabled"

    .line 13
    const-string v0, "ExtendedEthernetServiceImpl"

    .line 15
    const-string/jumbo v1, "handleSystemReady"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 23
    const-string/jumbo v2, "tethering"

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/TetheringManager;

    .line 32
    iput-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 34
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 36
    const-string/jumbo v2, "ethernet"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/net/EthernetManager;

    .line 45
    iput-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 47
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 49
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 54
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateListener:Lcom/android/server/ExtendedEthernetServiceImpl$2;

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 59
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object v1

    .line 65
    const-string v2, "ETHERNET_TETHERING_MODE"

    .line 67
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    const-string/jumbo v3, "on"

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 80
    const-string v2, "ETHERNET_TETHERING_MODE is on"

    .line 82
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 87
    new-instance v3, Landroid/os/HandlerExecutor;

    .line 89
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 94
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetCallback:Lcom/android/server/ExtendedEthernetServiceImpl$1;

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 99
    move-result-object v2

    .line 100
    iput-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 106
    move-result v3

    .line 107
    const/4 v4, 0x1

    .line 108
    if-ne v3, v4, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 112
    invoke-virtual {v3, v2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    .line 115
    const-string/jumbo v3, "call setLinkDown"

    .line 118
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->setLinkDown()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    const-string v3, "Not found ETH_DISABLED"

    .line 127
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/ExtendedEthernetConfigStore;

    .line 135
    invoke-direct {v0}, Lcom/android/server/ExtendedEthernetConfigStore;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/ExtendedEthernetConfigStore;->read()V

    .line 143
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    .line 145
    iget-object v1, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 147
    monitor-enter v1

    .line 148
    :try_start_1
    new-instance v3, Landroid/util/ArrayMap;

    .line 150
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 152
    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 155
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    move v0, v2

    .line 157
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 160
    move-result v1

    .line 161
    if-ge v0, v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/lang/String;

    .line 171
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Landroid/net/IpConfiguration;

    .line 177
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 182
    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    move-result-object v0

    .line 189
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    move-result-object p1

    .line 193
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateObserver:Lcom/android/server/ExtendedEthernetServiceImpl$3;

    .line 195
    invoke-virtual {v0, p1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 198
    goto :goto_2

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    throw p0

    .line 202
    :cond_3
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "ExtendedEthernetService"

    .line 3
    const-string v1, "Registering extendedethernetservice"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string/jumbo v0, "extendedethernetservice"

    .line 11
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    return-void
.end method
