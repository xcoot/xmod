.class public final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

.field public static final sFormatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field public final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field public mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAttentionModeThemeOverlay:I

.field public mAutoModeChangeImmediately:Z

.field public final mBatteryReceiver:Lcom/android/server/UiModeManagerService$2;

.field public mCar:Z

.field public mCarModeEnableFlags:I

.field public mCarModeEnabled:Z

.field public mCarModeKeepsScreenOn:Z

.field public final mCarModePackagePriority:Ljava/util/Map;

.field public mCharging:Z

.field public mComputedNightMode:Z

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContrastObserver:Lcom/android/server/UiModeManagerService$9;

.field public final mContrasts:Landroid/util/SparseArray;

.field public mCurUiMode:I

.field public mCurrentUser:I

.field public mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

.field public mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

.field public final mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

.field public final mDarkThemeObserver:Lcom/android/server/UiModeManagerService$9;

.field public mDefaultUiModeType:I

.field public mDeskModeKeepsScreenOn:Z

.field public mDesktopModeEnabled:Z

.field public final mDeviceInactiveListener:Lcom/android/server/UiModeManagerService$2;

.field public final mDockModeReceiver:Lcom/android/server/UiModeManagerService$2;

.field public mDockState:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mDreamsDisabledByAmbientModeSuppression:Z

.field public mEnableCarDockLaunch:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHoldingConfiguration:Z

.field public final mInjector:Lcom/android/server/UiModeManagerService$Injector;

.field public mIsNightModeRegistered:Z

.field public mLastBedtimeRequestedNightMode:Z

.field public mLastBroadcastState:I

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mNewDexModeEnabled:Z

.field public final mNightMode:Lcom/android/server/UiModeManagerService$1;

.field public mNightModeCustomType:I

.field public mNightModeLocked:Z

.field public final mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

.field public final mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mOnPackageAdded:Lcom/android/server/UiModeManagerService$2;

.field public final mOnShutdown:Lcom/android/server/UiModeManagerService$2;

.field public final mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$2;

.field public mOverrideNightModeOff:Z

.field public mOverrideNightModeOn:Z

.field public mOverrideNightModeUser:I

.field public final mPackagesNeedToShowDialog:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSave:Z

.field public mProjectionHolders:Landroid/util/SparseArray;

.field public mProjectionListeners:Landroid/util/SparseArray;

.field public final mResultReceiver:Lcom/android/server/UiModeManagerService$2;

.field public final mService:Lcom/android/server/UiModeManagerService$Stub;

.field public mSetUiMode:I

.field public final mSettingsRestored:Lcom/android/server/UiModeManagerService$2;

.field public final mSetupWizardObserver:Lcom/android/server/UiModeManagerService$9;

.field public mShopDemo:Z

.field public mStartDreamImmediatelyOnDock:Z

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mSystemReady:Z

.field public mTelevision:Z

.field public final mToggleNewDexMode:Z

.field public final mTwilightListener:Lcom/android/server/UiModeManagerService$5;

.field public mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field public mUiModeLocked:Z

.field public final mUiModeManagerCallbacks:Landroid/util/SparseArray;

.field public mVrHeadset:Z

.field public final mVrStateCallbacks:Lcom/android/server/UiModeManagerService$8;

.field public mWaitForDeviceInactive:Z

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWatch:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v2

    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 30
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-ne p0, v0, :cond_0

    .line 33
    const/4 v4, 0x1

    .line 34
    :catch_0
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0

    .line 43
    :goto_0
    if-eqz v4, :cond_1

    .line 45
    return-void

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    const-string v0, "Caller claimed bogus packageName: "

    .line 50
    const-string v1, "."

    .line 52
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public static -$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "current_sec_active_themepackage"

    .line 12
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object p0

    .line 34
    const-string/jumbo v0, "current_theme_support_night_mode"

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 41
    move-result p0

    .line 42
    if-ne p0, v1, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v1, v2

    .line 46
    :goto_0
    if-nez v1, :cond_2

    .line 48
    const-string p0, "UiModeManager"

    .line 50
    const-string v0, "Cannot set night mode because current theme does not support night mode"

    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_2
    :goto_1
    return v1
.end method

.method public static -$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "Calling user is not valid for level-1 compatibility in MUMD. callingUserId="

    .line 6
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v1

    .line 17
    if-eqz p1, :cond_2

    .line 19
    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 21
    if-eq p1, v3, :cond_2

    .line 23
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 26
    move-result-object v3

    .line 27
    iget v4, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 29
    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string p1, " currentUserId="

    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 53
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    :goto_1
    return-void
.end method

.method public static -$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    move-result v0

    .line 12
    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "Exception in getPackageNameFromAppProcesses : "

    .line 20
    const-string v1, "UiModeManager"

    .line 22
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo p0, "none"

    .line 28
    :goto_0
    return-object p0
.end method

.method public static -$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 4
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 6
    iget v0, p1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget p1, p1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 20
    if-ne p1, v1, :cond_1

    .line 22
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 28
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 30
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    .line 33
    move-result p1

    .line 34
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 36
    xor-int/2addr p1, v0

    .line 37
    if-eqz p1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 51
    :goto_1
    return-void
.end method

.method public static -$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    sub-int/2addr v3, v4

    .line 23
    move v5, v2

    .line 24
    :goto_0
    if-ltz v3, :cond_1

    .line 26
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 32
    iget-object v7, v6, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_0

    .line 40
    iget-object v5, v6, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    .line 42
    invoke-interface {v5, v6, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 45
    const-string v5, "UiModeManager"

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v7, "Projection type "

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v7, " released by "

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v7, "."

    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    move v5, v4

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_3

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move v2, v5

    .line 91
    :cond_2
    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const-string p0, "UiModeManager"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string p2, " tried to release projection type "

    .line 109
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string p1, " but was not set by that package."

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_2
    monitor-exit v0

    .line 128
    return v2

    .line 129
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public static -$$Nest$msetPackageNightModeInnerLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo v0, "setPackageNightModeInnerLocked m="

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 11
    if-eq p3, v1, :cond_0

    .line 13
    const-string p0, "UiModeManager"

    .line 15
    const-string/jumbo p1, "setPackageNightModeInnerLocked received unsupported mode: "

    .line 18
    invoke-static {p3, p1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    goto/16 :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->isNightPriorityAllowedLocked(Ljava/lang/String;)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 29
    const-string p0, "UiModeManager"

    .line 31
    const-string/jumbo p2, "setPackageNightModeInnerLocked is not allowed for "

    .line 34
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    goto/16 :goto_1

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    const-string v4, "UiModeManager"

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, " p="

    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, " u="

    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, " by "

    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 76
    move-result v0

    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v5, "/"

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 105
    move-result v5

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, p1, p2, v4}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 119
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 121
    new-instance v3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    .line 123
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 125
    invoke-direct {v3, p2, v0, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 128
    const/16 v0, 0x20

    .line 130
    if-ne p3, v1, :cond_2

    .line 132
    move v4, v0

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    move v4, v2

    .line 135
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->setNightMode(I)V

    .line 138
    invoke-virtual {v3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    .line 141
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 144
    move-result-object v3

    .line 145
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 148
    move-result v3

    .line 149
    if-lez v3, :cond_4

    .line 151
    if-eq p2, v3, :cond_4

    .line 153
    if-nez p2, :cond_4

    .line 155
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 157
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 159
    new-instance p2, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    .line 161
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 163
    invoke-direct {p2, v3, p0, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 166
    if-ne p3, v1, :cond_3

    .line 168
    move v2, v0

    .line 169
    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->setNightMode(I)V

    .line 172
    invoke-virtual {p2}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    .line 175
    :cond_4
    const/4 v2, 0x1

    .line 176
    :goto_1
    return v2

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Landroid/app/UiModeManager;

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 22
    sput-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 24
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 26
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/server/UiModeManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/UiModeManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/UiModeManagerService$Injector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 5
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 6
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 9
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    const/16 v0, 0x3e8

    .line 11
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    const/16 v0, 0x13

    .line 12
    invoke-static {v0, p2}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    const/4 v2, 0x7

    .line 13
    invoke-static {v2, p2}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 14
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 15
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 17
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 18
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 20
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 21
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 23
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 25
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 26
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 27
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 28
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 29
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 30
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 31
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 32
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 33
    new-instance v2, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 34
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    .line 35
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 36
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    .line 39
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mNewDexModeEnabled:Z

    .line 40
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mToggleNewDexMode:Z

    .line 41
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Lcom/android/server/UiModeManagerService$2;

    .line 42
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v2, 0x4

    invoke-direct {p2, p0, v2}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Lcom/android/server/UiModeManagerService$2;

    .line 43
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v2, 0x5

    invoke-direct {p2, p0, v2}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Lcom/android/server/UiModeManagerService$2;

    .line 44
    new-instance p2, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {p2, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/UiModeManagerService$5;

    .line 45
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v2, 0x6

    invoke-direct {p2, p0, v2}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mDeviceInactiveListener:Lcom/android/server/UiModeManagerService$2;

    .line 46
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v2, 0x7

    invoke-direct {p2, p0, v2}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$2;

    .line 47
    new-instance p2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    .line 48
    new-instance p2, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {p2, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Lcom/android/server/UiModeManagerService$8;

    .line 49
    new-instance p2, Lcom/android/server/UiModeManagerService$9;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v1, v2}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Lcom/android/server/UiModeManagerService$9;

    .line 50
    new-instance p2, Lcom/android/server/UiModeManagerService$9;

    const/4 v2, 0x1

    invoke-direct {p2, p0, v1, v2}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Lcom/android/server/UiModeManagerService$9;

    .line 51
    new-instance p2, Lcom/android/server/UiModeManagerService$9;

    const/4 v2, 0x2

    invoke-direct {p2, p0, v1, v2}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mContrastObserver:Lcom/android/server/UiModeManagerService$9;

    .line 52
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mOnPackageAdded:Lcom/android/server/UiModeManagerService$2;

    .line 53
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Lcom/android/server/UiModeManagerService$2;

    .line 54
    new-instance p2, Lcom/android/server/UiModeManagerService$2;

    const/4 v1, 0x3

    invoke-direct {p2, p0, v1}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;I)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Lcom/android/server/UiModeManagerService$2;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 56
    new-instance p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const-string v2, "NightModePriorityAppliedPackages"

    const/16 v3, 0x1000

    invoke-direct {p2, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 57
    new-instance p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/16 v2, 0x2000

    const-string v3, "NightModeShowDialogPackages"

    invoke-direct {p2, v2, v1, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mPackagesNeedToShowDialog:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 58
    new-instance p2, Lcom/android/server/UiModeManagerService$Stub;

    invoke-direct {p2, p0, p1}, Lcom/android/server/UiModeManagerService$Stub;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 60
    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 61
    iput-object p4, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-void
.end method

.method public static adjustTab(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-le v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, " "

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    :goto_0
    return-object p0
.end method

.method public static buildLogString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lcom/android/server/UiModeManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 12
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->adjustTab(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 41
    move-result v2

    .line 42
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->adjustTab(I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->adjustTab(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " V UiModeManager: SavedLogsStart"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public static getCustomTimeToMinute(Ljava/time/LocalTime;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3c

    .line 7
    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    int-to-long v0, p0

    .line 13
    return-wide v0
.end method

.method public static isDeskDockState(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 4
    const/4 v1, 0x3

    .line 5
    if-eq p0, v1, :cond_0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq p0, v1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0
.end method


# virtual methods
.method public final adjustStatusBarCarModeLocked()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string/jumbo v1, "statusbar"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/StatusBarManager;

    .line 18
    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 22
    if-eqz v1, :cond_2

    .line 24
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 26
    if-eqz v2, :cond_1

    .line 28
    const/high16 v2, 0x80000

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 37
    if-nez v1, :cond_3

    .line 39
    const-string/jumbo v1, "notification"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/app/NotificationManager;

    .line 48
    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    if-eqz v1, :cond_5

    .line 54
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 56
    const/16 v6, 0xa

    .line 58
    const/4 v7, 0x0

    .line 59
    if-eqz v2, :cond_4

    .line 61
    new-instance v2, Landroid/content/Intent;

    .line 63
    const-class v1, Lcom/android/internal/app/DisableCarModeActivity;

    .line 65
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    new-instance v1, Landroid/app/Notification$Builder;

    .line 70
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    .line 72
    invoke-direct {v1, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    const v3, 0x1080b6f

    .line 78
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 81
    move-result-object v1

    .line 82
    const/4 v3, 0x4

    .line 83
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 86
    move-result-object v1

    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 91
    move-result-object v1

    .line 92
    const-wide/16 v3, 0x0

    .line 94
    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 97
    move-result-object v1

    .line 98
    const v3, 0x106001c

    .line 101
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 104
    move-result v3

    .line 105
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 108
    move-result-object v1

    .line 109
    const v3, 0x104028d

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 119
    move-result-object v1

    .line 120
    const v3, 0x104028c

    .line 123
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 130
    move-result-object v8

    .line 131
    const/4 v4, 0x0

    .line 132
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 134
    const/4 v1, 0x0

    .line 135
    const/high16 v3, 0x2000000

    .line 137
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 144
    move-result-object v0

    .line 145
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 147
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 150
    move-result-object v0

    .line 151
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 153
    invoke-virtual {p0, v7, v6, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 159
    invoke-virtual {v1, v7, v6, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 162
    :cond_5
    :goto_1
    return-void
.end method

.method public final applyConfigurationExternallyLocked()V
    .locals 3

    .line 1
    const-string v0, "UiModeManager"

    .line 3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 5
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 7
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 9
    if-eq v1, v2, :cond_0

    .line 11
    iput v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 13
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->clearSnapshotCache()V

    .line 18
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 21
    move-result-object v1

    .line 22
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 24
    invoke-interface {v1, p0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    const-string v1, "Activity does not have the "

    .line 34
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    const-string v1, "Failure communicating with activity manager"

    .line 40
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_0
    :goto_2
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 3
    return-object p0
.end method

.method public getService()Landroid/app/IUiModeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    .line 3
    return-object p0
.end method

.method public final isNightPriorityAllowedLocked(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isPowerSavingAndTurnOnDarkModeEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "low_power"

    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object p0

    .line 28
    const-string/jumbo v0, "pms_settings_dark_mode_enabled"

    .line 31
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    move-result p0

    .line 35
    if-ne p0, v1, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_4

    .line 5
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 15
    const-class v2, Landroid/app/KeyguardManager;

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/app/KeyguardManager;

    .line 23
    const-string/jumbo v2, "power"

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/os/PowerManager;

    .line 32
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 34
    const-string v3, "UiModeManager"

    .line 36
    const/16 v4, 0x1a

    .line 38
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 46
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 52
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 54
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 56
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 62
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v2

    .line 68
    const-string v3, "alarm"

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/app/AlarmManager;

    .line 76
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 78
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    .line 86
    if-eqz v2, :cond_0

    .line 88
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto/16 :goto_4

    .line 94
    :cond_0
    :goto_0
    const-class v2, Landroid/os/PowerManagerInternal;

    .line 96
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroid/os/PowerManagerInternal;

    .line 102
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 104
    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    .line 106
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    .line 112
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 114
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 116
    const/16 v3, 0x10

    .line 118
    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 121
    move-result-object v2

    .line 122
    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 126
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 128
    new-instance v4, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;

    .line 130
    invoke-direct {v4, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;)V

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 136
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 138
    const/4 v3, 0x2

    .line 139
    const/4 v4, 0x0

    .line 140
    if-ne v2, v3, :cond_1

    .line 142
    move v2, v1

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    move v2, v4

    .line 145
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 147
    const-string/jumbo v2, "vrmanager"

    .line 150
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 153
    move-result-object v2

    .line 154
    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    .line 157
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v2, :cond_2

    .line 160
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Lcom/android/server/UiModeManagerService$8;

    .line 162
    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v2

    .line 167
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    const-string v5, "Failed to register VR mode state listener: "

    .line 171
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    const-string v3, "UiModeManager"

    .line 183
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    move-result-object v2

    .line 190
    const-string/jumbo v3, "ui_night_mode"

    .line 193
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    move-result-object v3

    .line 197
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Lcom/android/server/UiModeManagerService$9;

    .line 199
    invoke-virtual {v2, v3, v4, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    move-result-object v2

    .line 206
    const-string/jumbo v3, "contrast_level"

    .line 209
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 212
    move-result-object v3

    .line 213
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContrastObserver:Lcom/android/server/UiModeManagerService$9;

    .line 215
    const/4 v6, -0x1

    .line 216
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 219
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Lcom/android/server/UiModeManagerService$2;

    .line 221
    new-instance v3, Landroid/content/IntentFilter;

    .line 223
    const-string v5, "android.intent.action.DOCK_EVENT"

    .line 225
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    new-instance v2, Landroid/content/IntentFilter;

    .line 233
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 235
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Lcom/android/server/UiModeManagerService$2;

    .line 240
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Lcom/android/server/UiModeManagerService$2;

    .line 245
    new-instance v3, Landroid/content/IntentFilter;

    .line 247
    const-string v5, "android.os.action.SETTING_RESTORED"

    .line 249
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Lcom/android/server/UiModeManagerService$2;

    .line 257
    new-instance v3, Landroid/content/IntentFilter;

    .line 259
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 261
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    new-instance v2, Landroid/content/IntentFilter;

    .line 269
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 271
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 276
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v3, "package"

    .line 282
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mOnPackageAdded:Lcom/android/server/UiModeManagerService$2;

    .line 287
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 293
    move-result-object v0

    .line 294
    const-string/jumbo v2, "shopdemo"

    .line 297
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 300
    move-result-object v2

    .line 301
    new-instance v3, Lcom/android/server/UiModeManagerService$9;

    .line 303
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 305
    const/4 v6, 0x3

    .line 306
    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;I)V

    .line 309
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 319
    move-result-object v0

    .line 320
    const-string/jumbo v2, "shopdemo"

    .line 323
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 326
    move-result v0

    .line 327
    if-ne v0, v1, :cond_3

    .line 329
    goto :goto_3

    .line 330
    :cond_3
    move v1, v4

    .line 331
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mShopDemo:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 336
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 339
    monitor-exit p1

    .line 340
    goto :goto_5

    .line 341
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    throw p0

    .line 343
    :cond_4
    :goto_5
    return-void
.end method

.method public final onProjectionStateChangedLocked(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 21
    move-result v2

    .line 22
    and-int v3, p1, v2

    .line 24
    if-eqz v3, :cond_2

    .line 26
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 46
    move-result v5

    .line 47
    move v6, v0

    .line 48
    :goto_1
    if-ge v6, v5, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroid/app/IOnProjectionStateChangedListener;

    .line 56
    invoke-interface {v7, v2, v4}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    const-string v7, "UiModeManager"

    .line 62
    const-string v8, "Failed a call to onProjectionStateChanged()."

    .line 64
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 73
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 12
    const v2, 0x10e0076

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 21
    invoke-virtual {v3, v2}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 24
    const v2, 0x111023d

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 30
    move-result v2

    .line 31
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 33
    const v2, 0x1110156

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 39
    move-result v2

    .line 40
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    .line 42
    const v2, 0x10e0081

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 48
    move-result v2

    .line 49
    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 51
    const v2, 0x10e0059

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x1

    .line 60
    if-ne v2, v4, :cond_0

    .line 62
    move v2, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v2, v3

    .line 65
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 67
    const v2, 0x10e0087

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 73
    move-result v2

    .line 74
    if-ne v2, v4, :cond_1

    .line 76
    move v2, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v2, v3

    .line 79
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 81
    const v2, 0x111016a

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 87
    move-result v2

    .line 88
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 90
    const v2, 0x11101d7

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 96
    move-result v2

    .line 97
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 99
    const v2, 0x11101d6

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 105
    move-result v2

    .line 106
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    move-result-object v2

    .line 112
    const-string v5, "android.hardware.type.television"

    .line 114
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_2

    .line 120
    const-string v5, "android.software.leanback"

    .line 122
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_3

    .line 128
    :cond_2
    move v3, v4

    .line 129
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 131
    const-string v3, "android.hardware.type.automotive"

    .line 133
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 136
    move-result v3

    .line 137
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 139
    const-string v3, "android.hardware.type.watch"

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 144
    move-result v2

    .line 145
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 147
    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;

    .line 149
    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 152
    const-string v0, "UiModeManager.onStart"

    .line 154
    invoke-static {v0, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 157
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    .line 159
    const-string/jumbo v1, "uimode"

    .line 162
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 165
    const-class v0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 167
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p2

    .line 5
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 7
    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 9
    iget p2, p2, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 11
    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p2

    .line 25
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 27
    const-string/jumbo v0, "ui_night_mode_last_computed"

    .line 30
    invoke-static {p2, v0, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 33
    :cond_0
    return-void
.end method

.method public final persistNightMode(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 20
    iget v1, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 22
    const-string/jumbo v2, "ui_night_mode"

    .line 25
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 38
    int-to-long v1, v1

    .line 39
    const-string/jumbo v3, "ui_night_mode_custom_type"

    .line 42
    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 45
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 55
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    .line 58
    move-result-wide v1

    .line 59
    const-string/jumbo v3, "display_night_theme_on_time"

    .line 62
    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    move-result-object v0

    .line 73
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 75
    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    .line 78
    move-result-wide v1

    .line 79
    const-string/jumbo p0, "display_night_theme_off_time"

    .line 82
    invoke-static {v0, p0, v1, v2, p1}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method public final persistNightModeOverrides(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 20
    const-string/jumbo v2, "ui_night_mode_override_on"

    .line 23
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 26
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v0

    .line 34
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 36
    const-string/jumbo v1, "ui_night_mode_override_off"

    .line 39
    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final persistNightModeSettingDB(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 3
    iget v0, v0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 5
    const-string/jumbo v1, "display_night_theme_scheduled"

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 12
    const-string/jumbo v4, "display_night_theme"

    .line 15
    if-eq v0, v3, :cond_2

    .line 17
    const/4 v5, 0x2

    .line 18
    if-eq v0, v5, :cond_1

    .line 20
    const/4 v4, 0x3

    .line 21
    if-eq v0, v4, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    move-result v0

    .line 36
    if-eq v0, v3, :cond_5

    .line 38
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v4, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 97
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 111
    move-result v0

    .line 112
    if-eq v0, v3, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    :cond_4
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/android/server/UiModeManagerService$16;

    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$16;-><init>(Lcom/android/server/UiModeManagerService;I)V

    .line 133
    const-wide/16 v1, 0x1f4

    .line 135
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    .line 140
    :cond_5
    :goto_0
    return-void
.end method

.method public final populateWithRelevantActivePackageNames(ILjava/util/List;)I
    .locals 6

    .line 1
    check-cast p2, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 11
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_2

    .line 20
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 34
    and-int v4, p1, v2

    .line 36
    if-eqz v4, :cond_1

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v3

    .line 47
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 59
    iget-object v5, v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 61
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 71
    or-int/2addr v0, v2

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v1, v0

    .line 76
    :cond_3
    return v1
.end method

.method public final registerDeviceInactiveListenerLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    .line 11
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 13
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDeviceInactiveListener:Lcom/android/server/UiModeManagerService$2;

    .line 27
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method

.method public final resetNightModeOverrideLocked()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return v1

    .line 12
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 14
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 16
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    .line 21
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final scheduleNextCustomTimeListener()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 8
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 18
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 20
    invoke-static {v1, v2, v3}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    .line 23
    move-result v1

    .line 24
    const-wide/16 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 30
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 51
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    .line 68
    move-result-object v0

    .line 69
    move-object v1, v0

    .line 70
    :cond_1
    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 85
    move-result-wide v3

    .line 86
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 88
    const/4 v2, 0x1

    .line 89
    const-string v5, "UiModeManager"

    .line 91
    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    .line 93
    const/4 v7, 0x0

    .line 94
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 97
    return-void
.end method

.method public final sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string v3, "UiModeManager"

    .line 7
    const-string v4, "Could not start dock app: "

    .line 9
    const/4 v5, 0x0

    .line 10
    iput-boolean v5, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 18
    new-instance v15, Landroid/content/Intent;

    .line 20
    const-string v0, "android.intent.action.MAIN"

    .line 22
    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v15, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/high16 v0, 0x10200000

    .line 30
    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 43
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 46
    move-result-object v7

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 54
    move-result-object v9

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 62
    move-result-object v10

    .line 63
    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    const/16 v18, 0x0

    .line 67
    const/16 v19, -0x2

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v12, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v14, 0x0

    .line 73
    const/16 v16, 0x0

    .line 75
    const/16 v17, 0x0

    .line 77
    move-object v11, v15

    .line 78
    move-object v5, v15

    .line 79
    move/from16 v15, v16

    .line 81
    move/from16 v16, v17

    .line 83
    move-object/from16 v17, v0

    .line 85
    :try_start_1
    invoke-interface/range {v7 .. v19}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_0

    .line 95
    move v0, v6

    .line 96
    goto :goto_2

    .line 97
    :cond_0
    const/16 v7, -0x5b

    .line 99
    if-eq v0, v7, :cond_1

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v8, ", startActivityWithConfig result "

    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    move-object v5, v15

    .line 129
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 141
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 145
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 148
    iget-boolean v3, v1, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    .line 150
    if-eqz v3, :cond_2

    .line 152
    iget-object v3, v1, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 154
    invoke-virtual {v3}, Landroid/os/PowerManagerInternal;->isAmbientDisplaySuppressed()Z

    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_2

    .line 160
    move v5, v6

    .line 161
    goto :goto_3

    .line 162
    :cond_2
    const/4 v5, 0x0

    .line 163
    :goto_3
    if-eqz v2, :cond_4

    .line 165
    if-nez v0, :cond_4

    .line 167
    if-nez v5, :cond_4

    .line 169
    iget-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 171
    if-nez v0, :cond_3

    .line 173
    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 175
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_3

    .line 181
    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 183
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_4

    .line 189
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 192
    move-result-object v0

    .line 193
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 201
    :cond_4
    return-void
.end method

.method public final setCarModeLocked(IILjava/lang/String;Z)V
    .locals 9

    .line 1
    const-string v0, "android.permission.HANDLE_CAR_MODE_CHANGES"

    .line 3
    const-string v1, "android.app.extra.PRIORITY"

    .line 5
    const-string v2, "android.app.extra.CALLING_PACKAGE"

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const-string v5, ", packageName="

    .line 11
    const-string v6, "UiModeManager"

    .line 13
    if-eqz p4, :cond_1

    .line 15
    iget-object p4, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v7

    .line 21
    check-cast p4, Ljava/util/HashMap;

    .line 23
    invoke-virtual {p4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result p4

    .line 27
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 29
    check-cast v7, Ljava/util/HashMap;

    .line 31
    invoke-virtual {v7, p3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 34
    move-result v7

    .line 35
    if-nez p4, :cond_0

    .line 37
    if-nez v7, :cond_0

    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v7, "enableCarMode: enabled at priority="

    .line 44
    invoke-direct {p4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p4

    .line 60
    invoke-static {v6, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p4, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v5

    .line 69
    check-cast p4, Ljava/util/HashMap;

    .line 71
    invoke-virtual {p4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p4, Landroid/content/Intent;

    .line 76
    const-string v5, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    .line 78
    invoke-direct {p4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p2

    .line 91
    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 93
    invoke-virtual {p2, p4, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 96
    goto/16 :goto_3

    .line 98
    :cond_0
    const-string/jumbo p3, "enableCarMode: car mode at priority "

    .line 101
    const-string p4, " already enabled."

    .line 103
    invoke-static {p2, p3, p4, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto/16 :goto_3

    .line 108
    :cond_1
    and-int/lit8 p4, p1, 0x2

    .line 110
    if-eqz p4, :cond_2

    .line 112
    move p4, v4

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move p4, v3

    .line 115
    :goto_0
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 117
    check-cast v7, Ljava/util/HashMap;

    .line 119
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 122
    move-result-object v7

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v8

    .line 127
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 130
    move-result v7

    .line 131
    if-nez p2, :cond_3

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    if-eqz v7, :cond_4

    .line 136
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v8

    .line 142
    check-cast v7, Ljava/util/HashMap;

    .line 144
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Ljava/lang/String;

    .line 150
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_5

    .line 156
    :cond_4
    if-eqz p4, :cond_7

    .line 158
    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v8, "disableCarMode: disabling, priority="

    .line 163
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v5

    .line 179
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v5, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    .line 184
    if-eqz p4, :cond_6

    .line 186
    new-instance p2, Landroid/util/ArraySet;

    .line 188
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 190
    check-cast p3, Ljava/util/HashMap;

    .line 192
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 195
    move-result-object p3

    .line 196
    invoke-direct {p2, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 199
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 201
    check-cast p3, Ljava/util/HashMap;

    .line 203
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 206
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object p2

    .line 210
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result p3

    .line 214
    if-eqz p3, :cond_7

    .line 216
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object p3

    .line 220
    check-cast p3, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    move-result-object p4

    .line 226
    check-cast p4, Ljava/lang/Integer;

    .line 228
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 231
    move-result p4

    .line 232
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 235
    move-result-object p3

    .line 236
    check-cast p3, Ljava/lang/String;

    .line 238
    new-instance v6, Landroid/content/Intent;

    .line 240
    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v6, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 252
    move-result-object p3

    .line 253
    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 255
    invoke-virtual {p3, v6, p4, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 258
    goto :goto_2

    .line 259
    :cond_6
    iget-object p4, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 261
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v6

    .line 265
    check-cast p4, Ljava/util/HashMap;

    .line 267
    invoke-virtual {p4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance p4, Landroid/content/Intent;

    .line 272
    invoke-direct {p4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 284
    move-result-object p2

    .line 285
    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 287
    invoke-virtual {p2, p4, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 290
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 292
    check-cast p2, Ljava/util/HashMap;

    .line 294
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 297
    move-result p2

    .line 298
    if-lez p2, :cond_8

    .line 300
    move v3, v4

    .line 301
    :cond_8
    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 303
    if-eq p2, v3, :cond_9

    .line 305
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 307
    if-nez v3, :cond_9

    .line 309
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 316
    move-result-object p3

    .line 317
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 320
    move-result p4

    .line 321
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 324
    :cond_9
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 326
    return-void
.end method

.method public setDreamsDisabledByAmbientModeSuppression(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDreamsDisabledByAmbientModeSuppression:Z

    .line 3
    return-void
.end method

.method public setStartDreamImmediatelyOnDock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 3
    return-void
.end method

.method public final shouldApplyAutomaticChangesImmediately()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 8
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 16
    if-eq v0, v1, :cond_1

    .line 18
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 20
    invoke-virtual {p0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :cond_1
    :goto_0
    return v1
.end method

.method public final unregisterDeviceInactiveListenerLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mDeviceInactiveListener:Lcom/android/server/UiModeManagerService$2;

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    return-void
.end method

.method public final updateComputedNightModeLocked(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 3
    iget v1, v0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq v1, v2, :cond_1

    .line 10
    if-eq v1, v4, :cond_1

    .line 12
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    if-nez p1, :cond_0

    .line 18
    move p1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 22
    if-eqz v1, :cond_1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    move p1, v3

    .line 27
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_4

    .line 33
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    .line 35
    const/16 v2, 0x3e9

    .line 37
    if-eq v1, v2, :cond_2

    .line 39
    const/16 v2, 0x3ea

    .line 41
    if-eq v1, v2, :cond_3

    .line 43
    move v3, p1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v3, v4

    .line 46
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 51
    :goto_2
    iget p1, v0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 53
    if-nez p1, :cond_5

    .line 55
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 57
    if-eqz p1, :cond_6

    .line 59
    check-cast p1, Lcom/android/server/twilight/TwilightService$1;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_6

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 70
    :cond_6
    return-void
.end method

.method public final updateConfigurationLocked()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    if-eqz v1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    :goto_0
    move v0, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 18
    if-eqz v1, :cond_2

    .line 20
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNewDexModeEnabled:Z

    .line 22
    if-eqz v1, :cond_2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 27
    if-eqz v1, :cond_3

    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 33
    if-eqz v1, :cond_4

    .line 35
    const/4 v0, 0x6

    .line 36
    goto :goto_1

    .line 37
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 39
    if-eqz v1, :cond_5

    .line 41
    move v0, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_5
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 45
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_6

    .line 51
    goto :goto_0

    .line 52
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    .line 54
    if-eqz v1, :cond_7

    .line 56
    const/4 v0, 0x7

    .line 57
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 59
    iget v4, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x1

    .line 63
    if-eq v4, v3, :cond_8

    .line 65
    if-ne v4, v6, :cond_a

    .line 67
    :cond_8
    if-ne v4, v3, :cond_9

    .line 69
    move v3, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_9
    move v3, v5

    .line 72
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 75
    :cond_a
    iget v3, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 77
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/UiModeManagerService$5;

    .line 79
    if-nez v3, :cond_e

    .line 81
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 83
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 85
    if-eqz v7, :cond_c

    .line 87
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 89
    check-cast v7, Lcom/android/server/twilight/TwilightService$1;

    .line 91
    invoke-virtual {v7, v4, v3}, Lcom/android/server/twilight/TwilightService$1;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 94
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 96
    check-cast v3, Lcom/android/server/twilight/TwilightService$1;

    .line 98
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_b

    .line 104
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 106
    goto :goto_3

    .line 107
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    .line 110
    move-result v3

    .line 111
    :cond_c
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 114
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 116
    if-eq v3, v4, :cond_d

    .line 118
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 120
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateThemeImmediately()V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    .line 126
    goto :goto_4

    .line 127
    :cond_e
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 129
    if-eqz v3, :cond_f

    .line 131
    check-cast v3, Lcom/android/server/twilight/TwilightService$1;

    .line 133
    invoke-virtual {v3, v4}, Lcom/android/server/twilight/TwilightService$1;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 136
    :cond_f
    :goto_4
    iget v1, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 138
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$2;

    .line 140
    if-ne v1, v2, :cond_11

    .line 142
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 144
    if-ne v1, v6, :cond_10

    .line 146
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 151
    goto :goto_5

    .line 152
    :cond_10
    new-instance v1, Landroid/content/IntentFilter;

    .line 154
    const-string v2, "android.intent.action.TIME_SET"

    .line 156
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    .line 174
    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 177
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 179
    invoke-static {v1, v2, v3}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    .line 182
    move-result v1

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateThemeImmediately()V

    .line 192
    goto :goto_5

    .line 193
    :cond_11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :catch_0
    :goto_5
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 202
    const/16 v2, 0x20

    .line 204
    const/16 v3, -0x11

    .line 206
    if-eqz v1, :cond_12

    .line 208
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 210
    if-nez v4, :cond_12

    .line 212
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 214
    if-nez v4, :cond_12

    .line 216
    and-int/2addr v0, v3

    .line 217
    or-int/2addr v0, v2

    .line 218
    goto :goto_8

    .line 219
    :cond_12
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 221
    if-eqz v4, :cond_13

    .line 223
    goto :goto_6

    .line 224
    :cond_13
    const/16 v2, 0x10

    .line 226
    :goto_6
    or-int/2addr v0, v2

    .line 227
    if-eqz v4, :cond_14

    .line 229
    goto :goto_7

    .line 230
    :cond_14
    const/16 v3, -0x21

    .line 232
    :goto_7
    and-int/2addr v0, v3

    .line 233
    :goto_8
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 235
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 237
    if-nez v2, :cond_16

    .line 239
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 241
    if-eqz v2, :cond_15

    .line 243
    if-eqz v1, :cond_16

    .line 245
    :cond_15
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 247
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 249
    :cond_16
    return-void
.end method

.method public final updateContrastLocked()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 12
    const-string/jumbo v3, "contrast_level"

    .line 15
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 21
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 23
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Float;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result v1

    .line 40
    sub-float/2addr v1, v0

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 44
    move-result v1

    .line 45
    float-to-double v1, v1

    .line 46
    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 51
    cmpl-double v1, v1, v3

    .line 53
    if-ltz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 57
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :cond_0
    const/4 p0, 0x0

    .line 69
    return p0
.end method

.method public final updateLocked(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-ne v3, v5, :cond_0

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 16
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 25
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v3, v4

    .line 29
    :goto_0
    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 31
    const/high16 v7, 0x10000000

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v6, :cond_3

    .line 36
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 38
    if-eq v6, v5, :cond_5

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 43
    if-eqz v3, :cond_2

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v6

    .line 49
    new-instance v9, Landroid/content/Intent;

    .line 51
    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    move-result-object v3

    .line 58
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 60
    invoke-virtual {v6, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 63
    :cond_2
    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 65
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 70
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_6

    .line 76
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 78
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_5

    .line 84
    if-eqz v3, :cond_4

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v6

    .line 90
    new-instance v9, Landroid/content/Intent;

    .line 92
    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v9, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    move-result-object v3

    .line 99
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    invoke-virtual {v6, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 104
    :cond_4
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 106
    iput v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 108
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 110
    goto :goto_1

    .line 111
    :cond_5
    move-object v3, v4

    .line 112
    goto :goto_1

    .line 113
    :cond_6
    iput v8, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 115
    :goto_1
    const/4 v6, 0x1

    .line 116
    if-eqz v3, :cond_7

    .line 118
    new-instance v10, Landroid/content/Intent;

    .line 120
    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v3, "enableFlags"

    .line 126
    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "disableFlags"

    .line 132
    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v10, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v9

    .line 142
    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 144
    const/4 v14, 0x0

    .line 145
    const/4 v15, -0x1

    .line 146
    const/4 v12, 0x0

    .line 147
    iget-object v13, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Lcom/android/server/UiModeManagerService$2;

    .line 149
    const/16 v16, 0x0

    .line 151
    const/16 v17, 0x0

    .line 153
    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 156
    iput-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-boolean v3, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 164
    if-eqz v3, :cond_8

    .line 166
    iget-boolean v2, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 168
    if-eqz v2, :cond_a

    .line 170
    and-int/2addr v1, v6

    .line 171
    if-eqz v1, :cond_a

    .line 173
    const-string v4, "android.intent.category.CAR_DOCK"

    .line 175
    goto :goto_2

    .line 176
    :cond_8
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 178
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_9

    .line 184
    and-int/2addr v1, v6

    .line 185
    if-eqz v1, :cond_a

    .line 187
    const-string v4, "android.intent.category.DESK_DOCK"

    .line 189
    goto :goto_2

    .line 190
    :cond_9
    and-int/lit8 v1, v2, 0x1

    .line 192
    if-eqz v1, :cond_a

    .line 194
    const-string v4, "android.intent.category.HOME"

    .line 196
    :cond_a
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 199
    :goto_3
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 201
    if-eqz v1, :cond_d

    .line 203
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 205
    if-eqz v1, :cond_b

    .line 207
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 209
    if-eqz v1, :cond_b

    .line 211
    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 213
    and-int/2addr v1, v5

    .line 214
    if-eqz v1, :cond_c

    .line 216
    :cond_b
    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 218
    if-ne v1, v5, :cond_d

    .line 220
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 222
    if-eqz v1, :cond_d

    .line 224
    :cond_c
    move v8, v6

    .line 225
    :cond_d
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 230
    move-result v1

    .line 231
    if-eq v8, v1, :cond_f

    .line 233
    if-eqz v8, :cond_e

    .line 235
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 237
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 240
    goto :goto_4

    .line 241
    :cond_e
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 243
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_f
    :goto_4
    return-void
.end method

.method public final updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/4 p2, 0x2

    .line 21
    invoke-virtual {v2, p2}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v0

    .line 29
    const-string/jumbo v3, "last_secure_ui_night_mode_power_mode"

    .line 32
    invoke-static {v0, v3, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    move-result v0

    .line 36
    if-eq v0, v1, :cond_2

    .line 38
    invoke-virtual {v2, v0}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, v3, v1, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object v0

    .line 53
    const v3, 0x10e0076

    .line 56
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 59
    move-result p2

    .line 60
    const-string/jumbo v3, "ui_night_mode"

    .line 63
    invoke-static {v0, v3, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 66
    move-result p2

    .line 67
    invoke-virtual {v2, p2}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    move-result-object p2

    .line 74
    const-string/jumbo v0, "ui_night_mode_custom_type"

    .line 77
    invoke-static {p2, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 80
    move-result p2

    .line 81
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object p2

    .line 87
    const-string/jumbo v0, "ui_night_mode_override_on"

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-static {p2, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 94
    move-result p2

    .line 95
    const/4 v0, 0x1

    .line 96
    if-eqz p2, :cond_3

    .line 98
    move p2, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move p2, v1

    .line 101
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    move-result-object p2

    .line 107
    const-string/jumbo v3, "ui_night_mode_override_off"

    .line 110
    invoke-static {p2, v3, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_4

    .line 116
    move p2, v0

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move p2, v1

    .line 119
    :goto_2
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    move-result-object p2

    .line 125
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 127
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    .line 130
    move-result-wide v3

    .line 131
    const-string/jumbo v5, "display_night_theme_on_time"

    .line 134
    invoke-static {p2, v5, v3, v4, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 137
    move-result-wide v3

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 141
    move-result-object p2

    .line 142
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 144
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    .line 147
    move-result-wide v5

    .line 148
    const-string/jumbo v7, "display_night_theme_off_time"

    .line 151
    invoke-static {p2, v7, v5, v6, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 154
    move-result-wide v5

    .line 155
    const-wide v7, 0xdf8475800L

    .line 160
    mul-long/2addr v3, v7

    .line 161
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    .line 164
    move-result-object p2

    .line 165
    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 167
    mul-long/2addr v5, v7

    .line 168
    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    .line 171
    move-result-object p2

    .line 172
    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 174
    iget p2, v2, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 176
    if-nez p2, :cond_6

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 181
    move-result-object p1

    .line 182
    const-string/jumbo p2, "ui_night_mode_last_computed"

    .line 185
    invoke-static {p1, p2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_5

    .line 191
    move v1, v0

    .line 192
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 194
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo p2, "updateNightModeFromSettings : "

    .line 199
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string p2, " userID : "

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p3}, Lcom/android/server/UiModeManagerService;->persistNightModeSettingDB(I)V

    .line 223
    :cond_7
    :goto_3
    return-void
.end method

.method public final updateSystemProperties()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 11
    iget p0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v2, "ui_night_mode"

    .line 17
    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 v0, 0x3

    .line 24
    if-ne p0, v0, :cond_1

    .line 26
    :cond_0
    const/4 p0, 0x2

    .line 27
    :cond_1
    const-string/jumbo v0, "persist.sys.theme"

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final updateThemeImmediately()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "display_night_theme"

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    move-result v0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v4, :cond_0

    .line 21
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 26
    if-ne v0, v5, :cond_1

    .line 28
    return-void

    .line 29
    :cond_1
    if-nez v5, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object v0

    .line 39
    const-string/jumbo v5, "minimal_battery_use"

    .line 42
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 45
    move-result v0

    .line 46
    if-ne v0, v4, :cond_2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v2, Lcom/android/server/UiModeManagerService$16;

    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-direct {v2, p0, v4}, Lcom/android/server/UiModeManagerService$16;-><init>(Lcom/android/server/UiModeManagerService;I)V

    .line 57
    const-wide/16 v4, 0x1f4

    .line 59
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object v0

    .line 70
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 72
    invoke-static {v0, v1, p0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 75
    return-void
.end method

.method public final verifySetupWizardCompleted()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    move-result v3

    .line 21
    const-string/jumbo v4, "user_setup_complete"

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v2, v3, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    move-result-object v2

    .line 41
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Lcom/android/server/UiModeManagerService$9;

    .line 43
    invoke-virtual {v0, v2, v5, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 46
    :goto_0
    return-void
.end method
