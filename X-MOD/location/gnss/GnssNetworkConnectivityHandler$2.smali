.class public final Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isOnLostCallbackReceived:Z

.field public final mAvailableNetworkCapabilities:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_5

    .line 12
    if-nez p2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v2, 0x12

    .line 17
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 20
    move-result v3

    .line 21
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 24
    move-result v2

    .line 25
    if-eq v3, v2, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v2, 0xb

    .line 30
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 37
    move-result v2

    .line 38
    if-eq v0, v2, :cond_2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    .line 43
    if-eqz v0, :cond_3

    .line 45
    const-string v0, "GnssNetworkConnectivityHandler"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    const-string v3, "Relevant network capabilities unchanged. Capabilities: "

    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 66
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 77
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    .line 79
    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 83
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    .line 86
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    .line 89
    :cond_4
    return-void

    .line 90
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "GnssNetworkConnectivityHandler"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "Network connected/capabilities updated. Available networks count: "

    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 106
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 109
    move-result v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 122
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    .line 124
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 126
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 128
    monitor-enter v2

    .line 129
    :try_start_0
    iget-boolean v3, v2, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mNetworkTimeInjected:Z

    .line 131
    if-nez v3, :cond_6

    .line 133
    iget-object v3, v2, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 135
    const-string/jumbo v4, "onNetworkAvailable"

    .line 138
    invoke-virtual {v3, v2, v4}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->requestImmediateTimeQueryCallback(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;Ljava/lang/String;)V

    .line 141
    goto :goto_1

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_5

    .line 144
    :cond_6
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-boolean v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 147
    if-eqz v2, :cond_8

    .line 149
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 151
    monitor-enter v2

    .line 152
    :try_start_1
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 154
    check-cast v3, Ljava/util/HashSet;

    .line 156
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v3

    .line 160
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_7

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/Integer;

    .line 172
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 175
    move-result v4

    .line 176
    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    .line 178
    move-object v6, v0

    .line 179
    check-cast v6, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 181
    const/4 v7, 0x4

    .line 182
    invoke-direct {v5, v4, v7, v6}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;)V

    .line 185
    invoke-virtual {v0, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 188
    goto :goto_2

    .line 189
    :catchall_1
    move-exception p0

    .line 190
    goto :goto_3

    .line 191
    :cond_7
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 193
    check-cast v0, Ljava/util/HashSet;

    .line 195
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 198
    monitor-exit v2

    .line 199
    goto :goto_4

    .line 200
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    throw p0

    .line 202
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 204
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    .line 207
    return-void

    .line 208
    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "GnssNetworkConnectivityHandler"

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "Incorrectly received network callback onLost() before onCapabilitiesChanged() for network: "

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 31
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "Network connection lost. Available networks count: "

    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    .line 75
    return-void
.end method
