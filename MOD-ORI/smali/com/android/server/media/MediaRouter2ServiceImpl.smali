.class public final Lcom/android/server/media/MediaRouter2ServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

.field public static final DEBUG:Z


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAllManagerRecords:Landroid/util/ArrayMap;

.field public final mAllRouterRecords:Landroid/util/ArrayMap;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentActiveUserId:I

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOnOpChangedListener:Lcom/android/server/media/MediaRouter2ServiceImpl$2;

.field public final mOnUidImportanceListener:Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenOnOffReceiver:Lcom/android/server/media/MediaRouter2ServiceImpl$1;

.field public final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserRecords:Landroid/util/SparseArray;


# direct methods
.method public static $r8$lambda$QUOfWBbs9bzeEoCNqoDrNBPHovk(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iput-boolean v0, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz v0, :cond_0

    .line 42
    .line 43
    iget-object v2, v1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->stop()V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {v1, p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public static $r8$lambda$VwOkF_wuq7S_wu2mL143qz8S5B4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;I)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    sget v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 5
    .line 6
    const-string/jumbo v2, "transferring to"

    .line 7
    .line 8
    .line 9
    move-object/from16 v3, p5

    .line 10
    .line 11
    move-object/from16 v4, p6

    .line 12
    .line 13
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Ignoring transferToRoute due to lack of matching provider for target: "

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "MR2ServiceImpl"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static/range {p6 .. p6}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    move-wide v4, p1

    .line 59
    move-object v6, p3

    .line 60
    move-object v7, p4

    .line 61
    move/from16 v10, p8

    .line 62
    .line 63
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/media/MediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public static $r8$lambda$_KlJMldyh-EHjCtdEMZwMuezeUQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v5, Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 16
    .line 17
    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 21
    .line 22
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v4, v1, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    iget-object v3, v1, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-direct {v3, v1, v4}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 65
    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 69
    .line 70
    new-instance v5, Landroid/content/IntentFilter;

    .line 71
    .line 72
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 76
    .line 77
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 81
    .line 82
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 86
    .line 87
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 91
    .line 92
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfKeepAliveRouteProviders()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    .line 101
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 102
    .line 103
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_0
    const-string/jumbo v0, "package"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    new-instance v4, Landroid/os/UserHandle;

    .line 115
    .line 116
    iget v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 117
    .line 118
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 119
    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    iget-object v7, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    .line 125
    .line 126
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_1

    .line 141
    .line 142
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    :cond_1
    return-void
.end method

.method public static $r8$lambda$e9Sk6TFecCbShGZjiI_FsGfvE-s(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo p1, "setRouteVolumeOnHandler: Couldn\'t find provider for route="

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "MR2ServiceImpl"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, p4, p3, p1, p2}, Lcom/android/server/media/MediaRoute2Provider;->setRouteVolume(ILjava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public static $r8$lambda$fFTtstVLACy5dqiCA6mMwECkaiQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 10
    .line 11
    const-string v1, "MR2ServiceImpl"

    .line 12
    .line 13
    if-eq v0, p3, :cond_2

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p1, "Ignoring releasing session from non-matching router. routerRecordPackageName="

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "<null router record>"

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    iget-object p2, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p2, p1

    .line 30
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " matchingRecordPackageName="

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " uniqueSessionId="

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    const-string v0, "Ignoring releasing session with invalid unique session ID. uniqueSessionId="

    .line 66
    .line 67
    if-nez p3, :cond_3

    .line 68
    .line 69
    invoke-static {v0, p4, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " providerId="

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-nez p0, :cond_5

    .line 108
    .line 109
    const-string p0, "Ignoring releasing session since no provider found for given providerId="

    .line 110
    .line 111
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/media/MediaRoute2Provider;->releaseSession(JLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    return-void
.end method

.method public static $r8$lambda$gfBNjj_qEN5gYbuwjbOFgMrSMpU(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "setSessionVolumeOnHandler: Couldn\'t find provider for session id="

    .line 17
    .line 18
    .line 19
    const-string p1, "MR2ServiceImpl"

    .line 20
    .line 21
    invoke-static {p0, p3, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p4, p3, p1, p2}, Lcom/android/server/media/MediaRoute2Provider;->setSessionVolume(ILjava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static $r8$lambda$heOK_4zIzngS8WMr61qD_midgrQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/media/IMediaRouter2Manager;

    .line 64
    .line 65
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "MR2ServiceImpl"

    .line 71
    .line 72
    const-string v2, "Failed to notify preferred features changed. Manager probably died."

    .line 73
    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_2
    return-void

    .line 79
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p0
.end method

.method public static $r8$lambda$l439RW2gb6MOGyg-suamHEVj0Rk(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/media/IMediaRouter2Manager;

    .line 64
    .line 65
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "MR2ServiceImpl"

    .line 71
    .line 72
    const-string v2, "Failed to notify preferred features changed. Manager probably died."

    .line 73
    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_2
    return-void

    .line 79
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p0
.end method

.method public static -$$Nest$mrevokeManagerRecordAccessIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl;Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 63
    .line 64
    iget v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerUid:I

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 67
    .line 68
    const-string v3, "android:media_routing_control"

    .line 69
    .line 70
    invoke-virtual {v1, v3, v2, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    iget v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPid:I

    .line 96
    .line 97
    iget v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerUid:I

    .line 98
    .line 99
    const-string v4, "android.permission.MEDIA_ROUTING_CONTROL"

    .line 100
    .line 101
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 115
    .line 116
    iget v3, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 117
    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "Revoking access to manager record id: %d, package: %s, userId: %d"

    .line 127
    .line 128
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "MR2ServiceImpl"

    .line 133
    .line 134
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0, v1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 141
    .line 142
    .line 143
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 144
    .line 145
    invoke-interface {v1}, Landroid/media/IMediaRouter2Manager;->invalidateInstance()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v3, "Failed to notify manager= "

    .line 152
    .line 153
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, " of permission revocation."

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MR2ServiceImpl"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    .line 9
    .line 10
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 11
    .line 12
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 13
    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 25
    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 32
    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$1;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$2;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$2;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLooper:Landroid/os/Looper;

    .line 61
    .line 62
    const-class p2, Landroid/app/ActivityManager;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/app/ActivityManager;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 71
    .line 72
    const/16 v3, 0x64

    .line 73
    .line 74
    invoke-virtual {p2, v0, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 75
    .line 76
    .line 77
    const-class p2, Landroid/os/PowerManager;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroid/os/PowerManager;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 86
    .line 87
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    .line 88
    .line 89
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 94
    .line 95
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 96
    .line 97
    const-class p2, Landroid/app/AppOpsManager;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Landroid/app/AppOpsManager;

    .line 104
    .line 105
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 106
    .line 107
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 116
    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    .line 118
    .line 119
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    const/16 v0, 0x8b

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p2, v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;

    .line 146
    .line 147
    invoke-direct {p2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public static getScanningStateString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Invalid scanning state: "

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "FULL"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p0, "SCREEN_ON_ONLY"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string p0, "NOT_SCANNING"

    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public static setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "setDiscoveryRequestWithRouter2 | router: %s(id: %d), discovery request: %s"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "MR2ServiceImpl"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1, v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 62
    .line 63
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static setRouteListingPreferenceLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteListingPreference;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ","

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 38
    .line 39
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string/jumbo v1, "setRouteListingPreference | router: %s(id: %d), route listing preference: [%s]"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "MR2ServiceImpl"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 64
    .line 65
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static toUniqueRequestId(II)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    int-to-long p0, p1

    .line 6
    or-long/2addr p0, v0

    .line 7
    return-wide p0
.end method


# virtual methods
.method public final checkCallerHasBluetoothPermissions(II)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->BLUETOOTH_PERMISSIONS_FOR_SYSTEM_ROUTING:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v2

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v4, v1, :cond_1

    .line 9
    .line 10
    aget-object v6, v0, v4

    .line 11
    .line 12
    iget-object v7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v7, v6, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    move v6, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v6, v3

    .line 23
    :goto_1
    and-int/2addr v5, v6

    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v5
.end method

.method public final checkMediaContentControlPermission(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final checkMediaRoutingControlPermission(IILjava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePrivilegedRoutingForMediaRoutingControl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const-string v8, "Checking permissions for registering manager in MediaRouter2ServiceImpl."

    .line 13
    .line 14
    const-string v3, "android.permission.MEDIA_ROUTING_CONTROL"

    .line 15
    .line 16
    move v4, p2

    .line 17
    move v5, p1

    .line 18
    move-object v6, p3

    .line 19
    invoke-static/range {v2 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public final deselectRouteWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo v0, "deselectRouteWithManager | manager: %d, session: %s, route: %s"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "MR2ServiceImpl"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 47
    .line 48
    check-cast p1, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v3, p1

    .line 55
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 56
    .line 57
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    move-object v1, p0

    .line 78
    move-object v4, p3

    .line 79
    move-object v5, p4

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    move-object v3, p0

    .line 12
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget p1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo p1, "deselectRouteWithRouter2 | router: %s(id: %d), route: %s"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "MR2ServiceImpl"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v1, -0x1

    .line 56
    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v1, p0

    .line 62
    move-object v4, p2

    .line 63
    move-object v5, p3

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    sget-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ": Disposed"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "MR2ServiceImpl"

    .line 52
    .line 53
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public final getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLooper:Landroid/os/Looper;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;ILandroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 26
    .line 27
    iput-object v1, v2, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 42
    .line 43
    if-ne p1, p0, :cond_0

    .line 44
    .line 45
    new-instance p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    return-object v0
.end method

.method public final getRemoteSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, "MR2ServiceImpl"

    .line 16
    .line 17
    const-string/jumbo p1, "getRemoteSessionLocked: Ignoring unknown manager"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/server/media/MediaRoute2Provider;

    .line 54
    .line 55
    iget-boolean v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-object p1
.end method

.method public final getSystemSessionInfo(Ljava/lang/String;Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 24
    .line 25
    invoke-virtual {p1, v5, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkCallerHasBluetoothPermissions(II)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaContentControlPermission(II)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaRoutingControlPermission(IILjava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz v3, :cond_6

    .line 65
    .line 66
    if-eqz p3, :cond_4

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Lcom/android/server/media/SystemMediaRoute2Provider;->generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :try_start_2
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-nez p3, :cond_5

    .line 98
    .line 99
    new-instance p3, Landroid/media/RoutingSessionInfo$Builder;

    .line 100
    .line 101
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Landroid/media/RoutingSessionInfo;

    .line 106
    .line 107
    invoke-direct {p3, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p2}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_5
    :try_start_3
    const-string p0, "MR2ServiceImpl"

    .line 124
    .line 125
    const-string p2, "System provider does not have any session info."

    .line 126
    .line 127
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    const/4 p0, 0x0

    .line 135
    return-object p0

    .line 136
    :cond_6
    :try_start_4
    new-instance p3, Landroid/media/RoutingSessionInfo$Builder;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 143
    .line 144
    invoke-direct {p3, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p2}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 162
    :catchall_1
    move-exception p0

    .line 163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public final registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v10

    .line 15
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 22
    .line 23
    const-string v2, "MR2ServiceImpl"

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string/jumbo v0, "registerManagerLocked: Same manager already exists. callerPackageName="

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v7, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaRoutingControlPermission(IILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    invoke-virtual {v0, v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaContentControlPermission(II)Z

    .line 39
    .line 40
    .line 41
    move-result v18

    .line 42
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v17

    .line 54
    move-object/from16 v14, p4

    .line 55
    .line 56
    move-object/from16 v15, p5

    .line 57
    .line 58
    move-object/from16 v16, p6

    .line 59
    .line 60
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v3, "registerManager | callerUid: %d, callerPid: %d, callerPackage: %s, targetPackageName: %s, targetUserId: %d, hasMediaRoutingControl: %b"

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    new-instance v13, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 83
    .line 84
    move-object v1, v13

    .line 85
    move-object/from16 v2, p0

    .line 86
    .line 87
    move-object v3, v12

    .line 88
    move-object/from16 v4, p1

    .line 89
    .line 90
    move/from16 v5, p2

    .line 91
    .line 92
    move/from16 v6, p3

    .line 93
    .line 94
    move-object/from16 v7, p4

    .line 95
    .line 96
    move-object/from16 v8, p5

    .line 97
    .line 98
    move-object v14, v10

    .line 99
    move/from16 v10, v18

    .line 100
    .line 101
    invoke-direct/range {v1 .. v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2Manager;IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    :try_start_0
    invoke-interface {v14, v13, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    iget-object v1, v12, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 114
    .line 115
    invoke-virtual {v0, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v0, v12, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iget-object v2, v12, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 137
    .line 138
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 139
    .line 140
    const/4 v4, 0x3

    .line 141
    invoke-direct {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 145
    .line 146
    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 147
    .line 148
    iget-object v5, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    .line 151
    .line 152
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    .line 158
    .line 159
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 162
    .line 163
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 164
    .line 165
    const/4 v4, 0x2

    .line 166
    invoke-direct {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v2, v1, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v2, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    move-object v1, v0

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    .line 194
    .line 195
    const-string v2, "Media router manager died prematurely."

    .line 196
    .line 197
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v0
.end method

.method public final registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZZZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p4

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v13

    .line 9
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v14, "MR2ServiceImpl"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string/jumbo v0, "registerRouter2Locked: Same router already exists. packageName="

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v12, v14}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    move/from16 v1, p5

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v15

    .line 32
    new-instance v11, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 33
    .line 34
    move-object v1, v11

    .line 35
    move-object/from16 v2, p0

    .line 36
    .line 37
    move-object v3, v15

    .line 38
    move-object/from16 v4, p1

    .line 39
    .line 40
    move/from16 v5, p2

    .line 41
    .line 42
    move/from16 v6, p3

    .line 43
    .line 44
    move-object/from16 v7, p4

    .line 45
    .line 46
    move/from16 v8, p6

    .line 47
    .line 48
    move/from16 v9, p7

    .line 49
    .line 50
    move/from16 v10, p8

    .line 51
    .line 52
    move-object/from16 v16, v14

    .line 53
    .line 54
    move-object v14, v11

    .line 55
    move/from16 v11, p9

    .line 56
    .line 57
    invoke-direct/range {v1 .. v11}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2;IILjava/lang/String;ZZZZ)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-interface {v13, v14, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    iget-object v1, v15, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v0, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v15, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 81
    .line 82
    invoke-static {v0, v1, v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget v2, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 98
    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    filled-new-array {v12, v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string/jumbo v1, "registerRouter2 | package: %s, uid: %d, pid: %d, router id: %d, hasMediaRoutingControl: %b"

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    move-object/from16 v1, v16

    .line 119
    .line 120
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    move-object v1, v0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    const-string v2, "MediaRouter2 died prematurely."

    .line 129
    .line 130
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw v0
.end method

.method public final releaseSessionWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo v0, "releaseSessionWithManager | manager: %d, session: %s"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "MR2ServiceImpl"

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 43
    .line 44
    check-cast p1, Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 51
    .line 52
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 53
    .line 54
    invoke-static {v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 61
    .line 62
    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p2, p0, v0, p1, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo v0, "releaseSessionWithRouter2 | router: %s(id: %d), session: %s"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "MR2ServiceImpl"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v1, -0x1

    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, p1, v1, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final requestCreateSessionWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 15

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v6, v1

    .line 15
    check-cast v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 16
    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v1, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual/range {p4 .. p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string/jumbo v2, "requestCreateSessionWithManager | manager: %d, route: %s"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "MR2ServiceImpl"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v3, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 69
    .line 70
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    move-object v5, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 v1, 0x0

    .line 81
    move-object v5, v1

    .line 82
    :goto_0
    const/4 v1, 0x0

    .line 83
    if-nez v5, :cond_3

    .line 84
    .line 85
    const-string/jumbo v3, "requestCreateSessionWithManagerLocked: Ignoring session creation for unknown router."

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :try_start_0
    iget-object v3, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 92
    .line 93
    invoke-interface {v3, v0, v1}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    const-string/jumbo v0, "requestCreateSessionWithManagerLocked: Failed to notify failure. Manager probably died."

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void

    .line 104
    :cond_3
    iget v3, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 105
    .line 106
    invoke-static {v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    iget-object v0, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    iget-object v7, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 115
    .line 116
    iget-object v8, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 117
    .line 118
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-string/jumbo v8, "requestCreateSessionWithManagerLocked: Notifying failure for pending session creation request - oldSession: %s, route: %s"

    .line 123
    .line 124
    .line 125
    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    iget-object v2, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 135
    .line 136
    iget-object v7, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 137
    .line 138
    iget-wide v8, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 139
    .line 140
    long-to-int v0, v8

    .line 141
    sget v8, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {v7, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 147
    .line 148
    .line 149
    :cond_4
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 150
    .line 151
    const-wide/16 v9, 0x0

    .line 152
    .line 153
    move-object v7, v0

    .line 154
    move-object v8, v5

    .line 155
    move-wide v11, v3

    .line 156
    move-object/from16 v13, p3

    .line 157
    .line 158
    move-object/from16 v14, p4

    .line 159
    .line 160
    invoke-direct/range {v7 .. v14}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 164
    .line 165
    iget-object v0, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 168
    .line 169
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    invoke-direct {v2, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object v3, v0

    .line 180
    move-object/from16 v7, p3

    .line 181
    .line 182
    move-object/from16 v8, p4

    .line 183
    .line 184
    move-object/from16 v9, p5

    .line 185
    .line 186
    move-object/from16 v10, p6

    .line 187
    .line 188
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final requestCreateSessionWithRouter2Locked(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    move-object v4, p0

    .line 12
    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget p1, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo p1, "requestCreateSessionWithRouter2 | router: %s(id: %d), old session id: %s, new session\'s route id: %s, request id: %d"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "MR2ServiceImpl"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 56
    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    cmp-long v0, p3, v0

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    const/16 v0, 0x20

    .line 64
    .line 65
    shr-long v0, p3, v0

    .line 66
    .line 67
    long-to-int v0, v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    const-string/jumbo p0, "requestCreateSessionWithRouter2Locked: Ignoring unmatched routing session."

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-static {v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_3

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 140
    .line 141
    .line 142
    move-result p6

    .line 143
    if-eqz p6, :cond_3

    .line 144
    .line 145
    iget-object p1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 146
    .line 147
    iget-object p6, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    const-string/jumbo p0, "requestCreateSessionWithRouter2Locked: Ignoring unmatched route."

    .line 151
    .line 152
    .line 153
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-static {v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 161
    iput-object p1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 162
    .line 163
    :cond_5
    move-object v6, p6

    .line 164
    goto :goto_2

    .line 165
    :cond_6
    :goto_1
    const-string/jumbo p0, "requestCreateSessionWithRouter2Locked: Ignoring unknown request."

    .line 166
    .line 167
    .line 168
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-static {v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_5

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_5

    .line 194
    .line 195
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string p3, "MODIFY_AUDIO_ROUTING permission is required to transfer to"

    .line 208
    .line 209
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    invoke-static {v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :goto_2
    iget p1, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 227
    .line 228
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 229
    .line 230
    .line 231
    move-result-wide p1

    .line 232
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    move-object v1, p0

    .line 246
    move-object v5, p5

    .line 247
    move-object v7, p7

    .line 248
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public final selectRouteWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo v0, "selectRouteWithManager | manager: %d, session: %s, route: %s"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "MR2ServiceImpl"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 47
    .line 48
    check-cast p1, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v3, p1

    .line 55
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 56
    .line 57
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    move-object v1, p0

    .line 78
    move-object v4, p3

    .line 79
    move-object v5, p4

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    move-object v3, p0

    .line 12
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget p1, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo p1, "selectRouteWithRouter2 | router: %s(id: %d), route: %s"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "MR2ServiceImpl"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v1, -0x1

    .line 56
    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v1, p0

    .line 62
    move-object v4, p2

    .line 63
    move-object v5, p3

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final setRouteVolumeWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string/jumbo v0, "setRouteVolumeWithManager | manager: %d, route: %s, volume: %d"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "MR2ServiceImpl"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {v0, p0, p1, p3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string/jumbo v0, "setRouteVolumeWithRouter2 | router: %s(id: %d), volume: %d"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "MR2ServiceImpl"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 46
    .line 47
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-direct {p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v0, -0x1

    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p1, p0, v0, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public final setSessionVolumeWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo v0, "setSessionVolumeWithManager | manager: %d, session: %s, volume: %d"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "MR2ServiceImpl"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {v0, p0, p1, p3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    filled-new-array {p1, v0, p2, v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string/jumbo v0, "setSessionVolumeWithRouter2 | router: %s(id: %d), session: %s, volume: %d"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "MR2ServiceImpl"

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 47
    .line 48
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-direct {p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, -0x1

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p1, p0, v0, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final showOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const-string p0, "MR2ServiceImpl"

    .line 12
    .line 13
    const-string/jumbo p1, "showMediaOutputSwitcher only works when called from foreground"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 25
    .line 26
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    :try_start_1
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final transferToRouteWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo v0, "transferToRouteWithManager | manager: %d, session: %s, route: %s"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "MR2ServiceImpl"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 47
    .line 48
    check-cast p1, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v5, p1

    .line 55
    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 56
    .line 57
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    move-object v1, p0

    .line 83
    move-object v3, p5

    .line 84
    move-object v4, p6

    .line 85
    move-object v6, p3

    .line 86
    move-object v7, p4

    .line 87
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    move-object v5, p0

    .line 12
    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget p1, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo p1, "transferToRouteWithRouter2 | router: %s(id: %d), route: %s"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "MR2ServiceImpl"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-wide/16 v1, -0x1

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_1

    .line 80
    .line 81
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 82
    .line 83
    const/4 p2, 0x1

    .line 84
    invoke-direct {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 85
    .line 86
    .line 87
    long-to-int p2, v1

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p1, p0, v5, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda12;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v4, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 111
    .line 112
    const/4 p1, 0x2

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    move-object v1, p0

    .line 118
    move-object v3, p2

    .line 119
    move-object v6, p3

    .line 120
    move-object v7, p4

    .line 121
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public final unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 12
    .line 13
    const-string v1, "MR2ServiceImpl"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "Ignoring unregistering unknown manager: %s, died: %b"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 38
    .line 39
    iget v3, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    filled-new-array {v2, v3, v4, p2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string/jumbo v2, "unregisterManager | package: %s, user: %d, manager: %d, died: %b"

    .line 60
    .line 61
    .line 62
    invoke-static {v2, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object p2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 75
    .line 76
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 12
    .line 13
    const-string v1, "MR2ServiceImpl"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "Ignoring unregistering unknown router: %s, died: %b"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 36
    .line 37
    iget v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    filled-new-array {p1, v2, p2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string/jumbo p2, "unregisterRouter2 | package: %s, router id: %d, died: %b"

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 62
    .line 63
    iget-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object p2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-static {v1, p2, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    .line 87
    .line 88
    iget-object p2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 91
    .line 92
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 93
    .line 94
    const/4 v2, 0x3

    .line 95
    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1, p2, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-direct {p2, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 114
    .line 115
    invoke-static {p2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    .line 121
    .line 122
    iget-object p2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 123
    .line 124
    invoke-interface {p2}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const/4 v1, 0x0

    .line 129
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final updateScanningStateLocked(Landroid/media/IMediaRouter2;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3
    const-string p1, "MR2ServiceImpl"

    if-nez p0, :cond_0

    .line 4
    const-string p0, "Router record not found. Ignoring updateScanningState call."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/media/flags/Flags;->enableFullScanWithMediaContentControl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasMediaContentControlPermission:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasMediaRoutingControl:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Screen off scan requires MEDIA_ROUTING_CONTROL"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getScanningStateString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 11
    const-string/jumbo v1, "updateScanningStateLocked | router: %d, packageName: %s, scanningState: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    if-ne p1, p2, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iput p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    .line 15
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method

.method public final updateScanningStateLocked(Landroid/media/IMediaRouter2Manager;I)V
    .locals 4

    .line 18
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 20
    const-string p1, "MR2ServiceImpl"

    if-nez p0, :cond_0

    .line 21
    const-string p0, "Manager record not found. Ignoring updateScanningState call."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/media/flags/Flags;->enableFullScanWithMediaContentControl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mHasMediaContentControl:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mHasMediaRoutingControl:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Screen off scan requires MEDIA_ROUTING_CONTROL"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    .line 27
    invoke-static {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getScanningStateString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "updateScanningState | manager: %d, ownerPackageName: %s, targetPackageName: %s, scanningState: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    if-ne p1, p2, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    iput p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    .line 32
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 33
    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
