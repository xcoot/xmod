.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    const-string v0, "XTRA_THROTTLE=0"

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :pswitch_1
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    .line 22
    return-void

    .line 23
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isGnssVisibilityControlSupported()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 33
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 35
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 37
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 43
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    .line 46
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    .line 53
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 68
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIntentReceiver:Lcom/android/server/location/gnss/GnssLocationProvider$2;

    .line 70
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 78
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 81
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 83
    const-class v1, Landroid/location/LocationManager;

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/location/LocationManager;

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 97
    move-result-object v1

    .line 98
    const-string/jumbo v2, "network"

    .line 101
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 105
    const/4 v2, 0x1

    .line 106
    if-eqz v1, :cond_1

    .line 108
    const-string/jumbo v1, "network"

    .line 111
    new-instance v3, Landroid/location/LocationRequest$Builder;

    .line 113
    const-wide v4, 0x7fffffffffffffffL

    .line 118
    invoke-direct {v3, v4, v5}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 121
    const-wide/16 v4, 0x0

    .line 123
    invoke-virtual {v3, v4, v5}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v2}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 134
    move-result-object v3

    .line 135
    sget-object v4, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 137
    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;

    .line 139
    move-object v6, p0

    .line 140
    check-cast v6, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 142
    const/4 v7, 0x1

    .line 143
    invoke-direct {v5, v6, v7}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 146
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 152
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 154
    monitor-enter v0

    .line 155
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mInitialized:Z

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 164
    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 166
    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasOnDemandTime()Z

    .line 169
    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 172
    const-string/jumbo v2, "setPeriodicTimeInjectionMode("

    .line 175
    monitor-enter v1

    .line 176
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mPeriodicTimeInjectionEnabled:Z

    .line 178
    if-nez v0, :cond_2

    .line 180
    iget-object v3, v1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 182
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 183
    :try_start_2
    iget-object v4, v3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 185
    iget-object v5, v3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mScheduledRunnableToken:Ljava/lang/Object;

    .line 187
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    :try_start_3
    monitor-exit v3

    .line 191
    goto :goto_0

    .line 192
    :catchall_1
    move-exception p0

    .line 193
    monitor-exit v3

    .line 194
    throw p0

    .line 195
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, ")"

    .line 205
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 212
    iget-object v3, v1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 214
    invoke-virtual {v3, v1, v2}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->requestImmediateTimeQueryCallback(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 217
    monitor-exit v1

    .line 218
    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->demandUtcTimeInjection()V

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 226
    return-void

    .line 227
    :catchall_2
    move-exception p0

    .line 228
    monitor-exit v1

    .line 229
    throw p0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
