.class public final Lcom/android/server/location/LocationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/location/LocationManagerService;

.field public final mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

.field public final mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 11
    new-instance v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 13
    invoke-direct {v1, p1, v0}, Lcom/android/server/location/LocationManagerService$SystemInjector;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;)V

    .line 16
    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 18
    new-instance v0, Lcom/android/server/location/LocationManagerService;

    .line 20
    invoke-direct {v0, p1, v1}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    .line 25
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    const/16 v2, 0x1f4

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-ne v1, v2, :cond_7

    .line 12
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 17
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    .line 20
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    .line 26
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object v6, v2, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 31
    new-instance v7, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v7, v2}, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;)V

    .line 36
    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerInternal;->addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    :try_start_2
    monitor-exit v2

    .line 40
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 42
    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemAppOpsHelper;->onSystemReady()V

    .line 45
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 47
    iget-boolean v6, v2, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    .line 49
    if-eqz v6, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v6, v2, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    move-result-object v6

    .line 58
    new-instance v7, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {v7, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V

    .line 63
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 66
    iput-boolean v5, v2, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    .line 68
    :goto_0
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 70
    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemSettingsHelper;->onSystemReady()V

    .line 73
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 75
    iget-object v6, v2, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 77
    if-eqz v6, :cond_1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v6, v2, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    .line 82
    const-class v7, Landroid/app/ActivityManager;

    .line 84
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/app/ActivityManager;

    .line 90
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iput-object v6, v2, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 95
    new-instance v7, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;

    .line 97
    invoke-direct {v7, v2}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V

    .line 100
    const/16 v2, 0x7d

    .line 102
    invoke-virtual {v6, v7, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 105
    :goto_1
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 107
    iget-boolean v6, v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    .line 109
    if-eqz v6, :cond_2

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const-class v6, Landroid/os/PowerManagerInternal;

    .line 114
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Landroid/os/PowerManagerInternal;

    .line 120
    invoke-virtual {v6, v5, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 123
    iget-object v6, v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    .line 125
    const-class v7, Landroid/os/PowerManager;

    .line 127
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Landroid/os/PowerManager;

    .line 133
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v6}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    .line 139
    move-result v6

    .line 140
    iput v6, v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 142
    iput-boolean v5, v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    .line 144
    :goto_2
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 146
    iget-boolean v6, v2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    .line 148
    if-eqz v6, :cond_3

    .line 150
    goto :goto_3

    .line 151
    :cond_3
    new-instance v10, Landroid/content/IntentFilter;

    .line 153
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    const-string v6, "android.intent.action.SCREEN_OFF"

    .line 158
    invoke-virtual {v10, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v6, "android.intent.action.SCREEN_ON"

    .line 163
    invoke-virtual {v10, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v7, v2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    .line 168
    new-instance v8, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;

    .line 170
    invoke-direct {v8, v2}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;-><init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V

    .line 173
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 175
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 178
    move-result-object v12

    .line 179
    const/4 v11, 0x0

    .line 180
    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    iput-boolean v5, v2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    .line 185
    :goto_3
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    const-class v6, Lcom/android/server/DeviceIdleInternal;

    .line 192
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lcom/android/server/DeviceIdleInternal;

    .line 198
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iput-object v6, v2, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    .line 203
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 205
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :try_start_3
    iput-boolean v5, v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mSystemReady:Z

    .line 208
    iget-object v6, v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    .line 210
    const-class v7, Landroid/os/PowerManager;

    .line 212
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Landroid/os/PowerManager;

    .line 218
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iput-object v6, v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 223
    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    :try_start_4
    monitor-exit v2

    .line 227
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 229
    if-eqz v2, :cond_4

    .line 231
    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    .line 234
    goto :goto_4

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    goto/16 :goto_6

    .line 238
    :cond_4
    :goto_4
    iput-boolean v5, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    monitor-exit v1

    .line 241
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 248
    if-eqz v1, :cond_5

    .line 250
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 252
    const-class v2, Landroid/app/AppOpsManager;

    .line 254
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Landroid/app/AppOpsManager;

    .line 260
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    filled-new-array {v5, v4}, [I

    .line 266
    move-result-object v2

    .line 267
    new-instance v6, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;

    .line 269
    invoke-direct {v6, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 272
    invoke-virtual {v1, v2, v6}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 275
    :cond_5
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 277
    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 282
    move-result-object v2

    .line 283
    iput-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 285
    const-string/jumbo v6, "com.sec.feature.nsflp"

    .line 288
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 291
    move-result v2

    .line 292
    const-string v7, "NSLocationMonitor"

    .line 294
    if-eqz v2, :cond_6

    .line 296
    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 298
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    .line 301
    move-result v2

    .line 302
    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 304
    iput-boolean v5, v4, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    const-string v5, "NS-FLP Feature available, nsFlpFeatureLevel = "

    .line 310
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 320
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v2, "Try to bind NSMonitorService"

    .line 325
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v2, Landroid/content/ComponentName;

    .line 330
    const-string/jumbo v4, "com.sec.location.nsflp2"

    .line 333
    const-string/jumbo v5, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    .line 336
    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 341
    new-instance v5, Landroid/content/Intent;

    .line 343
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 346
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 349
    move-result-object v2

    .line 350
    iget-object v5, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorServiceConnection:Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    .line 352
    const v6, 0x4000001

    .line 355
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 358
    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 360
    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    .line 362
    iget-object v2, v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 364
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 369
    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    .line 371
    invoke-virtual {v2, v4}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 374
    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 376
    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mStationaryListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    .line 378
    invoke-virtual {v2, v4}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->addListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 381
    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 383
    new-instance v4, Lcom/android/server/location/nsflp/NSLocationMonitor$1;

    .line 385
    invoke-direct {v4, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor$1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 388
    new-instance v5, Landroid/content/IntentFilter;

    .line 390
    const-string/jumbo v6, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 393
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 396
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 398
    invoke-virtual {v2, v4, v5, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 401
    goto :goto_5

    .line 402
    :cond_6
    const-string v2, "Not binding the MonitorService"

    .line 404
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 409
    iput-boolean v4, v1, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    .line 411
    :goto_5
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 413
    check-cast v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 415
    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 417
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;

    .line 419
    invoke-direct {v2, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 422
    iget-object v1, v1, Lcom/android/server/location/injector/SystemAppOpsHelper;->mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 424
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 429
    const-string v2, "activity"

    .line 431
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    move-result-object v1

    .line 435
    check-cast v1, Landroid/app/ActivityManager;

    .line 437
    iput-object v1, v0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 439
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 444
    move-result-object v1

    .line 445
    iput-object v1, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 447
    new-instance v1, Lcom/android/server/location/LocationManagerService$1;

    .line 449
    invoke-direct {v1, v0}, Lcom/android/server/location/LocationManagerService$1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 452
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 454
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 456
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 459
    new-instance v8, Landroid/content/IntentFilter;

    .line 461
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 464
    const-string/jumbo v1, "com.samsung.android.location.mock.delete"

    .line 467
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 472
    new-instance v6, Lcom/android/server/location/LocationManagerService$2;

    .line 474
    invoke-direct {v6, v0}, Lcom/android/server/location/LocationManagerService$2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 477
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 479
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 481
    const/4 v9, 0x0

    .line 482
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 485
    goto/16 :goto_19

    .line 487
    :catchall_1
    move-exception v0

    .line 488
    :try_start_5
    monitor-exit v2

    .line 489
    throw v0

    .line 490
    :catchall_2
    move-exception v0

    .line 491
    monitor-exit v2

    .line 492
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 493
    :goto_6
    monitor-exit v1

    .line 494
    throw v0

    .line 495
    :cond_7
    const/16 v2, 0x258

    .line 497
    if-ne v1, v2, :cond_25

    .line 499
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    .line 501
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 503
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    .line 506
    move-result v0

    .line 507
    const/high16 v2, 0x180000

    .line 509
    if-eqz v0, :cond_f

    .line 511
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 513
    const-string/jumbo v8, "com.android.location.service.v3.NetworkLocationProvider"

    .line 516
    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 518
    const-string/jumbo v7, "network"

    .line 521
    const v15, 0x111017d

    .line 524
    const v0, 0x104037f

    .line 527
    move v9, v15

    .line 528
    move v10, v0

    .line 529
    invoke-static/range {v6 .. v11}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 532
    move-result-object v6

    .line 533
    const-string v7, "LocationManagerService"

    .line 535
    if-eqz v6, :cond_8

    .line 537
    new-instance v8, Lcom/android/server/location/provider/LocationProviderManager;

    .line 539
    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 541
    iget-object v10, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 543
    const-string/jumbo v11, "network"

    .line 546
    iget-object v12, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 548
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 551
    invoke-virtual {v1, v8, v6}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 554
    goto :goto_7

    .line 555
    :cond_8
    const-string/jumbo v6, "no network location provider found"

    .line 558
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_7
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 563
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 566
    move-result-object v6

    .line 567
    new-instance v8, Landroid/content/Intent;

    .line 569
    const-string/jumbo v9, "com.android.location.service.FusedLocationProvider"

    .line 572
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v6, v8, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 578
    move-result-object v2

    .line 579
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 582
    move-result v2

    .line 583
    xor-int/2addr v2, v5

    .line 584
    const-string v6, "Unable to find a direct boot aware fused location provider"

    .line 586
    invoke-static {v2, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 589
    iget-object v12, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 591
    const-string/jumbo v14, "com.android.location.service.FusedLocationProvider"

    .line 594
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 596
    const-string/jumbo v13, "fused"

    .line 599
    const v16, 0x104035a

    .line 602
    move-object/from16 v17, v2

    .line 604
    invoke-static/range {v12 .. v17}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 607
    move-result-object v2

    .line 608
    if-eqz v2, :cond_9

    .line 610
    new-instance v6, Lcom/android/server/location/provider/LocationProviderManager;

    .line 612
    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 614
    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 616
    const-string/jumbo v10, "fused"

    .line 619
    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 621
    invoke-direct {v6, v8, v9, v10, v11}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 624
    invoke-virtual {v1, v6, v2}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 627
    goto :goto_8

    .line 628
    :cond_9
    const-string/jumbo v2, "no fused location provider found"

    .line 631
    invoke-static {v7, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_8
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 636
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 638
    new-instance v8, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 640
    invoke-direct {v8, v2, v6, v4}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;I)V

    .line 643
    iget-object v2, v8, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 645
    invoke-virtual {v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->checkServiceResolves()Z

    .line 648
    move-result v6

    .line 649
    if-eqz v6, :cond_a

    .line 651
    invoke-virtual {v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->register()V

    .line 654
    :cond_a
    if-eqz v6, :cond_b

    .line 656
    goto :goto_9

    .line 657
    :cond_b
    move-object v8, v3

    .line 658
    :goto_9
    iput-object v8, v1, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 660
    if-nez v8, :cond_c

    .line 662
    const-string/jumbo v2, "no geocoder provider found"

    .line 665
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_c
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 670
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 677
    move-result-object v2

    .line 678
    :try_start_6
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 680
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 682
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 684
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 686
    invoke-virtual {v6, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 689
    move-result v6

    .line 690
    iget-object v8, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 692
    if-eqz v8, :cond_d

    .line 694
    move v8, v5

    .line 695
    goto :goto_a

    .line 696
    :cond_d
    move v8, v4

    .line 697
    :goto_a
    invoke-static {v8}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 703
    move-result-wide v8
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 704
    :try_start_7
    iget-object v10, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 706
    const/16 v11, 0x18

    .line 708
    invoke-virtual {v10, v11, v6, v2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 711
    move-result v10

    .line 712
    if-eqz v10, :cond_e

    .line 714
    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 716
    invoke-virtual {v0, v11, v6, v2, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 719
    goto :goto_b

    .line 720
    :catchall_3
    move-exception v0

    .line 721
    goto :goto_c

    .line 722
    :cond_e
    :goto_b
    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    goto/16 :goto_10

    .line 727
    :goto_c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    throw v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 731
    :catch_0
    const-string v0, "NameNotFoundException package: "

    .line 733
    invoke-static {v0, v2, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    goto/16 :goto_10

    .line 738
    :cond_f
    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 740
    const-string/jumbo v9, "network"

    .line 743
    const-string/jumbo v10, "com.android.location.service.v3.NetworkLocationProvider"

    .line 746
    iget-object v13, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 748
    const v11, 0x111017c

    .line 751
    const v12, 0x104037e

    .line 754
    invoke-static/range {v8 .. v13}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 757
    move-result-object v0

    .line 758
    if-eqz v0, :cond_10

    .line 760
    new-instance v6, Lcom/android/server/location/provider/LocationProviderManager;

    .line 762
    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 764
    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 766
    const-string/jumbo v9, "network"

    .line 769
    iget-object v10, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 771
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 774
    invoke-virtual {v1, v6, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 777
    goto :goto_d

    .line 778
    :cond_10
    const-string v0, "LocationManagerService"

    .line 780
    const-string/jumbo v6, "no network location provider found"

    .line 783
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_d
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 788
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 791
    move-result-object v0

    .line 792
    new-instance v6, Landroid/content/Intent;

    .line 794
    const-string/jumbo v7, "com.android.location.service.FusedLocationProvider"

    .line 797
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, v6, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 803
    move-result-object v0

    .line 804
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 807
    move-result v0

    .line 808
    xor-int/2addr v0, v5

    .line 809
    const-string v2, "Unable to find a direct boot aware fused location provider"

    .line 811
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 814
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 816
    const-string/jumbo v7, "fused"

    .line 819
    const-string/jumbo v8, "com.android.location.service.FusedLocationProvider"

    .line 822
    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 824
    const v9, 0x111016f

    .line 827
    const v10, 0x104035a

    .line 830
    invoke-static/range {v6 .. v11}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 833
    move-result-object v0

    .line 834
    if-eqz v0, :cond_11

    .line 836
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 838
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 840
    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 842
    const-string/jumbo v8, "fused"

    .line 845
    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 847
    invoke-direct {v2, v6, v7, v8, v9}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 850
    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 853
    goto :goto_e

    .line 854
    :cond_11
    const-string v0, "LocationManagerService"

    .line 856
    const-string/jumbo v2, "no fused location provider found"

    .line 859
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_e
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 864
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 866
    new-instance v6, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 868
    invoke-direct {v6, v0, v2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    .line 871
    iget-object v0, v6, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 873
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->checkServiceResolves()Z

    .line 876
    move-result v2

    .line 877
    if-eqz v2, :cond_12

    .line 879
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->register()V

    .line 882
    :cond_12
    if-eqz v2, :cond_13

    .line 884
    goto :goto_f

    .line 885
    :cond_13
    move-object v6, v3

    .line 886
    :goto_f
    iput-object v6, v1, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 888
    if-nez v6, :cond_14

    .line 890
    const-string v0, "LocationManagerService"

    .line 892
    const-string/jumbo v2, "no geocoder provider found"

    .line 895
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_14
    :goto_10
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 900
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 903
    move-result-object v0

    .line 904
    const-string v2, "android.hardware.location"

    .line 906
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 909
    move-result v0

    .line 910
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 913
    move-result-object v2

    .line 914
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 920
    move-result v2

    .line 921
    if-eqz v2, :cond_15

    .line 923
    new-instance v2, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 925
    invoke-direct {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    .line 928
    const-wide/16 v6, 0x1388

    .line 930
    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    .line 933
    goto :goto_11

    .line 934
    :cond_15
    move-object v2, v3

    .line 935
    :goto_11
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    .line 938
    move-result v6

    .line 939
    if-eqz v2, :cond_16

    .line 941
    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    .line 944
    :cond_16
    if-eqz v0, :cond_1b

    .line 946
    if-eqz v6, :cond_1b

    .line 948
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration;

    .line 950
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 952
    invoke-direct {v0, v2}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    .line 955
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 957
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 959
    invoke-static {v2, v6, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->create(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;

    .line 962
    move-result-object v0

    .line 963
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 966
    move-result-object v2

    .line 967
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 970
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 973
    move-result v2

    .line 974
    if-eqz v2, :cond_17

    .line 976
    new-instance v2, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 978
    invoke-direct {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    .line 981
    const-wide/16 v6, 0x3a98

    .line 983
    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    .line 986
    goto :goto_12

    .line 987
    :cond_17
    move-object v2, v3

    .line 988
    :goto_12
    new-instance v6, Lcom/android/server/location/gnss/GnssManagerService;

    .line 990
    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 992
    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 994
    invoke-direct {v6, v7, v8, v0}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    .line 997
    iput-object v6, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 999
    if-eqz v2, :cond_18

    .line 1001
    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    .line 1004
    :cond_18
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1006
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 1008
    monitor-enter v2

    .line 1009
    :try_start_9
    iget-object v6, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1011
    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    .line 1013
    const/4 v0, 0x0

    .line 1014
    invoke-direct {v7, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 1017
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1019
    new-instance v9, Landroid/content/IntentFilter;

    .line 1021
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 1023
    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1026
    iget-object v11, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1028
    const/4 v10, 0x0

    .line 1029
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1032
    iget-object v0, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1034
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1037
    move-result-object v0

    .line 1038
    const-string/jumbo v6, "location_mode"

    .line 1041
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1044
    move-result-object v6

    .line 1045
    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    .line 1047
    iget-object v8, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1049
    invoke-direct {v7, v2, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/os/Handler;)V

    .line 1052
    const/4 v8, -0x1

    .line 1053
    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1056
    iget-object v0, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1058
    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    .line 1060
    const/4 v7, 0x1

    .line 1061
    invoke-direct {v6, v2, v7}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 1064
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1067
    iget-object v0, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1069
    iget-object v6, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 1071
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    .line 1076
    const/4 v8, 0x0

    .line 1077
    invoke-direct {v7, v8, v6}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 1080
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1083
    monitor-exit v2

    .line 1084
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1086
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1089
    move-result-object v0

    .line 1090
    const v2, 0x1110275

    .line 1093
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1096
    move-result v0

    .line 1097
    if-nez v0, :cond_19

    .line 1099
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1101
    const-string/jumbo v7, "gps"

    .line 1104
    const-string v8, "android.location.provider.action.GNSS_PROVIDER"

    .line 1106
    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 1108
    const v9, 0x111016f

    .line 1111
    const v10, 0x1040360

    .line 1114
    invoke-static/range {v6 .. v11}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 1117
    move-result-object v0

    .line 1118
    goto :goto_13

    .line 1119
    :cond_19
    move-object v0, v3

    .line 1120
    :goto_13
    if-nez v0, :cond_1a

    .line 1122
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1124
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 1126
    goto :goto_14

    .line 1127
    :cond_1a
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1129
    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1131
    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 1133
    const-string/jumbo v9, "gps_hardware"

    .line 1136
    const-string v6, "android.permission.LOCATION_HARDWARE"

    .line 1138
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1141
    move-result-object v11

    .line 1142
    const/4 v10, 0x0

    .line 1143
    move-object v6, v2

    .line 1144
    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    .line 1147
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1149
    iget-object v6, v6, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 1151
    invoke-virtual {v1, v2, v6}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 1154
    :goto_14
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1156
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1158
    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 1160
    const-string/jumbo v8, "gps"

    .line 1163
    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 1165
    invoke-direct {v2, v6, v7, v8, v9}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 1168
    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 1171
    goto :goto_15

    .line 1172
    :catchall_4
    move-exception v0

    .line 1173
    monitor-exit v2

    .line 1174
    throw v0

    .line 1175
    :cond_1b
    :goto_15
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1177
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 1179
    new-instance v6, Lcom/android/server/location/HardwareActivityRecognitionProxy;

    .line 1181
    invoke-direct {v6, v0, v2}, Lcom/android/server/location/HardwareActivityRecognitionProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    .line 1184
    iget-object v0, v6, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 1186
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->checkServiceResolves()Z

    .line 1189
    move-result v2

    .line 1190
    if-eqz v2, :cond_1c

    .line 1192
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->register()V

    .line 1195
    :cond_1c
    if-eqz v2, :cond_1d

    .line 1197
    goto :goto_16

    .line 1198
    :cond_1d
    move-object v6, v3

    .line 1199
    :goto_16
    if-nez v6, :cond_1e

    .line 1201
    const-string v0, "LocationManagerService"

    .line 1203
    const-string/jumbo v2, "unable to bind ActivityRecognitionProxy"

    .line 1206
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_1e
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1211
    if-eqz v0, :cond_21

    .line 1213
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1215
    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1217
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Lcom/android/server/location/gnss/GnssGeofenceProxy;

    .line 1219
    new-instance v6, Lcom/android/server/location/geofence/GeofenceProxy;

    .line 1221
    invoke-direct {v6, v0, v2}, Lcom/android/server/location/geofence/GeofenceProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssGeofenceProxy;)V

    .line 1224
    iget-object v2, v6, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 1226
    invoke-virtual {v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->checkServiceResolves()Z

    .line 1229
    move-result v7

    .line 1230
    if-eqz v7, :cond_1f

    .line 1232
    invoke-virtual {v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->register()V

    .line 1235
    new-instance v2, Landroid/content/Intent;

    .line 1237
    const-class v8, Landroid/hardware/location/GeofenceHardwareService;

    .line 1239
    invoke-direct {v2, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1242
    new-instance v8, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;

    .line 1244
    invoke-direct {v8, v6}, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/geofence/GeofenceProxy;)V

    .line 1247
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1249
    invoke-virtual {v0, v2, v8, v5, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 1252
    :cond_1f
    if-eqz v7, :cond_20

    .line 1254
    move-object v3, v6

    .line 1255
    :cond_20
    if-nez v3, :cond_21

    .line 1257
    const-string v0, "LocationManagerService"

    .line 1259
    const-string/jumbo v2, "unable to bind to GeofenceProxy"

    .line 1262
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_21
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1267
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1270
    move-result-object v0

    .line 1271
    const v2, 0x107016d

    .line 1274
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1277
    move-result-object v0

    .line 1278
    array-length v2, v0

    .line 1279
    move v3, v4

    .line 1280
    :goto_17
    if-ge v3, v2, :cond_22

    .line 1282
    aget-object v6, v0, v3

    .line 1284
    const-string v7, ","

    .line 1286
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1289
    move-result-object v6

    .line 1290
    aget-object v7, v6, v4

    .line 1292
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1295
    move-result-object v7

    .line 1296
    new-instance v8, Landroid/location/provider/ProviderProperties$Builder;

    .line 1298
    invoke-direct {v8}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 1301
    aget-object v9, v6, v5

    .line 1303
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1306
    move-result v9

    .line 1307
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1310
    move-result-object v8

    .line 1311
    const/4 v9, 0x2

    .line 1312
    aget-object v9, v6, v9

    .line 1314
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1317
    move-result v9

    .line 1318
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1321
    move-result-object v8

    .line 1322
    const/4 v9, 0x3

    .line 1323
    aget-object v9, v6, v9

    .line 1325
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1328
    move-result v9

    .line 1329
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1332
    move-result-object v8

    .line 1333
    const/4 v9, 0x4

    .line 1334
    aget-object v9, v6, v9

    .line 1336
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1339
    move-result v9

    .line 1340
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1343
    move-result-object v8

    .line 1344
    const/4 v9, 0x5

    .line 1345
    aget-object v9, v6, v9

    .line 1347
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1350
    move-result v9

    .line 1351
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1354
    move-result-object v8

    .line 1355
    const/4 v9, 0x6

    .line 1356
    aget-object v9, v6, v9

    .line 1358
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1361
    move-result v9

    .line 1362
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1365
    move-result-object v8

    .line 1366
    const/4 v9, 0x7

    .line 1367
    aget-object v9, v6, v9

    .line 1369
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1372
    move-result v9

    .line 1373
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 1376
    move-result-object v8

    .line 1377
    const/16 v9, 0x8

    .line 1379
    aget-object v9, v6, v9

    .line 1381
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1384
    move-result v9

    .line 1385
    invoke-virtual {v8, v9}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 1388
    move-result-object v8

    .line 1389
    const/16 v9, 0x9

    .line 1391
    aget-object v6, v6, v9

    .line 1393
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1396
    move-result v6

    .line 1397
    invoke-virtual {v8, v6}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 1400
    move-result-object v6

    .line 1401
    invoke-virtual {v6}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    .line 1404
    move-result-object v6

    .line 1405
    invoke-virtual {v1, v7}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 1408
    move-result-object v7

    .line 1409
    new-instance v8, Lcom/android/server/location/provider/MockLocationProvider;

    .line 1411
    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1413
    invoke-static {v9}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    .line 1416
    move-result-object v9

    .line 1417
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 1420
    move-result-object v10

    .line 1421
    invoke-direct {v8, v6, v9, v10}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 1424
    invoke-virtual {v7, v8}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 1427
    add-int/lit8 v3, v3, 0x1

    .line 1429
    goto/16 :goto_17

    .line 1431
    :cond_22
    const-string/jumbo v2, "sec_location"

    .line 1434
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1437
    move-result-object v0

    .line 1438
    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    .line 1441
    move-result-object v0

    .line 1442
    const-string v3, "LocationManagerService"

    .line 1444
    if-nez v0, :cond_23

    .line 1446
    const-string/jumbo v0, "sLocation is null"

    .line 1449
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    goto :goto_19

    .line 1453
    :cond_23
    sput-object v0, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    .line 1455
    :try_start_a
    new-instance v4, Lcom/android/server/location/LocationManagerService$3;

    .line 1457
    invoke-direct {v4, v1}, Lcom/android/server/location/LocationManagerService$3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 1460
    invoke-interface {v0, v4}, Lcom/samsung/android/location/ISLocationManager;->setSystemCallV1(Lcom/samsung/android/location/ISLocationSystemCallV1;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1463
    goto :goto_18

    .line 1464
    :catchall_5
    move-exception v0

    .line 1465
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 1468
    move-result-object v0

    .line 1469
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :goto_18
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1474
    if-eqz v0, :cond_25

    .line 1476
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1478
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    .line 1480
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1483
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1486
    move-result-object v2

    .line 1487
    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    .line 1490
    move-result-object v2

    .line 1491
    iput-object v2, v1, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 1493
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 1495
    if-eqz v2, :cond_24

    .line 1497
    new-instance v3, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    .line 1499
    invoke-direct {v3, v1}, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V

    .line 1502
    iput-object v3, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    .line 1504
    :cond_24
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 1506
    if-eqz v0, :cond_25

    .line 1508
    new-instance v2, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    .line 1510
    invoke-direct {v2, v1}, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V

    .line 1513
    iput-object v2, v0, Lcom/android/server/location/gnss/GnssStatusProvider;->mOnStatusChanged:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    .line 1515
    :cond_25
    :goto_19
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "location"

    .line 4
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 12
    invoke-static {}, Landroid/location/LocationManager;->disableLocalLocationEnabledCaches()V

    .line 15
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "u"

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " started"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "LocationManagerService"

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-interface {v1, p1, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    .line 60
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    .line 68
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "u"

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " stopped"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "LocationManagerService"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-interface {v0, p1, v1}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 8
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 19
    move v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v1

    .line 22
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v3

    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 32
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 42
    move v4, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v1

    .line 45
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v4

    .line 52
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 55
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v5, "current user changed from u"

    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, " to u"

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    const-string v5, "LocationManagerService"

    .line 92
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v4, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;

    .line 102
    invoke-direct {v5, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;-><init>(II)V

    .line 105
    invoke-virtual {v4, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p1

    .line 114
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_3

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 126
    array-length v4, v0

    .line 127
    move v5, v1

    .line 128
    :goto_2
    if-ge v5, v4, :cond_2

    .line 130
    aget v6, v0, v5

    .line 132
    invoke-interface {p2, v6, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p0

    .line 144
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_5

    .line 150
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 156
    array-length p2, v3

    .line 157
    move v0, v1

    .line 158
    :goto_3
    if-ge v0, p2, :cond_4

    .line 160
    aget v4, v3, v0

    .line 162
    invoke-interface {p1, v4, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    return-void

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw p0

    .line 174
    :catchall_1
    move-exception p0

    .line 175
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    throw p0
.end method
